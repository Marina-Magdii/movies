import 'package:etfarrag/core/Storage/MovieCollection.dart';
import 'package:etfarrag/core/StringsManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewReleasesItem extends StatefulWidget {
   NewReleasesItem({super.key,
     required this.imagePath,this.onTap,required this.onClick});
   String? imagePath;
   void Function()? onTap;
   void Function()? onClick;

  @override
  State<NewReleasesItem> createState() => _NewReleasesItemState();
}

class _NewReleasesItemState extends State<NewReleasesItem> {
   bool isSelected =false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:widget.onTap,
      child: Padding(
        padding:REdgeInsets.all(10.0),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Image.network(
                  widget.imagePath??StringsManager.defaultImage,fit: BoxFit.cover,),
            ),
             IconButton(
               padding: REdgeInsets.all(0),
               onPressed: (){
                 isSelected=!isSelected;
                 setState(()  {
                   if (isSelected){
                     widget.onClick;
                   }
                 });
               },
                 icon: Icon(isSelected?Icons.bookmark_added:Icons.bookmark_add,color: Colors.yellow,size: 35.sp,)),

          ],
        ),
      ),
    );
  }
}
