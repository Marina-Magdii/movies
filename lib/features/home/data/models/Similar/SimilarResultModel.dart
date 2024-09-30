import 'package:etfarrag/features/home/domain/entities/Similar/SimilarResultEntity.dart';

/// adult : false
/// backdrop_path : "/8B9MTsmeKobYCR3GjGjubYw58MH.jpg"
/// genre_ids : [18,36]
/// id : 879553
/// original_language : "en"
/// original_title : "Be Still"
/// overview : "Already a successful portrait photographer, Hannah sets to reinvent this art form. Abandoning herself to a creative process that might easily be mistaken for madness, she's soon visited by mirror images of herself, as well as her daughter's ghost. Inspired by the life of photographer Hannah Maynard (1834-1918)."
/// popularity : 1.315
/// poster_path : "/a8spsjAbuGM5Pbp40VI4sEPB8pi.jpg"
/// release_date : "2021-10-06"
/// title : "Be Still"
/// video : false
/// vote_average : 0.0
/// vote_count : 0

class SimilarResultModel {
  SimilarResultModel({
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

  SimilarResultModel.fromJson(dynamic json) {
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
  SimilarResultEntity toEntity(){
    return SimilarResultEntity(
      posterPath: posterPath
    );
  }
}