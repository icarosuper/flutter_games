import 'package:http/http.dart';

class HttpClient extends BaseClient {
  // Code for making the class a singleton
  HttpClient._internal();

  factory HttpClient() {
    return _instance;
  }

  static final HttpClient _instance = HttpClient._internal();
  // end of singleton code

  static final _client = Client();

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    return _client.send(request);
  }

}