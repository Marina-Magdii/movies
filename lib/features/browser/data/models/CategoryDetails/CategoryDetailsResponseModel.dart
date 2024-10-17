import 'package:etfarrag/features/browser/domain/entities/CategoryDetails/CategoryDetailsResponseEntity.dart';
import 'package:etfarrag/features/home/data/models/Popular/ResultsModel.dart';

import 'CategoryDetailsResultModel.dart';

/// page : 1
/// status_code : 7
/// status_message : "Invalid API key: You must be granted a valid key."
/// success : false
/// results : [{"adult":false,"backdrop_path":"/yDHYTfA3R0jFYba16jBB1ef8oIt.jpg","genre_ids":[28,35,878],"id":533535,"original_language":"en","original_title":"Deadpool & Wolverine","overview":"A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine.","popularity":2691.119,"poster_path":"/8cdWjvZQUExUUTzyp4t6EDMubfO.jpg","release_date":"2024-07-24","title":"Deadpool & Wolverine","video":false,"vote_average":7.667,"vote_count":3176},{"adult":false,"backdrop_path":"/Asg2UUwipAdE87MxtJy7SQo08XI.jpg","genre_ids":[28,14,27],"id":957452,"original_language":"en","original_title":"The Crow","overview":"Soulmates Eric and Shelly are brutally murdered when the demons of her dark past catch up with them. Given the chance to save his true love by sacrificing himself, Eric sets out to seek merciless revenge on their killers, traversing the worlds of the living and the dead to put the wrong things right.","popularity":2511.914,"poster_path":"/58QT4cPJ2u2TqWZkterDq9q4yxQ.jpg","release_date":"2024-08-21","title":"The Crow","video":false,"vote_average":5.421,"vote_count":431},{"adult":false,"backdrop_path":"/lgkPzcOSnTvjeMnuFzozRO5HHw1.jpg","genre_ids":[16,10751,35,28],"id":519182,"original_language":"en","original_title":"Despicable Me 4","overview":"Gru and Lucy and their girls—Margo, Edith and Agnes—welcome a new member to the Gru family, Gru Jr., who is intent on tormenting his dad. Gru also faces a new nemesis in Maxime Le Mal and his femme fatale girlfriend Valentina, forcing the family to go on the run.","popularity":2035.095,"poster_path":"/wWba3TaojhK7NdycRhoQpsG0FaH.jpg","release_date":"2024-06-20","title":"Despicable Me 4","video":false,"vote_average":7.163,"vote_count":1780},{"adult":false,"backdrop_path":"/p5ozvmdgsmbWe0H8Xk7Rc8SCwAB.jpg","genre_ids":[16,10751,12,35,18],"id":1022789,"original_language":"en","original_title":"Inside Out 2","overview":"Teenager Riley's mind headquarters is undergoing a sudden demolition to make room for something entirely unexpected: new Emotions! Joy, Sadness, Anger, Fear and Disgust, who’ve long been running a successful operation by all accounts, aren’t sure how to feel when Anxiety shows up. And it looks like she’s not alone.","popularity":1997.834,"poster_path":"/vpnVM9B6NMmQpWeZvzLvDESb2QY.jpg","release_date":"2024-06-11","title":"Inside Out 2","video":false,"vote_average":7.645,"vote_count":3967},{"adult":false,"backdrop_path":"/zAqBIeO71BFL7bAtP5TFzVjVamy.jpg","genre_ids":[10749,18],"id":1079091,"original_language":"en","original_title":"It Ends with Us","overview":"When a woman's first love suddenly reenters her life, her relationship with a charming, but abusive neurosurgeon is upended, and she realizes she must learn to rely on her own strength to make an impossible choice for her future.","popularity":1904.562,"poster_path":"/cSMdFWmajaX4oUMLx7HEDI84GkP.jpg","release_date":"2024-08-07","title":"It Ends with Us","video":false,"vote_average":6.882,"vote_count":573},{"adult":false,"backdrop_path":"/7h6TqPB3ESmjuVbxCxAeB1c9OB1.jpg","genre_ids":[27,35,18],"id":933260,"original_language":"en","original_title":"The Substance","overview":"A fading celebrity decides to use a black market drug, a cell-replicating substance that temporarily creates a younger, better version of herself.","popularity":1233.556,"poster_path":"/lqoMzCcZYEFK729d6qzt349fB4o.jpg","release_date":"2024-09-07","title":"The Substance","video":false,"vote_average":7.193,"vote_count":166},{"adult":false,"backdrop_path":"/blqiNjJefmY10Wx6y2vgJJWljJj.jpg","genre_ids":[28,53],"id":949484,"original_language":"en","original_title":"Hounds of War","overview":"After a mission goes wrong, only one of a group of mercenaries is left alive to avenge his fallen brothers.","popularity":1222.988,"poster_path":"/lRBT73EWsiQPuqK3YS3BnBW0Zwi.jpg","release_date":"2024-08-29","title":"Hounds of War","video":false,"vote_average":6.434,"vote_count":53},{"adult":false,"backdrop_path":"/dTaqzXA1auKRUjHPQjR3u0W7Gfl.jpg","genre_ids":[9648,53],"id":840705,"original_language":"en","original_title":"Blink Twice","overview":"When tech billionaire Slater King meets cocktail waitress Frida at his fundraising gala, he invites her to join him and his friends on a dream vacation on his private island. But despite the epic setting, beautiful people, ever-flowing champagne, and late-night dance parties, Frida can sense that there’s something sinister hiding beneath the island’s lush façade.","popularity":1275.045,"poster_path":"/lZGOK0I2DJSRlEPNOAFTSNxSjDD.jpg","release_date":"2024-08-21","title":"Blink Twice","video":false,"vote_average":6.675,"vote_count":461},{"adult":false,"backdrop_path":"/62zw627mH74rng9zc4tFfaR54KW.jpg","genre_ids":[16,878,10751],"id":1184918,"original_language":"en","original_title":"The Wild Robot","overview":"After a shipwreck, an intelligent robot called Roz is stranded on an uninhabited island. To survive the harsh environment, Roz bonds with the island's animals and cares for an orphaned baby goose.","popularity":1081.711,"poster_path":"/hn4fOpFlbak5ruxkdrmdijs38Yl.jpg","release_date":"2024-09-12","title":"The Wild Robot","video":false,"vote_average":7.54,"vote_count":62},{"adult":false,"backdrop_path":"/1pbV8uC6EUYOYnPqWfrQFPdAj1O.jpg","genre_ids":[80,28,12,53,18],"id":1147710,"original_language":"ko","original_title":"하이재킹","overview":"Pilots Tae-in and Gyu-sik are set to fly to Gimpo. Under the guidance of flight attendant Ok-soon, passengers are busy boarding. However, shortly after takeoff, a homemade bomb explodes, turning the cabin into chaos.","popularity":1262.211,"poster_path":"/1ahGkWMv8Cehlf3hwCSlwJdXaej.jpg","release_date":"2024-06-21","title":"Hijack 1971","video":false,"vote_average":6.4,"vote_count":34},{"adult":false,"backdrop_path":"/A1dZ6faTjg0e6HYftBmEKujuXGQ.jpg","genre_ids":[35,14,27],"id":917496,"original_language":"en","original_title":"Beetlejuice Beetlejuice","overview":"After a family tragedy, three generations of the Deetz family return home to Winter River. Still haunted by Betelgeuse, Lydia's life is turned upside down when her teenage daughter, Astrid, accidentally opens the portal to the Afterlife.","popularity":1204.883,"poster_path":"/kKgQzkUCnQmeTPkyIwHly2t6ZFI.jpg","release_date":"2024-09-04","title":"Beetlejuice Beetlejuice","video":false,"vote_average":7.162,"vote_count":743},{"adult":false,"backdrop_path":"/mKOBdgaEFguADkJhfFslY7TYxIh.jpg","genre_ids":[28,878,35],"id":365177,"original_language":"en","original_title":"Borderlands","overview":"Returning to her home planet, an infamous bounty hunter forms an unexpected alliance with a team of unlikely heroes. Together, they battle monsters and dangerous bandits to protect a young girl who holds the key to unimaginable power.","popularity":1161.159,"poster_path":"/865DntZzOdX6rLMd405R0nFkLmL.jpg","release_date":"2024-08-07","title":"Borderlands","video":false,"vote_average":5.895,"vote_count":616},{"adult":false,"backdrop_path":"/tncbMvfV0V07UZozXdBEq4Wu9HH.jpg","genre_ids":[28,80,53,35],"id":573435,"original_language":"en","original_title":"Bad Boys: Ride or Die","overview":"After their late former Captain is framed, Lowrey and Burnett try to clear his name, only to end up on the run themselves.","popularity":1160.716,"poster_path":"/oGythE98MYleE6mZlGs5oBGkux1.jpg","release_date":"2024-06-05","title":"Bad Boys: Ride or Die","video":false,"vote_average":7.549,"vote_count":2062},{"adult":false,"backdrop_path":"/sjC29cgm4qZAnpOJQbYKCxDCcra.jpg","genre_ids":[27,878,53],"id":1062215,"original_language":"en","original_title":"Afraid","overview":"Curtis Pike and his family are selected to test a new home device: a digital assistant called AIA. AIA observes the family's behaviors and begins to anticipate their needs. And she can – and will – make sure nothing – and no one – gets in her family's way.","popularity":1042.761,"poster_path":"/gUREuXCnJLVHsvKXDH9fgIcfM6e.jpg","release_date":"2024-08-28","title":"Afraid","video":false,"vote_average":6.417,"vote_count":139},{"adult":false,"backdrop_path":"/wSZbtiFIK1fkKZdSRtn2kz2Ttfd.jpg","genre_ids":[28,35,80],"id":1139817,"original_language":"ko","original_title":"무도실무관","overview":"A talented martial artist who can't walk past a person in need unites with a probation officer to fight and prevent crime as a martial arts officer.","popularity":871.531,"poster_path":"/rEaJSXAlNfdhRpDHiNcJsoUa9qE.jpg","release_date":"2024-09-10","title":"Officer Black Belt","video":false,"vote_average":7.9,"vote_count":144},{"adult":false,"backdrop_path":"/pysPTtYmTcQBlShcxXZwfs3Zp8H.jpg","genre_ids":[878,53,27],"id":1064028,"original_language":"en","original_title":"Subservience","overview":"With his wife out sick, a struggling father brings home a lifelike AI, only to have his self-aware new help want everything her new family has to offer... Like the affection of her owner and she'll kill to get it.","popularity":763.876,"poster_path":"/gBenxR01Uy0Ev9RTIw6dVBPoyQU.jpg","release_date":"2024-08-15","title":"Subservience","video":false,"vote_average":6.433,"vote_count":134},{"adult":false,"backdrop_path":"/tAwfoDyKiYa4KQdUp3DTMrEs4En.jpg","genre_ids":[16,878,12,10751],"id":698687,"original_language":"en","original_title":"Transformers One","overview":"The untold origin story of Optimus Prime and Megatron, better known as sworn enemies, but once were friends bonded like brothers who changed the fate of Cybertron forever.","popularity":782.113,"poster_path":"/qbkAqmmEIZfrCO8ZQAuIuVMlWoV.jpg","release_date":"2024-09-11","title":"Transformers One","video":false,"vote_average":7.202,"vote_count":84},{"adult":false,"backdrop_path":"/7cDsJInZGnNC1IFQL5kgYsZSXr3.jpg","genre_ids":[28,80,18],"id":1186947,"original_language":"pt","original_title":"Bandida - A Número Um","overview":"At the age of nine, Rebeca is sold by her grandmother to the bookseller who ran Rocinha. Disputed by bicheiros and drug dealers, the community is going through changes in power. Rebeca becomes the wife of the chief drug dealer and, with the death of her partner, his successor. The electrifying trajectory of crime, violence, drugs and love of a female drug kingpin in Rocinha, Rio de Janeiro in the 1980s.","popularity":796.104,"poster_path":"/rGS8SzheANVQicNba0GCE6w1XHb.jpg","release_date":"2024-06-20","title":"Outlaw","video":false,"vote_average":6.228,"vote_count":46},{"adult":false,"backdrop_path":"/2RVcJbWFmICRDsVxRI8F5xRmRsK.jpg","genre_ids":[27,878,53],"id":762441,"original_language":"en","original_title":"A Quiet Place: Day One","overview":"As New York City is invaded by alien creatures who hunt by sound, a woman named Sam fights to survive with her cat.","popularity":673.463,"poster_path":"/hU42CRk14JuPEdqZG3AWmagiPAP.jpg","release_date":"2024-06-26","title":"A Quiet Place: Day One","video":false,"vote_average":6.799,"vote_count":1842},{"adult":false,"backdrop_path":"/hdFIdXwS8FSN2wIsuotjW1mshI0.jpg","genre_ids":[16,35,12,10751],"id":831815,"original_language":"en","original_title":"Saving Bikini Bottom: The Sandy Cheeks Movie","overview":"When Bikini Bottom is scooped from the ocean, scientific squirrel Sandy Cheeks and her pal SpongeBob SquarePants saddle up for Texas to save their town.","popularity":648.676,"poster_path":"/30YnfZdMNIV7noWLdvmcJS0cbnQ.jpg","release_date":"2024-10-18","title":"Saving Bikini Bottom: The Sandy Cheeks Movie","video":false,"vote_average":0.0,"vote_count":0}]
/// total_pages : 46270
/// total_results : 925399

class CategoryDetailsResponseModel {
  CategoryDetailsResponseModel({
      this.page, 
      this.statusCode, 
      this.statusMessage, 
      this.success, 
      this.results, 
      this.totalPages, 
      this.totalResults,});

  CategoryDetailsResponseModel.fromJson(dynamic json) {
    page = json['page'];
    statusCode = json['status_code'];
    statusMessage = json['status_message'];
    success = json['success'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(ResultsModel.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }
  num? page;
  num? statusCode;
  String? statusMessage;
  bool? success;
  List<ResultsModel>? results;
  num? totalPages;
  num? totalResults;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
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
CategoryDetailsResponseEntity toEntity (){
    return CategoryDetailsResponseEntity(
      results: results?.map((e) => e.toResultsEntity()).toList(),
      success: success,
      statusMessage: statusMessage
    );
}
}