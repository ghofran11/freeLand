import 'package:dio/dio.dart';
import 'package:freeland/app/home/domain/entities/category_params.dart';
import 'package:freeland/app/home/infrastructure/models/category.dart';
import 'package:freeland/app/home/infrastructure/models/service.dart';
import 'package:freeland/common/constant/src/url.dart';
import 'package:freeland/common/network/error_handler.dart';

class HomeRemote {
  final Dio _dio;

  HomeRemote(Dio dio) : _dio = dio;

  Future<List<CategoryDto>> fetchAllCategory() async {
    return throwDioException<List<CategoryDto>>(() async {
      late final Response response;
      response = await _dio.get(AppUri.categoryFetched);
      var categories = categoriesFromJson(response.data);
      return categories;
    });
  }
  Future<List<ServiceDto>> fetchAllService(String categoryId) async {
    return throwDioException<List<ServiceDto>>(() async {
      late final Response response;
      response = await _dio.get(AppUri.serviceFetched,queryParameters: {
        'categoryId': categoryId
      });
      // var services = serviceFromJson(response.data);
      var services =[ServiceDto(id:  "3fa85f64-5717-4562-b3fc-2c963f66afa6", name: "name", ownerId: "ownerId", nameOwner: "nameOwner", description: "description", evalution: 5, serviceType: 1, minPrice: 20, maxPrice: 200)];
      return services;
    });
  }
}
