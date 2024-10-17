import 'package:etfarrag/core/DI/DI.dart';
import 'package:etfarrag/core/StringsManager.dart';
import 'package:etfarrag/features/browser/domain/entities/Categories/GenreEntity.dart';
import 'package:etfarrag/features/browser/presentation/manager/CategoryDetails/category_details_cubit.dart';
import 'package:etfarrag/features/browser/presentation/widgets/CategoryDetailsItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../home/domain/entities/Popular/ResultsEntity.dart';

class CategoryListView extends StatefulWidget {
  static const String routeName = "CategoryList";

  const CategoryListView({super.key});

  @override
  State<CategoryListView> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryListView> {
  @override
  Widget build(BuildContext context) {
    GenreEntity args =
        ModalRoute.of(context)?.settings.arguments as GenreEntity;
    return BlocProvider(
      create: (context) =>
          getIt<CategoryDetailsCubit>()..getCategories("${args.id}"),
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: REdgeInsets.all(10.0),
            child: Text(
              args.name ?? "",
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(StringsManager.backGround),fit: BoxFit.fill
              )
          ),
          child: Padding(
            padding: REdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                BlocBuilder<CategoryDetailsCubit, CategoryDetailsState>(
                builder: (context, state) {
              switch(state){

                case CategoryDetailsInitial():
          {return Container();}
                case CategoryDetailsError():
          {
            return Column(
              children: [
                Text(state.error),
                ElevatedButton(onPressed: (){
                  setState(() {
                  });
                }, child: const Text(StringsManager.tryAgain))
              ],
            );
          }
                case CategoryDetailsSuccess():
          {
            List<ResultsEntity> films = state.entity.results??[];
            print(films[0].posterPath);
            return Expanded(
              child: ListView.separated(
                separatorBuilder:(context, index) => const Divider(),
                itemCount: films.length,
                itemBuilder: (context, index) {
                  return CategoryDetailsItem(
                    image: films[index].posterPath??"",
                    text: films[index].title.toString(),
                    description: films[index].overview.toString(),
                   );
                },
              ),
            );
          }
                case CategoryDetailsLoading():
          {
            return const Center(child: CircularProgressIndicator());
          }
              }
                },
              )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
