import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'home',
  templateUrl: './home_component.html',
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
class HomeComponent implements OnInit {


  List<String> items = [];
  String newTodo = '';



  @override
  Future<Null> ngOnInit() async {

  }

  void add() {

  }

  String remove(int index) => items.removeAt(index);
}
