import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/model/apimodel.dart';
import '../controllers/todos_controller.dart';

class TodosView extends GetView<TodosController> {
  const TodosView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data Example'),
      ),
      body: Center(
        child: FutureBuilder<Todos>(
          future: controller.fetchTodos(),
          builder: (
            context,
            snapshot,
          ) {
            var state = snapshot.connectionState;
            if (state != ConnectionState.done) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              if (snapshot.hasData) {
                return Text(
                  snapshot.data!.title,
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("${snapshot.error}"),
                );
              } else {
                return const Text('');
              }
            }
          },
        ),
      ),
    );
  }
}
