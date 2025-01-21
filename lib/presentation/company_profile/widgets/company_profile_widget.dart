import 'package:flutter/material.dart';
import 'package:flutter_e_catalog/core/components/custom_icon_download.dart';
import 'package:flutter_e_catalog/core/components/custom_icon_share.dart';
import 'package:flutter_e_catalog/core/constants/colors.dart';
import '../../../data/models/responses/company_response_model.dart';

class CompanyProfileWidget extends StatelessWidget {
  final CompanyResponseModel profile;

  const CompanyProfileWidget({
    super.key,
    required this.profile,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(6.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          // File Icon
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
          // Company Name and Buttons
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.primary,
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(12.0)),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  profile.companyName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Download Button
                    CustomIconDownload(
                      fileUrls:
                          profile.files.map((file) => file.fileUrl).toList(),
                      fileNames:
                          profile.files.map((file) => file.fileName).toList(),
                      // fileUrl: profile.files[0].fileUrl,
                      // fileName: profile.files[0].fileName,
                    ),
                    const SizedBox(width: 16.0),
                    const Text(
                      '|',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    const SizedBox(width: 16.0),
                    CustomIconShare(
                      fileUrl: profile.files[0].fileUrl,
                      fileName: profile.files[0].fileName,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
