import 'package:etfarrag/features/home/domain/entities/NewReleases/NewReleaseResultEntity.dart';
import 'package:etfarrag/features/home/domain/entities/Popular/ResultsEntity.dart';

/// adult : false
/// backdrop_path : "/blqiNjJefmY10Wx6y2vgJJWljJj.jpg"
/// genre_ids : [28,53]
/// id : 949484
/// original_language : "en"
/// original_title : "Hounds of War"
/// overview : "After a mission goes wrong, only one of a group of mercenaries is left alive to avenge his fallen brothers."
/// popularity : 973.295
/// poster_path : "/lRBT73EWsiQPuqK3YS3BnBW0Zwi.jpg"
/// release_date : "2024-08-29"
/// title : "Hounds of War"
/// video : false
/// vote_average : 6.314
/// vote_count : 42

class NewReleasesResultsModel {
  NewReleasesResultsModel({
      this.adult, 
      this.backdropPath, 
      this.genreIds, 
      this.id, 
      this.originalLanguage, 
      this.originalTitle, 
      this.overview, 
      this.popularity, 
      this.posterPath, 
      this.releaseDate, 
      this.title, 
      this.video, 
      this.voteAverage, 
      this.voteCount,});

  NewReleasesResultsModel.fromJson(dynamic json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<num>() : [];
    id = json['id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }
  bool? adult;
  String? backdropPath;
  List<num>? genreIds;
  num? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  num? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  num? voteAverage;
  num? voteCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = adult;
    map['backdrop_path'] = backdropPath;
    map['genre_ids'] = genreIds;
    map['id'] = id;
    map['original_language'] = originalLanguage;
    map['original_title'] = originalTitle;
    map['overview'] = overview;
    map['popularity'] = popularity;
    map['poster_path'] = posterPath;
    map['release_date'] = releaseDate;
    map['title'] = title;
    map['video'] = video;
    map['vote_average'] = voteAverage;
    map['vote_count'] = voteCount;
    return map;
  }
NewReleaseResultEntity toResultEntity(){
    return NewReleaseResultEntity(
      id: id,
      voteAverage: voteAverage,
      releaseDate: releaseDate,
      posterPath: posterPath,
      overview: overview,
      originalTitle: originalTitle,
      genreIds: genreIds,
      backdropPath: backdropPath,
      title: title
    );
}
}