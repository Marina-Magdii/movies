import 'package:etfarrag/features/search/presentation/manager/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/DI/DI.dart';

class SearchScreen extends SearchDelegate {
  SearchCubit cubit;
  bool isVisible=false;

  SearchScreen(this.cubit);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: () {
        isVisible=true;
        cubit.searchQuery(query);
      }, icon: const Icon(Icons.search))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: () {
      Navigator.pop(context);
    }, icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    getIt<SearchCubit>().searchQuery(query);
    return Visibility(
      visible: isVisible,
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          print("hhhhhhhhhhhhh");
          if(state is SearchSuccess){
            var results = state.entity.results;
            return ListView.builder(
            itemCount: results?.length??0,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  SizedBox(
                    height: 100.h,
                    width: 100.w,
                    child: Image.network("https://image.tmdb.org/t/p/w500/${results?[index].posterPath}"),
                  ),
                  SizedBox(width: 10.w,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          maxLines: 1,
                          results?[index].title??"",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(results?[index].overview??"",
                          style: const TextStyle(
                              color: Colors.grey
                          ),),
                      ],
                    ),
                  ),
                ],
              );
            },);}
          if(state is SearchError){
            return Center(child: Text(state.error));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.black,
                    width: 4.w
                ),
                borderRadius: BorderRadius.circular(20.r)
            )
        )
    );
  }
}