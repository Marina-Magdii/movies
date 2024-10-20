import 'package:etfarrag/core/StringsManager.dart';
import 'package:etfarrag/features/search/domain/entities/ResultEntity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../home/domain/entities/Popular/ResultsEntity.dart';

class CategoryDetailsItem extends StatelessWidget {
  const CategoryDetailsItem(
      {required this.image,
      super.key,
      required this.text,
      required this.description});
  final String text;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:REdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            height: 120.h,
            width: 100.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                image: DecorationImage(
                    image: NetworkImage("${StringsManager.image}$image"),
                    fit: BoxFit.fill)),
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    maxLines: 1,
                    text,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium),
                Text(description,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
