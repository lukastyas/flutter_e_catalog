import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/datasource/company_profile_remote_datasource.dart';
import '../bloc/company/company_bloc.dart';
import '../widgets/company_profile_widget.dart';
import '../../../core/components/search_input.dart'; // Import the search input widget

class CompanyProfilePage extends StatefulWidget {
  const CompanyProfilePage({super.key});

  @override
  _CompanyProfilePageState createState() => _CompanyProfilePageState();
}

class _CompanyProfilePageState extends State<CompanyProfilePage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController
        .dispose(); // Dispose the controller when the widget is removed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CompanyBloc(CompanyProfileRemoteDatasource())
        ..add(const CompanyEvent
            .fetch()), // Ambil data dari API saat halaman dibuka
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 40.0),
            SearchInput(
              controller: _searchController,
              onChanged: (value) {
                // if (value.isNotEmpty) {
                //   // Panggil event pencarian ketika teks tidak kosong
                //   context.read<CompanyBloc>().add(CompanyEvent.search(value));
                // } else {
                //   // Jika input kosong, ambil semua data
                //   context.read<CompanyBloc>().add(const CompanyEvent.fetch());
                // }
              },
            ),
            Expanded(
              child: BlocBuilder<CompanyBloc, CompanyState>(
                builder: (context, state) {
                  return state.when(
                    initial: () =>
                        const Center(child: Text('Press button to fetch data')),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    success: (profiles) {
                      if (profiles.isEmpty) {
                        return const Center(child: Text('No companies found.'));
                      }
                      return GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // Number of columns
                          childAspectRatio: 0.75, // Aspect ratio of the items
                        ),
                        itemCount: profiles.length,
                        itemBuilder: (context, index) {
                          return CompanyProfileWidget(profile: profiles[index]);
                        },
                      );
                    },
                    error: (message) => Center(child: Text(message)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
