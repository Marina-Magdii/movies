import 'package:etfarrag/features/home/domain/entities/Popular/ResultsEntity.dart';
/// status_message : "Invalid API key: You must be granted a valid key."
/// success : false
/// results : [{"genre_ids":[28,35,878],"id":533535,"overview":"A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine.","poster_path":"/8cdWjvZQUExUUTzyp4t6EDMubfO.jpg","release_date":"2024-07-24","title":"Deadpool & Wolverine","vote_average":7.667}]

class CategoryDetailsResponseEntity {
  CategoryDetailsResponseEntity({
      this.statusMessage, 
      this.success, 
      this.results,});

  String? statusMessage;
  bool? success;
  List<ResultsEntity>? results;


}