import 'dart:convert';

import 'package:apicall/models/product_model.dart';
import 'package:apicall/repos/product_repo.dart';

class ProductController{
  final user_repo = ProductRepo();

  getProducts() async{
    final response = await user_repo.getUsers();
    final data = jsonDecode(response.body);
    List<Products> products = [];

    final productsJson = data['products'];
  }
}