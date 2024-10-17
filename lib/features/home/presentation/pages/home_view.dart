import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:etfarrag/core/DI/DI.dart';
import 'package:etfarrag/core/Storage/MovieCollection.dart';
import 'package:etfarrag/core/StringsManager.dart';
import 'package:etfarrag/features/home/domain/entities/Popular/ResultsEntity.dart';
import 'package:etfarrag/features/home/presentation/manager/popular_view_model_cubit.dart';
import 'package:etfarrag/features/home/presentation/pages/DetailsScreen.dart';
import 'package:etfarrag/features/home/presentation/widgets/new_releases_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatefulWidget {
  static const String routeName = "Home";
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  CollectionReference movies =
      FirebaseFirestore.instance.collection(ResultsEntity.collectionName);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => getIt<PopularViewModelCubit>()
          ..getResponse()
          ..getNewResponse()
          ..getRecommended(),
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(StringsManager.backGround),
                    fit: BoxFit.fill)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 250.h,
                  width: double.infinity,
                  child:
                      BlocBuilder<PopularViewModelCubit, PopularViewModelState>(
                    buildWhen: (previous, current) {
                      if (current is PopularSuccessState ||
                          current is PopularLoadingState ||
                          current is PopularErrorState) {
                        return true;
                      }
                      return false;
                    },
                    builder: (context, state) {
                      if (state is PopularErrorState) {
                        return Column(
                          children: [
                            Text(state.error),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {});
                                },
                                child: const Text(StringsManager.tryAgain))
                          ],
                        );
                      }
                      if (state is PopularLoadingState) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (state is PopularSuccessState) {
                        List<ResultsEntity> popularList =
                            state.popularEntity.resultsList ?? [];
                        return Padding(
                          padding: REdgeInsets.all(10.0),
                          child: CarouselSlider(
                            options:
                                CarouselOptions(autoPlay: true, height: 400.0),
                            items: popularList.map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, DetailsScreen.routeName,
                                          arguments: ResultsEntity(
                                              releaseDate: i.releaseDate,
                                              backdropPath: i.backdropPath,
                                              overview: i.overview,
                                              posterPath: i.posterPath,
                                              title: i.title,
                                              voteAverage: i.voteAverage,
                                              genreIds: i.genreIds,
                                              id: i.id));
                                    },
                                    child: SizedBox(
                                        child: ListView.builder(
                                      itemCount: popularList.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: REdgeInsets.all(10.0),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Image.network(
                                                width: double.infinity,
                                                "${StringsManager.image}${i.backdropPath}",
                                                fit: BoxFit.cover,
                                              ),
                                              Icon(
                                                Icons.play_circle,
                                                color: Colors.white,
                                                size: 70.sp,
                                              ),
                                              Padding(
                                                padding: REdgeInsets.all(15.0),
                                                child: Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: SizedBox(
                                                      width: 90.w,
                                                      child: Image.network(
                                                          "${StringsManager.image}${i.posterPath}")),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    REdgeInsets.only(top: 150),
                                                child: Text(
                                                  textAlign: TextAlign.end,
                                                  i.title ?? "",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25.sp),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    )),
                                  );
                                },
                              );
                            }).toList(),
                          ),
                        );
                      }
                      return Container();
                    },
                  ),
                ),
                const Divider(),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: REdgeInsets.all(10.0),
                  child: Center(
                    child: Text(StringsManager.newReleases,
                        style: Theme.of(context).textTheme.titleLarge),
                  ),
                ),
                BlocBuilder<PopularViewModelCubit, PopularViewModelState>(
                  buildWhen: (previous, current) {
                    if (current is NewReleaseErrorState ||
                        current is NewReleaseSuccessState ||
                        current is NewReleaseLoadingState) {
                      return true;
                    }
                    return false;
                  },
                  builder: (context, state) {
                    if (state is NewReleaseLoadingState) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (state is NewReleaseSuccessState) {
                      var results2 = state.entity.results ?? [];
                      return Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: results2.length,
                          itemBuilder: (context, index) {
                            return NewReleasesItem(
                              onClick: () {
                                MovieCollection.addToWish(results2[index]);
                              },
                              imagePath:
                                  "${StringsManager.image}${results2[index].posterPath}",
                              onTap: () {
                                Navigator.pushNamed(
                                    context, DetailsScreen.routeName,
                                    arguments: ResultsEntity(
                                        id: results2[index].id,
                                        genreIds: results2[index].genreIds,
                                        posterPath: results2[index].posterPath,
                                        voteAverage:
                                            results2[index].voteAverage,
                                        title: results2[index].title,
                                        overview: results2[index].overview,
                                        backdropPath:
                                            results2[index].backdropPath,
                                        releaseDate:
                                            results2[index].releaseDate,
                                        originalTitle:
                                            results2[index].originalTitle));
                              },
                            );
                          },
                        ),
                      );
                    }
                    if (state is NewReleaseErrorState) {
                      return Column(
                        children: [
                          Text(state.error),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {});
                              },
                              child: const Text(StringsManager.tryAgain))
                        ],
                      );
                    }
                    return Container();
                  },
                ),
                const Divider(),
                Padding(
                  padding: REdgeInsets.all(10.0),
                  child: Center(
                    child: Text(StringsManager.recommended,
                        style: Theme.of(context).textTheme.titleLarge),
                  ),
                ),
                BlocBuilder<PopularViewModelCubit, PopularViewModelState>(
                  buildWhen: (previous, current) {
                    if (current is RecommendedSuccess ||
                        current is RecommendedError ||
                        current is RecommendedLoading) {
                      return true;
                    }
                    return false;
                  },
                  builder: (context, state) {
                    if (state is RecommendedError) {
                      return Column(
                        children: [
                          Text(state.error),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {});
                              },
                              child: const Text(StringsManager.tryAgain))
                        ],
                      );
                    }
                    if (state is RecommendedSuccess) {
                      List<ResultsEntity> myList = state.entity.results ?? [];
                      return Expanded(
                          child: ListView.builder(
                              itemCount: myList.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return NewReleasesItem(
                                  onClick: ()async {
                                    MovieCollection.addToWish(myList[index]);
                                    // await movies.add({
                                    //   "id": myList[index].id,
                                    //   "posterPath": myList[index].posterPath,
                                    //   "voteAverage": myList[index].voteAverage,
                                    //   "title": myList[index].title,
                                    //   "overview": myList[index].overview,
                                    // });
                                    print("Done");
                                  },
                                  imagePath:
                                      "${StringsManager.image}${myList[index].posterPath}",
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, DetailsScreen.routeName,
                                        arguments: ResultsEntity(
                                            id: myList[index].id,
                                            genreIds: myList[index].genreIds,
                                            posterPath:
                                                myList[index].posterPath,
                                            voteAverage:
                                                myList[index].voteAverage,
                                            title: myList[index].title,
                                            overview: myList[index].overview,
                                            backdropPath:
                                                myList[index].backdropPath,
                                            releaseDate:
                                                myList[index].releaseDate,
                                            originalTitle:
                                                myList[index].originalTitle));
                                  },
                                );
                              }));
                    }
                    return const Center(child: CircularProgressIndicator());
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
