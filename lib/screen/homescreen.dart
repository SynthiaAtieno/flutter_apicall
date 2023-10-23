import 'dart:convert';

import 'package:apicall/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../repos/product_repo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  //List<User> users = [];
  @override
  Widget build(BuildContext context) {
    //ProductController().getProducts();
    return  Scaffold(
      appBar: AppBar(title: const Text("Api Call"),
        centerTitle: true,
      ),
    );
  }

}
