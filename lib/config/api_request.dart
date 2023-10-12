part of 'configs.dart';

class APIRequest {
  static Future<Map?> gets(String url, {Map<String, String>? headers}) async {
    try {
      var response = await http.get(
        Uri.parse(url),
        headers: headers,
      );
      DMethod.printTitle('try', response.body);
      Map responseBody = jsonDecode(response.body);
      return responseBody;
    } catch (e) {
      DMethod.printTitle('catch', e.toString());
      return null;
    }
  }

  static Future<Map?> post(String url,
      {Object? body, Map<String, String>? headers}) async {
    try {
      var response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: body,
      );
      DMethod.printTitle('try', response.body);
      Map responseBody = jsonDecode(response.body);
      return responseBody;
    } catch (e) {
      DMethod.printTitle('catch', e.toString());
      return null;
    }
  }
}
