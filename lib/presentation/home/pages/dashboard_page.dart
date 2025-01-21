import 'package:flutter/material.dart';
import 'package:flutter_e_catalog/presentation/home/pages/home_page.dart';
import 'package:flutter_e_catalog/presentation/sheet/pages/sheet_page.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';
import '../../catalog/pages/catalog_page.dart';
import '../../company_profile/pages/company_profile.dart';
import '../widgets/nav_menu.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const CompanyProfilePage(),
    // const Center(
    //   child: Text('Company'),
    // ),
    const CatalogPage(),
    // const Center(
    //   child: Text('Catalog'),
    // ),
    const SheetPage(),
    // const Center(
    //   child: Text('Sheet'),
    // ),
    // const LogoutWidget(),
  ];

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages, // All pages will be kept in memory
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24.0)),
          color: AppColors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavMenu(
              iconPath: Assets.icons.home.path,
              label: 'Home',
              isActive: _selectedIndex == 0,
              onPressed: () => _onItemTapped(0),
            ),
            NavMenu(
              iconPath: Assets.icons.company.path,
              label: 'Company',
              isActive: _selectedIndex == 1,
              onPressed: () => _onItemTapped(1),
            ),
            NavMenu(
              iconPath: Assets.icons.catalog.path,
              label: 'Catalog',
              isActive: _selectedIndex == 2,
              onPressed: () => _onItemTapped(2),
            ),
            NavMenu(
              iconPath: Assets.icons.sheet.path,
              label: 'Sheet',
              isActive: _selectedIndex == 3,
              onPressed: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
    );
  }
}
