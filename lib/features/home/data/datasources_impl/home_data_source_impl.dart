import 'package:getjoke/core/network/http_request/api_service/api_service.dart';
import 'package:getjoke/features/home/data/datasources/home_data_source.dart';
import 'package:getjoke/features/home/data/models/joke_response.dart';
import 'package:getjoke/features/home/data/requests/submit_joke_request.dart';

class HomeDataSourceImpl implements HomeDataSoucre {
  @override
  Future<JokeResponse> getJoke(Map<String, dynamic>? queryParams) async {
    final res =
        await ApiService().request(SubmitJokeRequest(queryParams: queryParams));
    return JokeResponse.fromJson(res);
  }
}
