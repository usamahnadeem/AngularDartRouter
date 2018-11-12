import 'dart:async';
import 'dart:html';
import 'package:http/http.dart';
import 'package:angular/core.dart';
import 'package:cooky/cooky.dart' as cookie;
import 'package:goodRouting/configuration.dart';

@Injectable()
class CookieService {
  String serviceURL = "$backendUrl/api/user";
  String logoutURL = "$backendUrl/logout";
  String authenticationApi = "https://dev-281883.oktapreview.com/oauth2/v1/authorize?client_id=";
  Client _http;
  String clientId = "0oahav27ahSG134JV0h7";

//    print(cookie.get("XSRF-TOKEN"));
//    print(cookie.get("JSESSIONID"));

  Future oktaActivate(clientId) async {

  }



  Future<bool> login(String username, String password) async {
    final loginRequest = await _http.post(
      '$authenticationApi',
      headers: {'Content-Type': 'application/json'},
      body: '{"username": "$username", "password": "$password"}',
    );
    print("LoginRequest $loginRequest");
//    if (loginRequest.statusCode != 200) return false;
  }

}