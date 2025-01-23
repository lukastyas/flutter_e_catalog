import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:open_file_plus/open_file_plus.dart';
import 'package:permission_handler/permission_handler.dart';

class CustomIconDownload extends StatefulWidget {
  final List<String> fileUrls; // List of file URLs
  final List<String> fileNames; // List of file names

  const CustomIconDownload({
    super.key,
    required this.fileUrls,
    required this.fileNames,
  });

  @override
  State<CustomIconDownload> createState() => _CustomIconDownloadState();
}

class _CustomIconDownloadState extends State<CustomIconDownload> {
  bool _isDownloading = false;
  double _progress = 0.0;
  List<bool> _selectedFiles = [];

  @override
  void initState() {
    super.initState();
    _selectedFiles = List.filled(widget.fileNames.length, false);
  }

  void _downloadSelectedFiles() {
    bool anySelected = _selectedFiles
        .any((selected) => selected); // Check if any file is selected

    if (!anySelected) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text("Tidak ada file yang dipilih untuk diunduh.")),
      );
      return; // Exit if no files are selected
    }

    for (int i = 0; i < _selectedFiles.length; i++) {
      if (_selectedFiles[i]) {
        String fileUrl =
            widget.fileUrls[i]; // Pastikan ini adalah file_url dari respons API
        String fileName = widget
            .fileNames[i]; // Pastikan ini adalah file_name dari respons API
        _downloadFile(widget.fileUrls[i], widget.fileNames[i]);
      }
    }
  }

  Future<void> _downloadFile(String fileUrl, String fileName) async {
    setState(() {
      _isDownloading = true;
      _progress = 0.0;
    });

    try {
      // Request permission to access external storage
      final status = await Permission.manageExternalStorage.request();
      if (!status.isGranted) {
        throw Exception('Permission denied');
      }

      // Define the download directory
      final dir = Directory('/storage/emulated/0/Download');
      if (!await dir.exists()) {
        await dir.create(recursive: true);
      }

      final dio = Dio();
      // Pastikan nama file diakhiri dengan .pdf
      String pdfFileName =
          fileName.endsWith('.pdf') ? fileName : '$fileName.pdf';
      final filePath = "${dir.path}/$pdfFileName";
      // final filePath = "${dir.path}/$fileName";

      // Download the file using Dio
      await dio.download(
        fileUrl,
        filePath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            setState(() {
              _progress = received / total; // Update progress
            });
          }
        },
      );

      // Optionally open the file after downloading
      await OpenFile.open(filePath);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to download file: $e")),
        );
      }
    } finally {
      setState(() {
        _isDownloading = false;
        // Reset selected files after download
        for (int i = 0; i < _selectedFiles.length; i++) {
          if (_selectedFiles[i]) {
            _selectedFiles[i] = false; // Reset checkbox to false
          }
        }
      });
    }
  }

  void _showDownloadDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Pilih file untuk diunduh'),
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
                          _selectedFiles[index] = value!;
                          print("Checkbox $index changed to $value");
                        });
                      },
                      secondary: const Icon(Icons.picture_as_pdf),
                    );
                  },
                ),
              );
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Menutup dialog
                _downloadSelectedFiles();
              },
              child: const Text('Unduh'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Menutup dialog
              },
              child: const Text('Batal'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: _isDownloading
          ? Stack(
              alignment: Alignment.center,
              children: [
                CircularProgressIndicator(
                  value: _progress,
                  color: Colors.white,
                ),
                Text(
                  "${(_progress * 100).toInt()}%",
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          : const Icon(
              Icons.download,
              color: Colors.white,
            ),
      onPressed: _isDownloading ? null : _showDownloadDialog,
    );
  }
}  


// import 'dart:io';  
// import 'package:dio/dio.dart';  
// import 'package:flutter/material.dart';  
// import 'package:open_file_plus/open_file_plus.dart';  
// import 'package:permission_handler/permission_handler.dart';  
  
// class CustomIconDownload extends StatefulWidget {  
//   final List<String> fileUrls; // List of file URLs  
//   final List<String> fileNames; // List of file names  
  
//   const CustomIconDownload({  
//     super.key,  
//     required this.fileUrls,  
//     required this.fileNames,  
//   });  
  
//   @override  
//   State<CustomIconDownload> createState() => _CustomIconDownloadState();  
// }  
  
// class _CustomIconDownloadState extends State<CustomIconDownload> {  
//   bool _isDownloading = false;  
//   double _progress = 0.0;  
  
//   Future<void> _downloadFiles() async {  
//     setState(() {  
//       _isDownloading = true;  
//       _progress = 0.0;  
//     });  
  
//     try {  
//       // Request permission to access external storage  
//       final status = await Permission.manageExternalStorage.request();  
//       if (!status.isGranted) {  
//         throw Exception('Permission denied');  
//       }  
  
//       // Define the download directory  
//       final dir = Directory('/storage/emulated/0/Download');  
//       if (!await dir.exists()) {  
//         await dir.create(recursive: true);  
//       }  
  
//       final dio = Dio();  
  
//       for (int i = 0; i < widget.fileUrls.length; i++) {  
//         final filePath = "${dir.path}/${widget.fileNames[i]}";  
  
//         // Download the file using Dio  
//         await dio.download(  
//           widget.fileUrls[i],  
//           filePath,  
//           onReceiveProgress: (received, total) {  
//             if (total != -1) {  
//               setState(() {  
//                 _progress = (received / total) * (i + 1) / widget.fileUrls.length; // Update progress  
//               });  
//             }  
//           },  
//         );  
  
//         // Optionally open the file after downloading  
//         await OpenFile.open(filePath);  
//       }  
//     } catch (e) {  
//       if (mounted) {  
//         ScaffoldMessenger.of(context).showSnackBar(  
//           SnackBar(content: Text("Failed to download files: $e")),  
//         );  
//       }  
//     } finally {  
//       setState(() {  
//         _isDownloading = false;  
//       });  
//     }  
//   }  
  
//   @override  
//   Widget build(BuildContext context) {  
//     return IconButton(  
//       icon: _isDownloading  
//           ? Stack(  
//               alignment: Alignment.center,  
//               children: [  
//                 CircularProgressIndicator(  
//                   value: _progress,  
//                   color: Colors.white,  
//                 ),  
//                 Text(  
//                   "${(_progress * 100).toInt()}%",  
//                   style: const TextStyle(  
//                     fontSize: 10,  
//                     color: Colors.white,  
//                   ),  
//                 ),  
//               ],  
//             )  
//           : const Icon(  
//               Icons.download,  
//               color: Colors.white,  
//             ),  
//       onPressed: _isDownloading ? null : _downloadFiles,  
//     );  
//   }  
// }  

// import 'dart:io';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:open_file_plus/open_file_plus.dart';
// import 'package:permission_handler/permission_handler.dart';

// class CustomIconDownload extends StatefulWidget {
//   final String fileUrl;
//   final String fileName;

//   const CustomIconDownload({
//     super.key,
//     required this.fileUrl,
//     required this.fileName,
//   });

//   @override
//   State<CustomIconDownload> createState() => _CustomIconDownloadState();
// }

// class _CustomIconDownloadState extends State<CustomIconDownload> {
//   bool _isDownloading = false;
//   double _progress = 0.0;

//   Future<void> _downloadPdf() async {
//     setState(() {
//       _isDownloading = true;
//       _progress = 0.0;
//     });

//     try {
//       // Request permission to access external storage
//       final status = await Permission.manageExternalStorage.request();
//       if (!status.isGranted) {
//         throw Exception('Permission denied');
//       }
//       // Define the download directory
//       final dir = Directory('/storage/emulated/0/Download');
//       if (!await dir.exists()) {
//         await dir.create(recursive: true);
//       }
//       final filePath = "${dir.path}/${widget.fileName}";

//       // Download the file using Dio
//       final dio = Dio();
//       await dio.download(
//         widget.fileUrl,
//         filePath,
//         onReceiveProgress: (received, total) {
//           if (total != -1) {
//             setState(() {
//               _progress = received / total;
//             });
//           }
//         },
//       );
//       await OpenFile.open(filePath);
//     } catch (e) {
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text("Failed to download PDF: $e")),
//         );
//       }
//     } finally {
//       setState(() {
//         _isDownloading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       icon: _isDownloading
//           ? Stack(
//               alignment: Alignment.center,
//               children: [
//                 CircularProgressIndicator(
//                   value: _progress,
//                   color: Colors.white,
//                 ),
//                 Text(
//                   "${(_progress * 100).toInt()}%",
//                   style: const TextStyle(
//                     fontSize: 10,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             )
//           : const Icon(
//               Icons.download,
//               color: Colors.white,
//             ),
//       onPressed: _isDownloading ? null : _downloadPdf,
//     );
//   }
// }
