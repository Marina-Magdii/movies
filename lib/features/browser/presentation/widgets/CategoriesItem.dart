import 'package:etfarrag/features/browser/domain/entities/Categories/GenreEntity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key,required this.model, required this.onPress});
  final GenreEntity model;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    List<String> names=[
      "Action",
      "Adventure",
      "Animation",
      "Comedy",
      "Crime",
      "Documentary"
      "Drama",
      "Family",
      "Fantasy",
      "General",
      "History",
      "Horror",
      "Mystery",
      "Science",
      "Thriller",
      "War",
      "Western"
    ];
    return  InkWell(
        onTap: onPress,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: REdgeInsets.all(15.0),
              child: Container(
                height: 140.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    image: DecorationImage(
                      image: AssetImage(names.contains(model.name)?
                      "assets/images/${model.name}.png":"assets/images/General.png"),
                      fit: BoxFit.fill,
                    )
                ),
              ),
            ),
            Center(
              child: Text(
                model.name??"",
                style:
               Theme.of(context).textTheme.titleMedium),
            )
          ],
        ),
    );
  }
}