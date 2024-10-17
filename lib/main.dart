import 'package:etfarrag/core/ApiManager/ApiManager.dart';
import 'package:etfarrag/core/AppTheme.dart';
import 'package:etfarrag/features/browser/presentation/pages/CategoriesListView.dart';
import 'package:etfarrag/features/browser/presentation/pages/browser_view.dart';
import 'package:etfarrag/features/home/presentation/pages/DetailsScreen.dart';
import 'package:etfarrag/features/home/presentation/pages/home_view.dart';
import 'package:etfarrag/features/search/presentation/pages/search_view.dart';
import 'package:etfarrag/features/watchlist/presentation/pages/watchlist_view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/DI/DI.dart';
import 'features/home/presentation/pages/home_page.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();
  ApiManager.init();
  await ScreenUtil.ensureScreenSize();

  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      designSize: const Size(412, 892),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: HomePage.routeName,
          routes: {
            HomeView.routeName:(_)=>const HomeView(),
            SearchView.routeName:(_)=>SearchView(),
            BrowserView.routeName:(_)=>const BrowserView(),
            WatchlistView.routeName:(_)=>const WatchlistView(),
            DetailsScreen.routeName:(_)=>const DetailsScreen(),
            CategoryListView.routeName:(_)=>const CategoryListView(),
          },
          title: 'Etfarrag',
          home: const HomePage(),
          theme: AppTheme.appTheme,
        );
      },
    );
  }
}

