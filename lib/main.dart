import 'package:flutter/material.dart';
import './page/add.dart';
import './page/home.dart';
import './page/likes.dart';
import './page/profile.dart';
import './page/search.dart';

void main() {
  runApp(MaterialApp(title: "Tab Bar", home: TabBarHome()));
}

class TabBarHome extends StatefulWidget {
  @override
  _TabBarHomeState createState() => _TabBarHomeState();
}

class _TabBarHomeState extends State<TabBarHome>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    controller = new TabController(vsync: this, length: 5);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context){
            return IconButton(
              icon : Icon(Icons.camera_alt,color: Colors.black,),
              onPressed: (){
                print("click camera");
              },
            );
          },
        ),
        backgroundColor: Colors.white,
        title: Text("Instagram", style: TextStyle(color: Colors.black)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.live_tv,color: Colors.black),
            onPressed: (){
              print("Clicked Live");
            },
          ),
          IconButton(
            icon: Icon(Icons.near_me,color: Colors.black),
            onPressed: (){
              print("Clicked on DM");
            },
          ),
        ],
      ),

      body: TabBarView(
        controller: controller,
        children: <Widget>[
          new Home(),
          new Search(),
          new Add(),
          new Likes(),
          new Profile(),
        ],
      ),

      bottomNavigationBar: new Material(
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home, color: Colors.black)),
            Tab(icon: Icon(Icons.search, color: Colors.black)),
            Tab(icon: Icon(Icons.add_box, color: Colors.black)),
            Tab(icon: Icon(Icons.favorite_border, color: Colors.black)),
            Tab(icon: Icon(Icons.person, color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
