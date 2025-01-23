import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:share_plus/share_plus.dart';

class CustomIconShare extends StatefulWidget {
  final List<String> fileNames; // List of file names
  final List<String> fileUrls; // List of file URLs

  const CustomIconShare({
    Key? key,
    required this.fileNames,
    required this.fileUrls,
  }) : super(key: key);

  @override
  State<CustomIconShare> createState() => _CustomIconShareState();
}

class _CustomIconShareState extends State<CustomIconShare> {
  List<bool> _selectedFiles = []; // List to track selected files

  @override
  void initState() {
    super.initState();
    // Initialize the selection list with false (not selected)
    _selectedFiles = List<bool>.filled(widget.fileNames.length, false);
  }

  void _showShareDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Pilih file untuk dibagikan'),
          content: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return SizedBox(
              width: double.maxFinite,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: widget.fileNames.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    title: Text(widget.fileNames[index]),
                    value: _selectedFiles[index],
                    onChanged: (bool? value) {
                      setState(() {
                        _selectedFiles[index] =
                            value ?? false; // Update selection
                      });
                    },
                    secondary: const Icon(Icons.picture_as_pdf),
                  );
                },
              ),
            );
          }),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                _shareSelectedFiles(); // Share selected files
              },
              child: const Text('Bagikan'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Batal'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _shareSelectedFiles() async {
    try {
      List<XFile> filesToShare = [];
      List<Future<void>> downloadTasks = []; // List to hold download tasks

      // Define the download directory
      final dir = Directory('/storage/emulated/0/Download/Files');
      if (!await dir.exists()) {
        await dir.create(
            recursive: true); // Create the directory if it doesn't exist
      }

      for (int i = 0; i < _selectedFiles.length; i++) {
        if (_selectedFiles[i]) {
          // Define the save path
          String savePath =
              '${dir.path}/${widget.fileNames[i].endsWith('.pdf') ? widget.fileNames[i] : '${widget.fileNames[i]}.pdf'}';

          // Download the file using Dio
          final dio = Dio();
          downloadTasks
              .add(dio.download(widget.fileUrls[i], savePath).then((_) {
            filesToShare.add(XFile(
                savePath)); // Add the downloaded file to the list to share
          }));
        }
      }

      // Show loading dialog
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Row(
              children: const [
                CircularProgressIndicator(),
                SizedBox(width: 20),
                Text("Proses Share File"),
              ],
            ),
          );
        },
      );

      // Wait for all downloads to complete
      await Future.wait(downloadTasks);

      // Close the loading dialog
      Navigator.of(context).pop();

      // Share the selected files
      if (filesToShare.isNotEmpty) {
        await Share.shareXFiles(filesToShare);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text("Tidak ada file yang dipilih untuk dibagikan.")),
        );
      }
    } catch (e) {
      log('Error Sharing Files: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Gagal membagikan file: $e")),
        );
      }
    } finally {
      // Reset selection
      setState(() {
        _selectedFiles = List.filled(widget.fileNames.length, false);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.share,
        color: Colors.white,
      ),
      onPressed: _showShareDialog, // Show dialog on button press
    );
  }
}

// import 'dart:io';
// import 'dart:developer';
// import 'package:flutter/material.dart';
// import 'package:dio/dio.dart';
// import 'package:share_plus/share_plus.dart';
// import 'package:path_provider/path_provider.dart';

// class CustomIconShare extends StatefulWidget {
//   final String fileName;
//   final String fileUrl;

//   const CustomIconShare({
//     super.key,
//     required this.fileName,
//     required this.fileUrl,
//   });

//   @override
//   State<CustomIconShare> createState() => _CustomIconShareState();
// }

// class _CustomIconShareState extends State<CustomIconShare> {
//   Future<void> _sharePdfFile() async {
//     try {
//       // Define the save path
//       Directory appDocDir = await getApplicationDocumentsDirectory();
//       String savePath = '${appDocDir.path}/${widget.fileName}.pdf';

//       // Download the file using Dio
//       final dio = Dio();
//       await dio.download(
//         widget.fileUrl,
//         savePath,
//       );

//       // Share the downloaded PDF file
//       XFile xFile = XFile(savePath);
//       await Share.shareXFiles([xFile]);
//     } catch (e) {
//       log('Error Sharing PDF: $e');
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text("Failed to sharing PDF: $e")),
//         );
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       icon: const Icon(
//         Icons.share,
//         color: Colors.white,
//       ),
//       onPressed: _sharePdfFile,
//     );
//   }
// }
