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

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Products"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: ProductController().getProducts(),
        builder: (context, snapshot){
          snapshot.data;
          if(snapshot.data == null){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final product = snapshot.data!;
          return ListView.builder(
              itemCount: product.length,
              itemBuilder: (context, index){
                return Column(
                  children: [
                    ListTile(subtitle: Image.network(product[index].thumbnail),title: Center(child: Text(product[index].title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),)),),
                  ],
                );
              });
        },
      ),
    );
  }

}
