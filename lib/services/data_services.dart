import 'package:http/http.dart' as http;

class DataServies{
  String baseUrl = "http://mark/bslmeiyu.com/api";
  getInfo() async {
    var apiUrl= '/getplaces';
    http.Response res = await http.get(Uri.parse(baseUrl+apiUrl));
  }
}