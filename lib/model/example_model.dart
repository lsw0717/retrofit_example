import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_model.freezed.dart';
part 'example_model.g.dart';

@freezed
class ExampleModel with _$ExampleModel {
  factory ExampleModel({
    final int? id,
    final String? todo,
    final bool? completed,
    final int? userId,
  }) = _ExampleModel;

  factory ExampleModel.fromJson(Map<String, dynamic> json) =>
      _$ExampleModelFromJson(json);

  factory ExampleModel.init() => ExampleModel();
}
