import 'package:dio_retrofit_example/provider/state/todo_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Riverpod dio retrofit example',
      home: MainScrenn(),
    );
  }
}


class MainScrenn extends ConsumerWidget {
  const MainScrenn({super.key});
  

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final todoModel = ref.watch(todoProvider);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(todoModel.todo.toString())
          ],
        ),
      ),
    );
  }
}
