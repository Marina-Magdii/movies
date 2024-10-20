import 'package:etfarrag/core/Storage/MovieCollection.dart';
import 'package:etfarrag/features/browser/presentation/widgets/CategoryDetailsItem.dart';
import 'package:etfarrag/features/home/domain/entities/Popular/ResultsEntity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../core/StringsManager.dart';

class WatchlistView extends StatefulWidget {
  static const String routeName = "Watchlist";
  const WatchlistView({super.key});

  @override
  State<WatchlistView> createState() => _WatchlistViewState();
}

class _WatchlistViewState extends State<WatchlistView> {
  @override
  void initState() {
    super.initState();
    Provider.of<MovieCollection>(context, listen: false).getWishlist();
  }

  @override
  Widget build(BuildContext context) {
     MovieCollection provider =  Provider.of<MovieCollection>(context);
     return Provider(
      create: (BuildContext context) { Provider.of<MovieCollection>(context); },
      child: Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: REdgeInsets.all(10.0),
              child: const Text(
                StringsManager.wishListView,
              ),
            ),
          ),
          body: FutureBuilder<List<ResultsEntity>>(
            future: provider.getWishlist(),
            builder: (BuildContext context,
                AsyncSnapshot<List<ResultsEntity>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Column(
                  children: [
                    Text(
                      snapshot.error.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {});
                        },
                        child: const Text(StringsManager.tryAgain))
                  ],
                );
              }
              List<ResultsEntity> movies = snapshot.data ?? [];
              return ListView.builder(
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return CategoryDetailsItem(
                    image: movies[index].posterPath ?? "",
                    text: movies[index].title ?? "",
                    description: movies[index].overview ?? "",
                  );
                },
              );
            },
          )),
    );
  }
}
