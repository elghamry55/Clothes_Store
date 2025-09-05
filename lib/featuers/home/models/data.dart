import 'package:dio/dio.dart';

import 'model.dart';

final Dio dio = Dio();

Future<List<ClotheModel>> getData() async {
  try {
    var response = await dio.get('https://fakestoreapi.com/products');
    List data = response.data;
    List<ClotheModel> listModel = data.map((e) => ClotheModel.fromJson(e)).toList();
    print('Fetched ${listModel.length} items');
    return listModel;
  } catch (e) {
    print('Error fetching data: $e');
    rethrow;
  }
}