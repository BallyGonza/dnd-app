import 'package:dnd_app/services/local_storage_service/models/models.dart';

abstract class ILocalStorageService {
  Future<void> delete({
    required String key,
    Boxes? box,
  });

  get<T>({
    required String key,
    Boxes? box,
    required T Function(Map<String, dynamic> json) fromJson,
  });

  Future<void> save({
    required String key,
    required Map<String, dynamic> value,
    Boxes? box,
  });
}
