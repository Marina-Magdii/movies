import 'package:etfarrag/core/DI/DI.dart';
import 'package:etfarrag/core/StringsManager.dart';
import 'package:etfarrag/features/search/presentation/manager/search_cubit.dart';
import 'package:etfarrag/features/search/presentation/widgets/SearchDelegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchView extends StatefulWidget {
  static const String routeName = "Search";
  late TextEditingController searchController;

   SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  void initState() {
    widget.searchController = TextEditingController();
    super.initState();

  }
  @override
  void dispose() {
    widget.searchController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding:REdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                controller: widget.searchController,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[700],
                    prefixIcon: Padding(
                      padding: REdgeInsets.all(20.0),
                      child: IconButton(
                        onPressed: () {
                          getIt<SearchCubit>().search(widget.searchController.text);
                          var cubit= getIt<SearchCubit>();
                          showSearch(
                              context: context,
                              delegate: SearchScreen(cubit));
                        },
                        icon: const Icon(Icons.search),
                        color: Colors.white,
                        iconSize: 15.sp,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.r),
                        borderSide: BorderSide(
                            width: 3.w,
                            style: BorderStyle.solid,
                            color: Colors.white))),
              ),
            ],
          ),
        ),
        );
  }
}
