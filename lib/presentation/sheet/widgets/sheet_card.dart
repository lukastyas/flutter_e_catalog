import 'package:flutter/material.dart';
import 'package:flutter_e_catalog/core/components/custom_icon_download.dart';
import 'package:flutter_e_catalog/core/components/custom_icon_share.dart';
import 'package:flutter_e_catalog/core/constants/colors.dart';
import 'package:flutter_e_catalog/data/models/responses/sheet_response_model.dart';

class SheetCard extends StatelessWidget {
  final SheetResponseModel sheet;

  const SheetCard({
    super.key,
    required this.sheet,
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
          //file icon
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
          //sheet name and buttons
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
                  sheet.nameFile,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 4.0,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     //download Button
                //     CustomIconDownload(
                //       fileUrl: sheet.files[0].fileUrl,
                //       fileName: sheet.files[0].fileName,
                //     ),
                //     SizedBox(
                //       width: 16.0,
                //     ),
                //     const Text(
                //       '|',
                //       style: TextStyle(fontSize: 20, color: Colors.white),
                //     ),
                //     SizedBox(
                //       width: 16.0,
                //     ),
                //     CustomIconShare(
                //       fileUrl: sheet.files[0].fileUrl,
                //       fileName: sheet.files[0].fileName,
                //     ),
                //   ],
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
