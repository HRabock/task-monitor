import 'package:http/http.dart' as http;

class WebClient {
  Map<String, String>? headers = {"Authorization": ""};

  WebClient({Map<String, String>? headers}) {
    this.headers = headers ?? this.headers;
  }

  Future<String> get(String url, {Map<String, String>? headers}) async {
    var header = headers ?? this.headers;
    http.Response resp = await http.get(Uri.parse(url), headers: header);
    return resp.body;
  }
}
