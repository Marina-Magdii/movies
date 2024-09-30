import 'package:etfarrag/core/ApiManager/ApiManager.dart';
import 'package:etfarrag/features/browser/presentation/pages/browser_view.dart';
import 'package:etfarrag/features/home/presentation/pages/DetailsScreen.dart';
import 'package:etfarrag/features/home/presentation/pages/home_view.dart';
import 'package:etfarrag/features/search/presentation/pages/search_view.dart';
import 'package:etfarrag/features/watchlist/presentation/pages/watchlist_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/DI/DI.dart';
import 'features/home/presentation/pages/home_page.dart';

void main() {
  configureDependencies();
  ApiManager.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(412, 892),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomePage.routeName,
        routes: {
          HomeView.routeName:(_)=>HomeView(),
          SearchView.routeName:(_)=>SearchView(),
          BrowserView.routeName:(_)=>BrowserView(),
          WatchlistView.routeName:(_)=>WatchlistView(),
          DetailsScreen.routeName:(_)=>DetailsScreen()
        },
        title: 'Etfarrag',
        home: HomePage(),
        ),
    );
  }
}

