import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:etfarrag/features/home/domain/entities/Popular/ResultsEntity.dart';
import 'package:flutter/cupertino.dart';

class MovieCollection {
  static CollectionReference<ResultsEntity> getCollection() {
    var reference = FirebaseFirestore.instance
        .collection(ResultsEntity.collectionName).withConverter(
            fromFirestore: (snapshot, options) => ResultsEntity.fromFireStore(snapshot.data()),
            toFirestore: (resultEntity, options)=> resultEntity.toFireStore()
            );
    return reference;
  }

  static Future<void> addToWish(ResultsEntity movie) async {
    var collections = getCollection();
    var doc = collections.doc();
    var entity = await doc.set(ResultsEntity(
      id: movie.id,
      title: movie.title,
      overview: movie.overview,
      releaseDate: movie.releaseDate,
      posterPath: movie.posterPath,
      voteAverage: movie.voteAverage,
    ));
    return entity;
  }

  List<ResultsEntity> movies = [];
  Future<List<ResultsEntity>> getWishlist() async {
    var collection = getCollection();
    var snapshot = await collection.get();
    movies = snapshot.docs.map((e) => e.data()).toList();
    return movies;
  }
}
