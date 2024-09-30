import 'package:etfarrag/features/home/domain/entities/NewReleases/NewReleasesEntity.dart';

import 'Dates.dart';
import 'NewReleaseResultModel.dart';

/// dates : {"maximum":"2024-10-23","minimum":"2024-10-02"}
/// page : 1
/// status_code : 7
/// status_message : "Invalid API key: You must be granted a valid key."
/// success : false
/// results : [{"adult":false,"backdrop_path":"/blqiNjJefmY10Wx6y2vgJJWljJj.jpg","genre_ids":[28,53],"id":949484,"original_language":"en","original_title":"Hounds of War","overview":"After a mission goes wrong, only one of a group of mercenaries is left alive to avenge his fallen brothers.","popularity":973.295,"poster_path":"/lRBT73EWsiQPuqK3YS3BnBW0Zwi.jpg","release_date":"2024-08-29","title":"Hounds of War","video":false,"vote_average":6.314,"vote_count":42},{"adult":false,"backdrop_path":"/7h6TqPB3ESmjuVbxCxAeB1c9OB1.jpg","genre_ids":[18,27,878],"id":933260,"original_language":"en","original_title":"The Substance","overview":"A fading celebrity decides to use a black market drug, a cell-replicating substance that temporarily creates a younger, better version of herself.","popularity":818.45,"poster_path":"/lqoMzCcZYEFK729d6qzt349fB4o.jpg","release_date":"2024-09-07","title":"The Substance","video":false,"vote_average":7.2,"vote_count":134},{"adult":false,"backdrop_path":"/sjC29cgm4qZAnpOJQbYKCxDCcra.jpg","genre_ids":[27,878,53],"id":1062215,"original_language":"en","original_title":"Afraid","overview":"Curtis Pike and his family are selected to test a new home device: a digital assistant called AIA. AIA observes the family's behaviors and begins to anticipate their needs. And she can – and will – make sure nothing – and no one – gets in her family's way.","popularity":784.491,"poster_path":"/gUREuXCnJLVHsvKXDH9fgIcfM6e.jpg","release_date":"2024-08-28","title":"Afraid","video":false,"vote_average":6.4,"vote_count":130},{"adult":false,"backdrop_path":"/tAwfoDyKiYa4KQdUp3DTMrEs4En.jpg","genre_ids":[16,878,12,10751],"id":698687,"original_language":"en","original_title":"Transformers One","overview":"The untold origin story of Optimus Prime and Megatron, better known as sworn enemies, but once were friends bonded like brothers who changed the fate of Cybertron forever.","popularity":668.25,"poster_path":"/qbkAqmmEIZfrCO8ZQAuIuVMlWoV.jpg","release_date":"2024-09-11","title":"Transformers One","video":false,"vote_average":7.279,"vote_count":68},{"adult":false,"backdrop_path":"/62zw627mH74rng9zc4tFfaR54KW.jpg","genre_ids":[16,878,10751],"id":1184918,"original_language":"en","original_title":"The Wild Robot","overview":"After a shipwreck, an intelligent robot called Roz is stranded on an uninhabited island. To survive the harsh environment, Roz bonds with the island's animals and cares for an orphaned baby goose.","popularity":623.362,"poster_path":"/hn4fOpFlbak5ruxkdrmdijs38Yl.jpg","release_date":"2024-09-12","title":"The Wild Robot","video":false,"vote_average":7.286,"vote_count":35},{"adult":false,"backdrop_path":"/hdFIdXwS8FSN2wIsuotjW1mshI0.jpg","genre_ids":[16,35,12,10751],"id":831815,"original_language":"en","original_title":"Saving Bikini Bottom: The Sandy Cheeks Movie","overview":"When Bikini Bottom is scooped from the ocean, scientific squirrel Sandy Cheeks and her pal SpongeBob SquarePants saddle up for Texas to save their town.","popularity":570.099,"poster_path":"/30YnfZdMNIV7noWLdvmcJS0cbnQ.jpg","release_date":"2024-10-18","title":"Saving Bikini Bottom: The Sandy Cheeks Movie","video":false,"vote_average":0.0,"vote_count":0},{"adult":false,"backdrop_path":"/9juRmk8QjcsUcbrevVu5t8VZy5G.jpg","genre_ids":[28,12,80,53],"id":923667,"original_language":"cn","original_title":"九龍城寨之圍城","overview":"In 1980s Hong Kong, troubled youth Chan Lok-kwun accidentally enters the notorious Kowloon Walled City. Lok-kwun, a refugee from the mainland, struggles to survive by participating in underground fighting rings. He seeks to buy a fake ID to improve his life but is betrayed by Mr. Big, a local crime syndicate boss. In a desperate move, Lok-kwun steals drugs from Mr. Big and flees to the Walled City, where he encounters Cyclone, the local crime lord who rules the area with a mix of authority and compassion.","popularity":394.557,"poster_path":"/PywbVPeIhBFc33QXktnhMaysmL.jpg","release_date":"2024-04-23","title":"Twilight of the Warriors: Walled In","video":false,"vote_average":6.613,"vote_count":160},{"adult":false,"backdrop_path":"/vJk9DOLgP23jO5mBnPHE93MFgYu.jpg","genre_ids":[12,10751,14,35],"id":826510,"original_language":"en","original_title":"Harold and the Purple Crayon","overview":"Inside of his book, adventurous Harold can make anything come to life simply by drawing it. After he grows up and draws himself off the book's pages and into the physical world, Harold finds he has a lot to learn about real life.","popularity":347.898,"poster_path":"/dEsuQOZwdaFAVL26RjgjwGl9j7m.jpg","release_date":"2024-07-31","title":"Harold and the Purple Crayon","video":false,"vote_average":7.1,"vote_count":132},{"adult":false,"backdrop_path":"/tCQfubckzzcuCbsGugkpLhfjS5z.jpg","genre_ids":[28,53,80],"id":970347,"original_language":"en","original_title":"The Killer","overview":"Zee is a feared contract killer known as \"the Queen of the Dead,\" but when she refuses to murder a young blind woman, she finds herself hunted both by criminal colleagues and a determined police detective.","popularity":376.961,"poster_path":"/6PCnxKZZIVRanWb710pNpYVkCSw.jpg","release_date":"2024-08-22","title":"The Killer","video":false,"vote_average":6.63,"vote_count":231},{"adult":false,"backdrop_path":"/t3LicFpYHeYpwqm7L5wDpd22hL5.jpg","genre_ids":[12,14],"id":671,"original_language":"en","original_title":"Harry Potter and the Philosopher's Stone","overview":"Harry Potter has lived under the stairs at his aunt and uncle's house his whole life. But on his 11th birthday, he learns he's a powerful wizard—with a place waiting for him at the Hogwarts School of Witchcraft and Wizardry. As he learns to harness his newfound powers with the help of the school's kindly headmaster, Harry uncovers the truth about his parents' deaths—and about the villain who's to blame.","popularity":265.253,"poster_path":"/wuMc08IPKEatf9rnMNXvIDxqP4W.jpg","release_date":"2001-11-16","title":"Harry Potter and the Philosopher's Stone","video":false,"vote_average":7.913,"vote_count":27106},{"adult":false,"backdrop_path":"/h9YlRHAZWOWtGonllmj6JJg1FrE.jpg","genre_ids":[28,12,16,10751,14],"id":588648,"original_language":"zh","original_title":"Dragonkeeper","overview":"Set in Han Imperial China, the plot follows the adventures of enslaved girl Ping with ancient dragon Long Danzi. Dragons had been banished from the kingdom. Ping, an orphan, finds one of the last remaining dragon eggs. Palace guards force Ping to run away in order to return the dragon egg to the ocean and save all dragons from extinction. Ping discovers that she is a true Dragonkeeper.","popularity":335.768,"poster_path":"/ggZGnJLzO3BTu7ysuuIzou3Oex5.jpg","release_date":"2024-04-11","title":"Dragonkeeper","video":false,"vote_average":7.245,"vote_count":106},{"adult":false,"backdrop_path":"/4yrOyO3N55XazHQXXYoqiiPQd40.jpg","genre_ids":[27],"id":938614,"original_language":"en","original_title":"Late Night with the Devil","overview":"A live broadcast of a late-night talk show in 1977 goes horribly wrong, unleashing evil into the nation's living rooms.","popularity":223.432,"poster_path":"/mu8LRWT9GHkfiyHm7kgxT6YNvMW.jpg","release_date":"2024-03-19","title":"Late Night with the Devil","video":false,"vote_average":7.315,"vote_count":865},{"adult":false,"backdrop_path":"/en3GU5uGkKaYmSyetHV4csHHiH3.jpg","genre_ids":[10752,28,18],"id":929590,"original_language":"en","original_title":"Civil War","overview":"In the near future, a group of war journalists attempt to survive while reporting the truth as the United States stands on the brink of civil war.","popularity":287.264,"poster_path":"/sh7Rg8Er3tFcN9BpKIPOMvALgZd.jpg","release_date":"2024-04-10","title":"Civil War","video":false,"vote_average":6.932,"vote_count":2448},{"adult":false,"backdrop_path":"/yHzyPJrVqlTySQ9mc379yxrLBYQ.jpg","genre_ids":[12,14],"id":672,"original_language":"en","original_title":"Harry Potter and the Chamber of Secrets","overview":"Cars fly, trees fight back, and a mysterious house-elf comes to warn Harry Potter at the start of his second year at Hogwarts. Adventure and danger await when bloody writing on a wall announces: The Chamber Of Secrets Has Been Opened. To save Hogwarts will require all of Harry, Ron and Hermione’s magical abilities and courage.","popularity":193.597,"poster_path":"/sdEOH0992YZ0QSxgXNIGLq1ToUi.jpg","release_date":"2002-11-13","title":"Harry Potter and the Chamber of Secrets","video":false,"vote_average":7.72,"vote_count":21698},{"adult":false,"backdrop_path":"/pnhUBMJFaJzk9AO3h1akhzj3syu.jpg","genre_ids":[18,80,53],"id":889737,"original_language":"en","original_title":"Joker: Folie à Deux","overview":"While struggling with his dual identity, Arthur Fleck not only stumbles upon true love, but also finds the music that's always been inside him.","popularity":257.768,"poster_path":"/4zMTQcQOEygyqtBuRn2zgVgGrY7.jpg","release_date":"2024-10-01","title":"Joker: Folie à Deux","video":false,"vote_average":6.8,"vote_count":6},{"adult":false,"backdrop_path":"/3V4kLQg0kSqPLctI5ziYWabAZYF.jpg","genre_ids":[28,878,12],"id":912649,"original_language":"en","original_title":"Venom: The Last Dance","overview":"Eddie and Venom are on the run. Hunted by both of their worlds and with the net closing in, the duo are forced into a devastating decision that will bring the curtains down on Venom and Eddie's last dance.","popularity":218.347,"poster_path":"/aosm8NMQ3UyoBVpSxyimorCQykC.jpg","release_date":"2024-10-23","title":"Venom: The Last Dance","video":false,"vote_average":0.0,"vote_count":0},{"adult":false,"backdrop_path":"/Ahn9zBmRImn0uJ17IuQugjywQZB.jpg","genre_ids":[12,10751],"id":959098,"original_language":"fr","original_title":"Le Dernier Jaguar","overview":"Grown up in the Amazon rainforest, Autumn lives with Hope, the cute baby jaguar she adopted. However, a circumstance forces Autumn to return to New York. Autumn goes back into the jungle to save Hope from grave danger.","popularity":143.077,"poster_path":"/ocHu00nOZzK0m9BsFdrFg3SglS0.jpg","release_date":"2024-02-01","title":"Autumn and the Black Jaguar","video":false,"vote_average":6.654,"vote_count":81},{"adult":false,"backdrop_path":"/1Msi0fXdUhmvzTpDYXKdVlmWBaT.jpg","genre_ids":[878,18],"id":592831,"original_language":"en","original_title":"Megalopolis","overview":"Genius artist Cesar Catilina seeks to leap the City of New Rome into a utopian, idealistic future, while his opposition, Mayor Franklyn Cicero, remains committed to a regressive status quo, perpetuating greed, special interests, and partisan warfare. Torn between them is socialite Julia Cicero, the mayor’s daughter, whose love for Cesar has divided her loyalties, forcing her to discover what she truly believes humanity deserves.","popularity":168.917,"poster_path":"/yZWHpr5HlKTDlPf46UH8RSlEOu9.jpg","release_date":"2024-09-25","title":"Megalopolis","video":false,"vote_average":5.2,"vote_count":26},{"adult":false,"backdrop_path":"/suaEOtk1N1sgg2MTM7oZd2cfVp3.jpg","genre_ids":[53,80],"id":680,"original_language":"en","original_title":"Pulp Fiction","overview":"A burger-loving hit man, his philosophical partner, a drug-addled gangster's moll and a washed-up boxer converge in this sprawling, comedic crime caper. Their adventures unfurl in three stories that ingeniously trip back and forth in time.","popularity":99.434,"poster_path":"/d5iIlFn5s0ImszYzBPb8JPIfbXD.jpg","release_date":"1994-09-10","title":"Pulp Fiction","video":false,"vote_average":8.488,"vote_count":27679},{"adult":false,"backdrop_path":"/b6DU3kBmicMbpNvvkqf1cHaceMF.jpg","genre_ids":[27,18],"id":814889,"original_language":"en","original_title":"Never Let Go","overview":"As an evil takes over the world beyond their front doorstep, the only protection for a mother and her twin sons is their house and their family’s protective bond.","popularity":111.273,"poster_path":"/3EpZ2ksjijmdr8BhISP03PYzNFW.jpg","release_date":"2024-09-18","title":"Never Let Go","video":false,"vote_average":5.4,"vote_count":16}]
/// total_pages : 73
/// total_results : 1442

class NewReleaseResponse {
  NewReleaseResponse({
      this.dates, 
      this.page, 
      this.statusCode, 
      this.statusMessage, 
      this.success, 
      this.results, 
      this.totalPages, 
      this.totalResults,});

  NewReleaseResponse.fromJson(dynamic json) {
    dates = json['dates'] != null ? Dates.fromJson(json['dates']) : null;
    page = json['page'];
    statusCode = json['status_code'];
    statusMessage = json['status_message'];
    success = json['success'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(NewReleasesResultsModel.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }
  Dates? dates;
  num? page;
  num? statusCode;
  String? statusMessage;
  bool? success;
  List<NewReleasesResultsModel>? results;
  num? totalPages;
  num? totalResults;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (dates != null) {
      map['dates'] = dates?.toJson();
    }
    map['page'] = page;
    map['status_code'] = statusCode;
    map['status_message'] = statusMessage;
    map['success'] = success;
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    map['total_pages'] = totalPages;
    map['total_results'] = totalResults;
    return map;
  }
NewReleasesEntity toNewReleaseEntity(){
    return NewReleasesEntity(
      success: success,
      statusMessage: statusMessage,
      results: results?.map((e) => e.toResultEntity()).toList(),
    );
}
}