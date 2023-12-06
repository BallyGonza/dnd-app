import 'package:dnd_app/services/local_storage_service/models/models.dart';

abstract class ILocalStorageService {
  Future<void> delete({
    required String key,
    Boxes? box,
  });

  // ignore: inference_failure_on_function_return_type, always_declare_return_types, type_annotate_public_apis
  get<T>({
    required String key,
    required T Function(Map<String, dynamic> json) fromJson,
    Boxes? box,
  });

  Future<void> save({
    required String key,
    required Map<String, dynamic> value,
    Boxes? box,
  });
}
