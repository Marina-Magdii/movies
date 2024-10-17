import 'package:etfarrag/features/home/data/models/Popular/ResultsModel.dart';
import 'package:etfarrag/features/home/domain/entities/NewReleases/NewReleasesEntity.dart';
import 'Dates.dart';

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
        results?.add(ResultsModel.fromJson(v));
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
  List<ResultsModel>? results;
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
      results: results!.map((e) => e.toResultsEntity()).toList(),
    );
}
}