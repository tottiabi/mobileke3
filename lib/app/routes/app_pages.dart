// ignore_for_file: constant_identifier_names
import 'package:get/get.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/todos/bindings/todos_binding.dart';
import '../modules/todos/views/todos_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.TODOS;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TODOS,
      page: () => const TodosView(),
      binding: TodosBinding(),
    ),
  ];
}
