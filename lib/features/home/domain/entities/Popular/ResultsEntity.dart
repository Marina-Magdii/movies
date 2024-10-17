class ResultsEntity {
  ResultsEntity({
    this.backdropPath,
    this.genreIds,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.voteAverage,
    this.id,
    this.title,
  });
  ResultsEntity.fromFireStore(Map<String, dynamic>? movieData) {
    overview = movieData?["overview"];
    id = movieData?["id"];
    title = movieData?["title"];
    voteAverage = movieData?['voteAverage'];
  }

  Map<String, dynamic> toFireStore() {
    return {
      "id": id,
      "title": title,
      "overview": overview,
      "voteAverage": voteAverage
    };
  }

  static const String collectionName = "My Movies";
  String? backdropPath;
  num? id;
  List<num>? genreIds;
  String? originalTitle;
  num? voteAverage;
  String? overview;
  String? posterPath;
  String? releaseDate;
  String? title;
}
