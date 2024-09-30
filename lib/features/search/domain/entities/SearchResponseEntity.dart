import 'ResultEntity.dart';

/// status_message : "Invalid API key: You must be granted a valid key."
/// success : false
/// results : [{"original_title":"Action","overview":"Bruno is an idealistic hero who questions the meaning of life in this confusing and sometimes hallucinatory erotic drama. After a night in jail, he is gang-raped by punk rockers in a garbage dump. He later saves an old man who believes he is Garibaldi and a woman he believes is Ophelia. Bruno watches helplessly as she later jumps from a window.","poster_path":"/9VhkxeP1uX39skDb1l4KEn8EsKS.jpg","release_date":"1980-01-04","title":"Action"}]

class SearchResponseEntity {
  SearchResponseEntity({
      this.statusMessage, 
      this.success, 
      this.results,});

  String? statusMessage;
  bool? success;
  List<ResultEntity>? results;


}