import 'package:http/http.dart' as http;

class ApiCallRepository {
  ApiCallRepository();

  Future<dynamic> getData(String url) async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"))
        .timeout(const Duration(seconds: 20));
    // final response = await networkClient.get('/v2/fitstore/user/address');

    if (response.statusCode == 200) {
      return response.body;
    }
    return response;
  }
}
