import 'package:etfarrag/features/browser/presentation/pages/browser_view.dart';
import 'package:etfarrag/features/home/presentation/pages/home_view.dart';
import 'package:etfarrag/features/search/presentation/pages/search_view.dart';
import 'package:etfarrag/features/watchlist/presentation/pages/watchlist_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  static const String routeName= "HomePage";
   const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget>tabs=[
    HomeView(),
    SearchView(),
    BrowserView(),
    WatchlistView()
  ];

  int currentIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(
          color: Colors.black,
          fontSize: 10.sp
        ),
        items: [
          BottomNavigationBarItem(
            label: "Home",
            backgroundColor: Colors.yellow,
              icon: SvgPicture.asset("assets/images/Home icon.svg",color: Colors.black,height: 25.h,),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.yellow,
            label: "Search",
              icon: SvgPicture.asset("assets/images/search-2.svg",color: Colors.black,height: 25.h)),
          BottomNavigationBarItem(
            backgroundColor: Colors.yellow,
            label: "Browser",
              icon: SvgPicture.asset("assets/images/Icon material-movie.svg",color: Colors.black,height: 25.h)),
          BottomNavigationBarItem(
            backgroundColor: Colors.yellow,
            label: "Wishlist",
              icon: SvgPicture.asset("assets/images/Icon ionic-md-bookmarks.svg",color: Colors.black,height: 25.h)),
        ],
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },
      ),
    );
  }
}
