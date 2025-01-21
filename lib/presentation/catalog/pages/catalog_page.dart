import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_e_catalog/core/components/search_input.dart';
import 'package:flutter_e_catalog/core/constants/colors.dart';
import 'package:flutter_e_catalog/presentation/catalog/bloc/catalog/catalog_bloc.dart';
import 'package:flutter_e_catalog/presentation/catalog/widgets/catalog_card.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    context.read<CatalogBloc>().add(CatalogEvent.fetch());
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog'),
        centerTitle: true,
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchInput(
              controller: _searchController,
              onChanged: (value) {
                context.read<CatalogBloc>().add(CatalogEvent.search(value));
              },
            ),
            SizedBox(
              height: 16.0,
            ),
            Expanded(
              child: BlocBuilder<CatalogBloc, CatalogState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    success: (catalogs) {
                      if (catalogs.isEmpty) {
                        return const Center(
                          child: Text('No Catalogs Found.'),
                        );
                      }
                      return GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.75,
                        ),
                        itemCount: catalogs.length,
                        itemBuilder: (context, index) {
                          return CatalogCard(catalog: catalogs[index]);
                        },
                      );
                    },
                    error: (message) => Center(
                      child: Text(message),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
