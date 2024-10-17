import 'package:etfarrag/core/DI/DI.dart';
import 'package:etfarrag/core/StringsManager.dart';
import 'package:etfarrag/features/browser/presentation/manager/Categories/categories_cubit.dart';
import 'package:etfarrag/features/browser/presentation/pages/CategoriesListView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../domain/entities/Categories/GenreEntity.dart';
import '../widgets/CategoriesItem.dart';

class BrowserView extends StatefulWidget {
  static const String routeName = "Browser";

  const BrowserView({super.key});

  @override
  State<BrowserView> createState() => _BrowserViewState();
}

class _BrowserViewState extends State<BrowserView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      getIt<CategoriesCubit>()
        ..getCategories(),
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: REdgeInsets.all(10.0),
            child: const Text(
              StringsManager.browserView,
             ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(StringsManager.backGround)
                ,fit: BoxFit.fill
            )
          ),
          child: BlocBuilder<CategoriesCubit, CategoriesState>(
            builder: (context, state) {
              switch(state){

                case CategoriesInitial():
                  {return Container();}
                case CategoriesError():
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
                case CategoriesSuccess():
                 {
                   List<GenreEntity> genres = state.entity.genres??[];
                   return Expanded(
                   child: GridView.builder(
                     itemCount: genres.length,
                     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 2),
                     itemBuilder: (context, index) {
                       return CategoriesItem(
                         model: genres[index],
                         onPress: () {
                           Navigator.pushNamed(context, CategoryListView.routeName,
                               arguments: genres[index]);
                         },
                       );
                     },
                   ),
                 );}
                case CategoriesLoading():
                  {return const Center(child: CircularProgressIndicator(),);}
              }

            },
          ),
        ),
      ),
    );
  }
}
