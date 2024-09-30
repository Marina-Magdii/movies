import 'package:etfarrag/features/search/domain/entities/ResultEntity.dart';

/// adult : false
/// backdrop_path : "/3bsCC10rhLaL60D2GBqcJguEaJN.jpg"
/// genre_ids : [18]
/// id : 137599
/// original_language : "en"
/// original_title : "Action"
/// overview : "Bruno is an idealistic hero who questions the meaning of life in this confusing and sometimes hallucinatory erotic drama. After a night in jail, he is gang-raped by punk rockers in a garbage dump. He later saves an old man who believes he is Garibaldi and a woman he believes is Ophelia. Bruno watches helplessly as she later jumps from a window."
/// popularity : 2.592
/// poster_path : "/9VhkxeP1uX39skDb1l4KEn8EsKS.jpg"
/// release_date : "1980-01-04"
/// title : "Action"
/// video : false
/// vote_average : 4.6
/// vote_count : 15

class ResultModel {
  ResultModel({
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

  ResultModel.fromJson(dynamic json) {
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
ResultEntity toResultEntity(){
    return ResultEntity(
      title: title,
      originalTitle: originalTitle,
      overview: overview,
      posterPath: posterPath,
      releaseDate: releaseDate
    );
}
}