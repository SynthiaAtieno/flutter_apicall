import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/User.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> user = [];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Api Call"),
      ),

      body: ListView.builder(itemBuilder: (context, index){

      }),
      floatingActionButton: FloatingActionButton(onPressed: fetchUser,),

    );
  }
  void fetchUser() async{

    final uri = Uri.parse('https://randomuser.me/api/?results=50');
    final response = await http.get(uri);
    final body = response.body;

    final json = jsonDecode(body);
  }
}
