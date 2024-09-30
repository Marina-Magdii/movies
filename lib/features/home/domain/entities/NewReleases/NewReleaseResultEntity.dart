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

class NewReleaseResultEntity {
  NewReleaseResultEntity({
      this.backdropPath,
      this.genreIds,
      this.id,
      this.originalTitle,
      this.overview,
      this.posterPath,
      this.releaseDate,
      this.title,
      this.voteAverage,
      });

  String? backdropPath;
  List<num>? genreIds;
  num? id;
  String? originalTitle;
  String? overview;
  String? posterPath;
  String? releaseDate;
  String? title;
  num? voteAverage;


}