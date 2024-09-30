import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewReleasesItem extends StatelessWidget {
   NewReleasesItem({super.key,required this.imagePath,this.onTap});
   String? imagePath;
   void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Padding(
        padding:REdgeInsets.all(10.0),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Image.network(
                imagePath??"https://image.tmdb.org/t/p/w500/sF1U4EUQS8YHUYjNl3pMGNIQyr0.jpg"),
             Icon(Icons.bookmark_add,color: Colors.yellow,size: 35.sp,),

          ],
        ),
      ),
    );
  }
}
