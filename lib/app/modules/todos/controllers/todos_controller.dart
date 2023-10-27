import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart';
import '../../../data/model/apimodel.dart';

class TodosController extends GetxController {
  Future<Todos> fetchTodos() async {
    final response =
        await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/5'));
    if (response.statusCode == 200) {
      return Todos.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
