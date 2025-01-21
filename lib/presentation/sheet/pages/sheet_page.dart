import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_e_catalog/core/components/search_input.dart';
import 'package:flutter_e_catalog/core/constants/colors.dart';
import 'package:flutter_e_catalog/presentation/sheet/bloc/sheet/sheet_bloc.dart';
import 'package:flutter_e_catalog/presentation/sheet/widgets/sheet_card.dart';

class SheetPage extends StatefulWidget {
  const SheetPage({super.key});

  @override
  State<SheetPage> createState() => _SheetPageState();
}

class _SheetPageState extends State<SheetPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    context.read<SheetBloc>().add(SheetEvent.fetch());
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
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            child: AppBar(
              title: const Text('Sheet'),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              foregroundColor: Colors.white,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SearchInput(
                controller: _searchController,
                onChanged: (value) {
                  context.read<SheetBloc>().add(SheetEvent.search(value));
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              Expanded(
                child: BlocBuilder<SheetBloc, SheetState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      success: (sheets) {
                        if (sheets.isEmpty) {
                          return const Center(
                            child: Text('No Sheets Found.'),
                          );
                        }
                        return GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.75,
                          ),
                          itemCount: sheets.length,
                          itemBuilder: (context, index) {
                            return SheetCard(sheet: sheets[index]);
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
        ));
  }
}
