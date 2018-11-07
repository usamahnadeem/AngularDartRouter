import 'package:angular/angular.dart';
import 'package:goodRouting/src/home/home_component.dart';
import 'package:angular_router/angular_router.dart';
import 'src/routes.dart';


// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [HomeComponent, routerDirectives],
  exports: [RoutePaths, Routes]
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
