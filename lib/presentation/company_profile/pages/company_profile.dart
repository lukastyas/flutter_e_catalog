import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_e_catalog/core/constants/colors.dart';
import '../bloc/company/company_bloc.dart';
import '../widgets/company_profile_widget.dart';
import '../../../core/components/search_input.dart'; // Import widget input pencarian

class CompanyProfilePage extends StatefulWidget {
  const CompanyProfilePage({super.key});

  @override
  State<CompanyProfilePage> createState() => _CompanyProfilePageState();
}

class _CompanyProfilePageState extends State<CompanyProfilePage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    context.read<CompanyBloc>().add(CompanyEvent.fetch());
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose(); // Menghapus controller saat widget dihapus
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Company Profile'),
        centerTitle: true,
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(
            16.0), // Menambahkan padding di sekitar seluruh body
        child: Column(
          children: [
            SearchInput(
              controller: _searchController,
              onChanged: (value) {
                context.read<CompanyBloc>().add(CompanyEvent.search(value));
              },
            ),
            const SizedBox(
                height: 16.0), // Jarak antara input pencarian dan grid
            Expanded(
              child: BlocBuilder<CompanyBloc, CompanyState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    success: (profiles) {
                      if (profiles.isEmpty) {
                        return const Center(
                          child: Text('No Company Profiel Found.'),
                        );
                      }
                      return GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // Jumlah kolom
                          childAspectRatio: 0.75, // Rasio aspek item
                        ),
                        itemCount: profiles.length,
                        itemBuilder: (context, index) {
                          return CompanyProfileWidget(profile: profiles[index]);
                        },
                      );
                    },
                    error: (message) => Center(
                      child: Text(message),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
