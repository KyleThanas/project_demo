import 'package:get/get.dart';

import '../cpdn_cristiano22_model.dart';

class CpdnCristiano22Provider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return CpdnCristiano22.fromJson(map);
      if (map is List)
        return map.map((item) => CpdnCristiano22.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<CpdnCristiano22?> getCpdnCristiano22(int id) async {
    final response = await get('cpdncristiano22/$id');
    return response.body;
  }

  Future<Response<CpdnCristiano22>> postCpdnCristiano22(
          CpdnCristiano22 cpdncristiano22) async =>
      await post('cpdncristiano22', cpdncristiano22);
  Future<Response> deleteCpdnCristiano22(int id) async =>
      await delete('cpdncristiano22/$id');
}
