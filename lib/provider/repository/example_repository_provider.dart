import 'package:dio_retrofit_example/provider/network/dio_client_provider.dart';
import 'package:dio_retrofit_example/repository/example_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final exampleRepositoryProvider = Provider((ref) => ExampleRepository(ref.watch(dioClientProvider)));