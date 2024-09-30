/// adult : false
/// backdrop_path : "/Asg2UUwipAdE87MxtJy7SQo08XI.jpg"
/// genre_ids : [28,14,27]
/// original_title : "The Crow"
/// overview : "Soulmates Eric and Shelly are brutally murdered when the demons of her dark past catch up with them. Given the chance to save his true love by sacrificing himself, Eric sets out to seek merciless revenge on their killers, traversing the worlds of the living and the dead to put the wrong things right."
/// poster_path : "/58QT4cPJ2u2TqWZkterDq9q4yxQ.jpg"
/// release_date : "2024-08-21"
/// title : "The Crow"

class ResultsEntity {
  ResultsEntity({
      this.backdropPath,
      this.genreIds, 
      this.originalTitle, 
      this.overview, 
      this.posterPath, 
      this.releaseDate,
    this.voteAverage,
    this.title,});

  String? backdropPath;
  List<num>? genreIds;
  String? originalTitle;
  num? voteAverage;
  String? overview;
  String? posterPath;
  String? releaseDate;
  String? title;

}