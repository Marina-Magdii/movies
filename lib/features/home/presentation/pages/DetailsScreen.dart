import 'package:etfarrag/core/ColorManager.dart';
import 'package:etfarrag/core/DI/DI.dart';
import 'package:etfarrag/core/Storage/MovieCollection.dart';
import 'package:etfarrag/core/StringsManager.dart';
import 'package:etfarrag/features/home/domain/entities/Popular/ResultsEntity.dart';
import 'package:etfarrag/features/home/presentation/manager/similar_cubit.dart';
import 'package:etfarrag/features/home/presentation/widgets/new_releases_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatefulWidget {
  static const String routeName = "Details";

  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    ResultsEntity entity =
        ModalRoute.of(context)?.settings.arguments as ResultsEntity;
    return BlocProvider(
      create: (context) =>
          getIt<SimilarCubit>()..getSimilar("${entity.id ?? 957452}"),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.primary,
          title: Text(
            entity.title ?? "",
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.network(
                  width: double.infinity,
                  height: 250.h,
                  "${StringsManager.image}${entity.backdropPath}",
                  fit: BoxFit.cover,
                ),
                Icon(
                  Icons.play_circle,
                  color: Colors.white,
                  size: 70.sp,
                ),
              ],
            ),
            Padding(
              padding: REdgeInsets.all(10),
              child: Center(
                child: Text(
                  entity.title ?? "",
                  style: Theme.of(context).textTheme.titleLarge
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: REdgeInsets.only(left: 15.sp),
                child: Text(entity.releaseDate ?? "",
                    style: TextStyle(fontSize: 12.sp,color: Colors.white)),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: REdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r)
                    ),
                      width: 90.w,
                      child: Image.network(
                          "${StringsManager.image}${entity.posterPath}")),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        entity.overview ?? "",
                        style: TextStyle(fontSize: 12.sp,color: Colors.white),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon:
                                  SvgPicture.asset(StringsManager.star)),
                          Text(
                            "${entity.voteAverage}",
                            style: TextStyle(fontSize: 10.sp,color: ColorManager.primary),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const Divider(),
            Center(
              child: Padding(
                padding:REdgeInsets.all(10.0),
                child: Text(StringsManager.moreLike,
                style: Theme.of(context).textTheme.titleLarge
                ),
              ),
            ),
            BlocBuilder<SimilarCubit, SimilarState>(
              builder: (context, state) {
                switch (state) {
                  case SimilarInitial():
                    {
                      return Container();
                    }
                  case SimilarError():
                    {
                      return Column(children: [
                        Text(state.error),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {});
                            },
                            child: const Text(StringsManager.tryAgain))
                      ]);
                    }
                  case SimilarSuccess():
                    {
                      var response = state.entity.results??[];
                      return Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: response.length,
                          itemBuilder: (context, index) {
                            return NewReleasesItem(
                              onClick: (){},
                                imagePath:
                                    "${StringsManager.image}${response[index].posterPath}");
                          },
                        ),
                      );
                    }
                  case SimilarLoading():
                    {
                      return const Center(child: CircularProgressIndicator());
                    }
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
