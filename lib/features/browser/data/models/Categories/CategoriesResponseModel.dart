import 'package:etfarrag/features/browser/domain/entities/Categories/CategoriesResponseEntity.dart';

import 'GenreModel.dart';

/// status_code : 7
/// status_message : "Invalid API key: You must be granted a valid key."
/// success : false
/// genres : [{"id":28,"name":"Action"},{"id":12,"name":"Adventure"},{"id":16,"name":"Animation"},{"id":35,"name":"Comedy"},{"id":80,"name":"Crime"},{"id":99,"name":"Documentary"},{"id":18,"name":"Drama"},{"id":10751,"name":"Family"},{"id":14,"name":"Fantasy"},{"id":36,"name":"History"},{"id":27,"name":"Horror"},{"id":10402,"name":"Music"},{"id":9648,"name":"Mystery"},{"id":10749,"name":"Romance"},{"id":878,"name":"Science Fiction"},{"id":10770,"name":"TV Movie"},{"id":53,"name":"Thriller"},{"id":10752,"name":"War"},{"id":37,"name":"Western"}]

class CategoriesResponseModel {
  CategoriesResponseModel({
      this.statusCode, 
      this.statusMessage, 
      this.success, 
      this.genres,});

  CategoriesResponseModel.fromJson(dynamic json) {
    statusCode = json['status_code'];
    statusMessage = json['status_message'];
    success = json['success'];
    if (json['genres'] != null) {
      genres = [];
      json['genres'].forEach((v) {
        genres?.add(GenreModel.fromJson(v));
      });
    }
  }
  num? statusCode;
  String? statusMessage;
  bool? success;
  List<GenreModel>? genres;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status_code'] = statusCode;
    map['status_message'] = statusMessage;
    map['success'] = success;
    if (genres != null) {
      map['genres'] = genres?.map((v) => v.toJson()).toList();
    }
    return map;
  }
CategoriesResponseEntity toEntity(){
    return CategoriesResponseEntity(
      success: success,
      statusMessage: statusMessage,
      genres: genres?.map((e) => e.toEntity()).toList()
    );
}
}