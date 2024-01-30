import 'package:dio/dio.dart';
import 'package:dio_retrofit_example/model/example_model.dart';
import 'package:retrofit/retrofit.dart';

part 'example_repository.g.dart';

@RestApi()
abstract class ExampleRepository {
  factory ExampleRepository(Dio dio, {String baseUrl}) = _ExampleRepository;

  @GET('/todos/1')
  Future<ExampleModel> getSingleTodo();

  @DELETE('/tasks/{id}')
  Future<List<int>> getNewsModelDetail(@Path() int id);
}