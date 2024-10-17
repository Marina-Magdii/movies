import 'package:etfarrag/features/home/domain/entities/Popular/ResultsEntity.dart';
/// status_message : "Invalid API key: You must be granted a valid key."
/// success : false
/// results : [{"poster_path":"/9cqNxx0GxF0bflZmeSMuL5tnGzr.jpg","title":"The Shawshank Redemption"}]

class RecommendedResponseEntity {
  RecommendedResponseEntity({
      this.statusMessage, 
      this.success, 
      this.results,});

  String? statusMessage;
  bool? success;
  List<ResultsEntity>? results;


}