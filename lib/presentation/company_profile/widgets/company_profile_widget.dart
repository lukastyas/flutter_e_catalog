import 'dart:io';
// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_e_catalog/core/constants/colors.dart';
import 'package:flutter_e_catalog/data/datasource/company_profile_remote_datasource.dart';
import 'package:open_file_plus/open_file_plus.dart';
// import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:permission_handler/permission_handler.dart';
import '../../../data/models/responses/company_response_model.dart';
import '../bloc/company/company_bloc.dart';

class CompanyProfileWidget extends StatefulWidget {
  final CompanyResponseModel profile;
  // final Company company;

  const CompanyProfileWidget({
    super.key,
    required this.profile,
  });

  @override
  State<CompanyProfileWidget> createState() => _CompanyProfileWidgetState();
}

class _CompanyProfileWidgetState extends State<CompanyProfileWidget> {
  bool _isDownloading = false;
  double _progress = 0.0;
  // double _progress = 0.0;

  Future<void> _downloadPdf(String url, String fileName) async {
    setState(() {
      _isDownloading = true;
      _progress = 0.0;
    });

    try {
      // Get the app's directory for storing files
      final directory = await getApplicationDocumentsDirectory();
      final filePath = "${directory.path}/$fileName";

      // Download the file
      final dio = Dio();
      await dio.download(
        url,
        filePath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            setState(() {
              _progress = received / total;
            });
          }
        },
      );

      // Open the downloaded file
      // OpenFilex.open(filePath);
      OpenFile.open(url, type: "application/pdf");
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Failed to download PDF: $e")),
      );
    } finally {
      setState(() {
        _isDownloading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(6.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //File Icon file
          Expanded(
            flex: 6,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12.0)),
              ),
              padding: const EdgeInsets.all(12.0),
              child: const Center(
                child: Icon(
                  Icons.insert_drive_file,
                  size: 80,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          //container company name and button
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.primary,
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(12.0)),
            ),
            padding: const EdgeInsets.all(2.0),
            height: 75,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  widget.profile.companyName,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
                // const SizedBox(
                //   height: 1.0,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocProvider(
                      create: (context) =>
                          CompanyBloc(CompanyProfileRemoteDatasource()),
                      child: IconButton(
                        icon: const Icon(
                          Icons.download,
                          color: Colors.white,
                        ),
                        onPressed: () async {
                          widget.profile.files.map(
                            (e) {
                              _downloadPdf(e.fileUrl, e.fileName);
                            },
                          );
                          //Logic download

                          print('Download this File');
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    const Text(
                      '|',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        //login share
                        print('share');
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
