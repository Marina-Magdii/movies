import 'package:etfarrag/core/DI/DI.dart';
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
  HomeView();

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => getIt<PopularViewModelCubit>()..getResponse()..getNewResponse()..getRecommended(),
        child: Scaffold(
          body: Column(
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
                              onPressed: () {}, child: const Text("Try Again"))
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
                      return   InkWell(
                        // onTap: (){
                        //   Navigator.pushNamed(
                        //       context, DetailsScreen.routeName,
                        //       arguments:
                        //   ResultsEntity(
                        //     title: popularList.map(i).title,
                        //     posterPath: popularList.map((e) => e.posterPath).toList().toString(),
                        //     overview: popularList.map((e) => e.overview).toList().toString(),
                        //     backdropPath: popularList.map((e) => e.backdropPath).toList().toString(),
                        //     releaseDate: popularList.map((e) => e.releaseDate).toList().toString()
                        //   )
                        //   );
                      //  },
                        child: Padding(
                          padding: REdgeInsets.all(10.0),
                          child: CarouselSlider(
                            options: CarouselOptions(
                                autoPlay: true,
                                height: 400.0),
                            items: popularList.map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return InkWell(
                                    onTap: (){
                                      Navigator.pushNamed(context, DetailsScreen.routeName,
                                      arguments: ResultsEntity(
                                        releaseDate: i.releaseDate,
                                        backdropPath: i.backdropPath,
                                        overview: i.overview,
                                        posterPath: i.posterPath,
                                        title: i.title,
                                        voteAverage: i.voteAverage
                                      ));
                                    },
                                    child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        margin: REdgeInsets.symmetric(horizontal: 5.0),
                                        child: ListView.builder(
                                          itemCount: popularList.length,
                                          itemBuilder: (context, index) {
                                            return Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Image.network(
                                                  width: double.infinity,
                                                  "https://image.tmdb.org/t/p/w500${i.backdropPath}",
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
                                                    alignment: Alignment.bottomLeft,
                                                    child: SizedBox(
                                                        width: 90.w,
                                                        child: Image.network(
                                                            "https://image.tmdb.org/t/p/w500${i.posterPath}")),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: REdgeInsets.only(top: 150),
                                                  child: Text(
                                                    textAlign: TextAlign.end,
                                                    i.title ?? "",
                                                    style: TextStyle(
                                                        color: Colors.white, fontSize: 25.sp),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        )),
                                  );
                                },
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    }
                    return Container();
                  },
                ),
              ),

              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: REdgeInsets.all(10.0),
                child: Text(
                  "New Releases",
                  style:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                ),
              ),
              BlocBuilder<PopularViewModelCubit, PopularViewModelState>(
                buildWhen: (previous, current) {
                  if(current is NewReleaseErrorState || current is NewReleaseSuccessState || current is NewReleaseLoadingState){
                    return true;
                  }
                  return false;
                },
                builder: (context, state) {
                  if(state is NewReleaseLoadingState){
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state is NewReleaseSuccessState){
                    var results2= state.entity.results??[];
                    return Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: results2.length,
                        itemBuilder: (context, index) {
                          return NewReleasesItem(
                              imagePath: "https://image.tmdb.org/t/p/w500${results2[index].posterPath}",
                          // onTap: (){
                          //       Navigator.pushNamed(context, DetailsScreen.routeName,
                          //       arguments: results2[index]
    //       );                          },
                                    );
                        },
                      ),
                    );
                  }
                  if(state is NewReleaseErrorState){
                    return Column(
                      children: [
                        Text(state.error),
                        ElevatedButton(onPressed: (){setState(() {
                        });}, child: const Text("Try Again"))
                      ],
                    );
                  }
                  return Container();
                },
              ),
              Padding(
                padding: REdgeInsets.all(10.0),
                child: Text(
                  "Recommended",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                      color: Colors.black),
                ),
              ),
              BlocBuilder<PopularViewModelCubit, PopularViewModelState>(
                buildWhen: (previous, current) {
                  if(current is RecommendedSuccess || current is RecommendedError || current is RecommendedLoading){
                    return true;
                  }
                  return false;
                },
  builder: (context, state) {
                  if(state is RecommendedError){
                    return Column(
                      children: [
                        Text(state.error),
                        ElevatedButton(onPressed: (){setState(() {
                        });}, child: const Text("Try Again"))
                      ],
                    );
                  }
                  if(state is RecommendedSuccess){
                    var myList = state.entity.results??[];
                    return Expanded(
                        child: ListView.builder(
                          itemCount: myList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return NewReleasesItem(
                                imagePath: "https://image.tmdb.org/t/p/w500${myList[index].posterPath}",
                            // onTap: (){
                            //       Navigator.pushNamed(context, DetailsScreen.routeName,
                            //       arguments: myList);
                            // },
                            );
                          },
                        ));
                  }
    return const Center(child: CircularProgressIndicator());
  },
)
            ],
          ),
        ),
      ),
    );
  }
}
