import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';



@Component(
  selector: 'login',
  templateUrl: './login_component.html',
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
  ],
//  providers: [const ClassProvider(TodoListService)],
)
class LoginComponent implements OnInit {


  List<String> items = [];
  String newTodo = '';

  @override
  Future<Null> ngOnInit() async {

  }

  void add() {

  }

  String remove(int index) => items.removeAt(index);
}
