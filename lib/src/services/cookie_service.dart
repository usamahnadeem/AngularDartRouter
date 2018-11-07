import 'dart:async';
import 'dart:html';

import 'package:angular/core.dart';
import 'package:cooky/cooky.dart' as cookie;
import 'package:goodRouting/configuration.dart';

@Injectable()
class CookieService {
  String serviceURL = "$backendUrl/api/user";
  String logoutURL = "$backendUrl/logout";

  Future<String> getUser() async {
    print(cookie.get("XSRF-TOKEN"));
    print(cookie.get("JSESSIONID"));
    print(document.cookie);
    var resp =
    await HttpRequest.request(serviceURL, method: 'GET', requestHeaders: {
      'Accept': 'application/json; charset=UTF-8',
      'X-XSSF-TOKEN': cookie.get("XSRF-TOKEN")
    });
    return resp.responseText;
  }

  Future<void> logout() async {
    await HttpRequest.request(logoutURL, method: 'POST', requestHeaders: {
      'Accept': 'application/json; charset=UTF-8',
      'X-XSSF-TOKEN': cookie.get("XSRF-TOKEN")
    });
  }
}
