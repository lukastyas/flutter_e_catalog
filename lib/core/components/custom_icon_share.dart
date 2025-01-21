import 'dart:io';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';

class CustomIconShare extends StatefulWidget {
  final String fileName;
  final String fileUrl;

  const CustomIconShare({
    super.key,
    required this.fileName,
    required this.fileUrl,
  });

  @override
  State<CustomIconShare> createState() => _CustomIconShareState();
}

class _CustomIconShareState extends State<CustomIconShare> {
  Future<void> _sharePdfFile() async {
    try {
      // Define the save path
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String savePath = '${appDocDir.path}/${widget.fileName}.pdf';

      // Download the file using Dio
      final dio = Dio();
      await dio.download(
        widget.fileUrl,
        savePath,
      );

      // Share the downloaded PDF file
      XFile xFile = XFile(savePath);
      await Share.shareXFiles([xFile]);
    } catch (e) {
      log('Error Sharing PDF: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to sharing PDF: $e")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.share,
        color: Colors.white,
      ),
      onPressed: _sharePdfFile,
    );
  }
}
