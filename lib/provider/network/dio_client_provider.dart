import 'package:dio_retrofit_example/network/client/dio_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioClientProvider = Provider((ref) => DioClient.getDioClient(''));