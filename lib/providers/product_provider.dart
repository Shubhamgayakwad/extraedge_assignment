// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:extraedge_assignment/models/product_model.dart';
import 'package:extraedge_assignment/services/api_service.dart';
import 'package:extraedge_assignment/services/exception_handler.dart';
import 'package:extraedge_assignment/services/request_urls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productProvider = ChangeNotifierProvider((ref) {
  return ProductProvider();
});

class ProductProvider extends ChangeNotifier {
  List<ProductModel> productList = [];
  bool isLoading = false;

  // api call to fetch product list
  fetchProduct(BuildContext context) async {
    try {
      isLoading = true;
      final service = ApiService(url: RequestUrls.getProducts);
      final response = await service.get();
      if (response.statusCode == 200) {
        // var jsonData = jsonDecode(response.body);
        log("Response: ${response.body}");
        productList = productModelFromJson(response.body);
        isLoading = false;
        notifyListeners();
      }
    } catch (exeption) {
      log("Exception: $exeption");
      ExceptionHandler().getExceptionString(context, exeption);
      isLoading = false;
      notifyListeners();
    }
  }
}
