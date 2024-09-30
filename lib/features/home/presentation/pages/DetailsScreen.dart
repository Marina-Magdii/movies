import 'package:etfarrag/features/home/domain/entities/Popular/ResultsEntity.dart';
import 'package:etfarrag/features/home/presentation/widgets/new_releases_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  static const String routeName ="Details";
    DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
     ResultsEntity entity = ModalRoute.of(context)?.settings.arguments as ResultsEntity;
    return Scaffold(
      appBar: AppBar(
        title: Text(entity.title??"",
        style: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.network(
                width: double.infinity,
                "https://image.tmdb.org/t/p/w500${entity.backdropPath}",
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
            padding: REdgeInsets.all(15)
            ,child: Text(
              entity.title ?? "",
              style: TextStyle(
                  color: Colors.black, fontSize: 25.sp,
              fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding:REdgeInsets.only(
              left: 15.sp,
              bottom: 10.sp
            ),
            child: Text(entity.releaseDate??"",
            style: TextStyle(
              fontSize: 12.sp
            )),
          ),
          Row(
            children: [
              Padding(
                padding: REdgeInsets.all(15.0),
                child: SizedBox(
                    width: 90.w,
                    child: Image.network(
                        "https://image.tmdb.org/t/p/w500${entity.posterPath}")),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(entity.overview??"",
                    style: TextStyle(
                      fontSize: 10.sp
                    ),),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                       IconButton(onPressed: (){},
                           icon: SvgPicture.asset("assets/images/star-2.svg")),

                        Text("${entity.voteAverage}",
                        style: TextStyle(
                          fontSize: 10.sp
                        ),)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
              return NewReleasesItem(imagePath: "https://image.tmdb.org/t/p/w500${entity.posterPath}");
            },),
          )
        ],
      ),
    );
  }
}
