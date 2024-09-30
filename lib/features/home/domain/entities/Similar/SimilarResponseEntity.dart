import 'SimilarResultEntity.dart';

/// status_message : "Invalid API key: You must be granted a valid key."
/// success : false
/// results : [{"poster_path":"/a8spsjAbuGM5Pbp40VI4sEPB8pi.jpg"}]

class SimilarResponseEntity {
  SimilarResponseEntity({
      this.statusMessage, 
      this.success, 
      this.results,});


  String? statusMessage;
  bool? success;
  List<SimilarResultEntity>? results;

}