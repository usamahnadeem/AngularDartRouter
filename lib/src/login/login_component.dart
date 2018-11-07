import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';




@Component(
  selector: 'login',
  templateUrl: './login_component.html',
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    materialInputDirectives,
    MaterialButtonComponent,
    NgFor,
    NgIf,
  ],
//  providers: [const ClassProvider(TodoListService)],
)
class LoginComponent implements OnInit {

  final Router _router;

  LoginComponent(this._router);

  String username;
  String password;

  goToHome() {
    _router.navigate("home");
  }


  @override
  Future<Null> ngOnInit() async {

  }

  void add() {

  }
}
