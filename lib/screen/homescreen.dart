import 'dart:convert';

import 'package:apicall/controllers/product_controller.dart';
import 'package:apicall/screen/Pproduct_screen.dart';
import 'package:apicall/screen/profile_page.dart';
import 'package:apicall/screen/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../repos/product_repo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  List pages = [
    const ProductPage(),
    const SettingsPage(),
    const ProfilePage()

  ];

  void bottomNavigator(int index){
    setState(() {
      _selectedIndex = index;

    });
  }
  @override
  Widget build(BuildContext context) {
    void userTapped(){
      //Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductPage()));
      Navigator.pushNamed(context, '/settingsPage');
    }
    return  Scaffold(
     /* appBar: AppBar(title: const Text("Home"),
        centerTitle: true,
        elevation: 0,
      ),*/
      drawer: Drawer(
        backgroundColor: Colors.blueAccent,
        child: Column(
          children:  [
            const DrawerHeader(child: Icon(Icons.favorite, size: 130, color: Colors.white,)),
             ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home", style: TextStyle(fontSize: 18),),
              onTap: () => Navigator.pop(context),
            ),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings", style: TextStyle(fontSize: 18),),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settingsPage');
              },
            ),
             ListTile(
              leading: const Icon(Icons.production_quantity_limits),
              title: const Text("Products", style: TextStyle(fontSize: 18),),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/productsPage");
              }
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: bottomNavigator,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),
            label: "Home",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person),
            label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),
            label: "Settings")
      ],
      ),

      body:
      pages[_selectedIndex]
      /*FutureBuilder(
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
                  children: [*/
                    /*ListTile(subtitle: Image.network(product[index].thumbnail),
                      title: Center(child: Text(product[index].title,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      ),
                    ),*/
                    /*GridView.builder(
                      itemCount: 120,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8), itemBuilder: (context, snapshot){
                        return Container(
                          color: Colors.deepOrange,
                          margin: const EdgeInsets.all(4),
                        );
                    }),*/
                 // ],
               // );
              //});
      //  },
      //),
    );
  }

}
