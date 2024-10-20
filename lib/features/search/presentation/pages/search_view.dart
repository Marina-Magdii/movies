import 'package:etfarrag/core/DI/DI.dart';
import 'package:etfarrag/features/browser/presentation/widgets/CategoryDetailsItem.dart';
import 'package:etfarrag/features/search/presentation/manager/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/StringsManager.dart';

class SearchView extends StatefulWidget {
  static const String routeName = "Search";
  TextEditingController searchController = TextEditingController();

  SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SearchCubit>(),
      child: SafeArea(
        child: Builder(
          builder: (context) {
            return Scaffold(
              body: Padding(
                padding: REdgeInsets.all(15.0),
                child: Column(
                  children: [
                    TextField(
                      controller: widget.searchController,
                      onSubmitted: (value) {
                            getIt<SearchCubit>().search(value);
                          widget.searchController.clear();
                      },
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[700],
                          prefixIcon: Padding(
                            padding: REdgeInsets.all(20.0),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 15.sp,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          )),
                    ),
                    BlocListener<SearchCubit, SearchState>(
                      listener: (context, state) {
                      },
                      child: BlocBuilder<SearchCubit, SearchState>(
                        builder: (context, state) {
                          switch (state) {
                            case SearchInitial():
                              {
                                return Container();
                              }
                            case SearchLoading():
                              {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                            case SearchSuccess():
                              {
                                getIt<SearchCubit>().entity = state.entity;
                                return Expanded(
                                  child: ListView.builder(
                                    itemCount: getIt<SearchCubit>().entity!.results!.length,
                                    itemBuilder: (context, index) {
                                      return CategoryDetailsItem(
                                          image: getIt<SearchCubit>().entity!.results![index].posterPath ?? "",
                                          text: getIt<SearchCubit>().entity!.results![index].title ?? "",
                                          description:
                                          getIt<SearchCubit>().entity!.results![index].overview ?? "");
                                    },
                                  ),
                                );
                              }
                            case SearchError():
                              {
                                return Column(
                                  children: [
                                    Text(state.error),
                                    ElevatedButton(
                                        onPressed: () {
                                          setState(() {});
                                        },
                                        child:
                                            const Text(StringsManager.tryAgain))
                                  ],
                                );
                              }
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
