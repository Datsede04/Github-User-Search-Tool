import 'package:http/http.dart' as http;

class Github {
  final String username;

  var url = Uri.https('www.api.github.com', '/users/$username') as String;

  Github(this.username);

  Future<http.Response> fetchUser() async {
    return await http.get(url as Uri);
  }
}
