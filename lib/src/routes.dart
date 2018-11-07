import 'package:angular_router/angular_router.dart';
import 'route_paths.dart';
import './home/home_component.template.dart' as home_template;
import './login/login_component.template.dart' as login_template;
export 'route_paths.dart';

class Routes {

  static final home = RouteDefinition(
    routePath: RoutePaths.home,
    component: home_template.HomeComponentNgFactory,
  );

  static final login = RouteDefinition(
    routePath: RoutePaths.login,
    component: login_template.LoginComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    home,
    login,
    RouteDefinition.redirect(
      path: '',
      redirectTo: RoutePaths.login.toUrl(),
    ),
  ];
}