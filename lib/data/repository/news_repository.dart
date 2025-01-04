import '../../utils/api_exceptions/exception_handler.dart';
import '../models/response/news_response.dart';
import '../models/response/response.dart';
import '../network/network_requester.dart';
import '../values/constants.dart';
import '../values/urls.dart';

class NewsRepository {
  Future<RepoResponse<NewsResponse>> getTopHeadLines(
      String countryCode, String source) async {
    final Map<String, String> query = {"apiKey": AppSecrets.apiKey};
    if (source.isNotEmpty) {
      query["sources"] = source;
    } else {
      query["country"] = countryCode;
    }
    final response = await NetworkRequester.shared.get(
      path: Urls.topHeadlines,
      query: query,
    );

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: NewsResponse.fromJson(response));
  }
}
