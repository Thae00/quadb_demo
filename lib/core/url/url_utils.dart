class UrlUtils {
  UrlUtils._();

  ///Production///
  static String baseUrl = "https://api.tvmaze.com/search/";

  ///UAT///
//static String baseUrl = "https://elkenappbouat.elken.com/api/";

  ///QAT///
//static String baseUrl = "https://elkenappboqat.elken.com/api/";
}
class UrlMethodUtils {
  UrlMethodUtils._();

  static String shows = "https://api.tvmaze.com/search/shows?q=";
}
