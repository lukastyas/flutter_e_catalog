// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter_e_catalog/data/datasource/company_profile_remote_datasource.dart';
// import 'package:flutter_e_catalog/data/models/responses/company_response_model.dart';
// import 'package:permission_handler/permission_handler.dart';

// import '../../../core/constants/colors.dart';

// class CompanyCard extends StatelessWidget {
//   final Company data;
//   final VoidCallback onDownload;
//   final VoidCallback onShare;

//   const CompanyCard({
//     super.key,
//     required this.data,
//     required this.onDownload,
//     required this.onShare,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16.0),
//       decoration: ShapeDecoration(
//         shape: RoundedRectangleBorder(
//           side: const BorderSide(width: 1, color: AppColors.grey),
//           borderRadius: BorderRadius.circular(19),
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             alignment: Alignment.center,
//             padding: const EdgeInsets.all(12.0),
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: AppColors.light.withOpacity(0.4),
//             ),
//             child: ClipRRect(
//               borderRadius: const BorderRadius.all(Radius.circular(50.0)),
//               child: Image.asset(
//                 data.fileUrl, // Ganti dengan thumbnail atau icon PDF jika ada
//                 width: 68,
//                 height: 68,
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           const SizedBox(height: 8.0),
//           Text(
//             data.fileName,
//             style: const TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w700,
//                 color: AppColors.white),
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//           ),
//           const SizedBox(height: 8.0),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               ElevatedButton(
//                 onPressed: () async {
//                   CompanyProfileRemoteDatasource()
//                       .downloadFile(data.fileName, data.fileUrl);
//                   // Logic download
//                   // if (Platform.isAndroid) {
//                   //   var status = await Permission.storage.status;
//                   //   if (status != PermissionStatus.granted) {
//                   //     status = await Permission.storage.request();
//                   //   }
//                   //   if (status.isGranted) {
//                   //     const downloadsFolderPath =
//                   //         '/storage/emulated/0/Download/';
//                   //     Directory dir = Directory(downloadsFolderPath);
//                   //     var file = File('${dir.path}/${data.fileName}');
//                   //   }
//                   // }
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: AppColors.white, // Warna tombol download
//                 ),
//                 child: const Text('Download'),
//               ),
//               ElevatedButton(
//                 onPressed: onShare,
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: AppColors.white, // Warna tombol share
//                 ),
//                 child: const Text('Share'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
