import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class NavMenu extends StatelessWidget {
  final String iconPath;
  final String label;
  final bool isActive;
  final VoidCallback onPressed;

  const NavMenu({
    super.key,
    required this.iconPath,
    required this.label,
    required this.isActive,
    required this.onPressed,
  });

  //navbar text dibawah icon
  // @override
  // Widget build(BuildContext context) {
  //   return InkWell(
  //     onTap: onPressed,
  //     borderRadius: const BorderRadius.all(Radius.circular(16.0)),
  //     child: Column(
  //       mainAxisSize: MainAxisSize.min,
  //       children: [
  //         SizedBox(
  //           width: 25.0,
  //           height: 25.0,
  //           child: ImageIcon(
  //             AssetImage(iconPath),
  //             color: isActive ? AppColors.primary : AppColors.black,
  //           ),
  //         ),
  //         const SizedBox(height: 4.0),
  //         Text(
  //           label,
  //           style: TextStyle(
  //             fontSize: 12.0,
  //             color: isActive ? AppColors.primary : AppColors.black,
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

  // navbar text disamping icons
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(18.0)),
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: isActive ? AppColors.primary : null,
          borderRadius: const BorderRadius.all(Radius.circular(18.0)),
        ),
        child: Row(
          children: [
            ImageIcon(
              AssetImage(iconPath),
              color: isActive ? AppColors.white : AppColors.black,
            ),
            if (isActive) const SizedBox(width: 4.0),
            if (isActive)
              Text(
                label,
                style: const TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
