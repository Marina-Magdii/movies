class ApiConstants {
  static const String baseUrl = "https://api.themoviedb.org";
  static const String apiKey = "64cafca5c6a014721825b917540c92f1";
  static const String popularDomain ="/3/movie/popular";
  static const String newReleaseDomain ="/3/movie/upcoming";
  static const String recommendedDomain ="/3/movie/top_rated";
  static const String categoriesDomain ="/3/genre/movie/list";
  static const String eachCategoryDomain ="/3/discover/movie";
  static String searchDomain(String query) =>"/3/search/movie?$query";
  static String similarDomain(String id) =>"/3/movie/$id/similar";
  static String detailsDomain(String id) =>"/3/movie/$id";
}
