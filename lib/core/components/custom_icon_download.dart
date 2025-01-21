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
  
  Future<void> _downloadFiles() async {  
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
  
      for (int i = 0; i < widget.fileUrls.length; i++) {  
        final filePath = "${dir.path}/${widget.fileNames[i]}";  
  
        // Download the file using Dio  
        await dio.download(  
          widget.fileUrls[i],  
          filePath,  
          onReceiveProgress: (received, total) {  
            if (total != -1) {  
              setState(() {  
                _progress = (received / total) * (i + 1) / widget.fileUrls.length; // Update progress  
              });  
            }  
          },  
        );  
  
        // Optionally open the file after downloading  
        await OpenFile.open(filePath);  
      }  
    } catch (e) {  
      if (mounted) {  
        ScaffoldMessenger.of(context).showSnackBar(  
          SnackBar(content: Text("Failed to download files: $e")),  
        );  
      }  
    } finally {  
      setState(() {  
        _isDownloading = false;  
      });  
    }  
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
      onPressed: _isDownloading ? null : _downloadFiles,  
    );  
  }  
}  

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
