import 'dart:convert';

import 'package:apicall/models/product_model.dart';
import 'package:apicall/repos/product_repo.dart';
import 'package:http/http.dart';

class ProductController{
  final productRepo = ProductRepo();

  Future<List<Products>>getProducts() async{
    final response = await productRepo.getProducts();
    final data = jsonDecode(response.body);
    List<Products> products = [];

    final productsJson = data['products'];
    for(final productJson in productsJson){

      products.add(Products.fromJson(productJson));
    }
    return products;
  }
}