import 'package:app_booking/controllers/popular_product_controller.dart';
import 'package:app_booking/data/api/api_client.dart';
import 'package:app_booking/data/repository/popular_product_repo.dart';
import 'package:app_booking/utils/app_constants.dart';
import 'package:get/get.dart';

import '../controllers/recommended_product_controller.dart';
import '../data/repository/recomended_product_repo.dart';

Future<void> init()async{
  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));

  //controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));
}