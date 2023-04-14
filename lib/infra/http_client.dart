import 'package:http/http.dart';

class HttpClient extends BaseClient {
  static final _client = Client();

  HttpClient._internal();
  factory HttpClient() => _instance;
  static final HttpClient _instance = HttpClient._internal();

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    return _client.send(request);
  }
}
