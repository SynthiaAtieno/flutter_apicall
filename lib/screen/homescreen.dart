import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../repo/user_repo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //List<User> users = [];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Api Call"),
      ),

      body: ListView.builder(itemBuilder: (context, index){
        //final user = users[index];
        return ListTile(
         // leading: Text(user.phone),
        );

      }),
      //floatingActionButton: FloatingActionButton(onPressed: fetchUser,),

    );
  }
  /*void fetchUser() async{

    final uri = Uri.parse('https://randomuser.me/api/?results=50');
    final response = await http.get(uri);
    final body = response.body;

    final json = jsonDecode(body);
  }*/
}
