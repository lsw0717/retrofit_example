import 'package:dio_retrofit_example/model/example_model.dart';
import 'package:dio_retrofit_example/provider/repository/example_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final todoProvider = NotifierProvider.autoDispose<TodoNotifier, ExampleModel>(
    () => TodoNotifier(),
    name: 'todoProvider');

class TodoNotifier extends AutoDisposeNotifier<ExampleModel> {
  @override
  ExampleModel build() {
    state = ExampleModel.init();
    getSingleTodo();

    return state;
  }

  getSingleTodo() async {
    final repository = ref.watch(exampleRepositoryProvider);
    final result = await repository.getSingleTodo();

    state = result;
  }
}
