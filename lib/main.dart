import 'package:chatapp/tabs/call.dart';
import 'package:chatapp/tabs/camera.dart';
import 'package:chatapp/tabs/chats.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner:false ,
    theme: ThemeData(
      primaryColor: const Color(0xff075e54),
    ),
    home: const MyApp(),
  ));
class  MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  // ignore: library_private_types_in_public_api
  _MyAppState  createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController  _tabController;
 @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this,initialIndex: 1);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatApp'),
        actions: const <Widget>[
          Icon(Icons.search,color: Colors.black,
          ),
          Icon(Icons.more_vert,color: Colors.black,
          ),

        ],
        bottom: TabBar(
          controller: _tabController,
          tabs:const <Widget>[
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: 'CHATS',),
            Tab(text: 'CALLS',),
          ],
        )
      ),
      body: TabBarView(
          controller: _tabController,
          children: const <Widget>[
            Camera(),
            Chats(),
            Call(),

            
          ]
          ,
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: const Icon(Icons.message,),
      ),
    );
  }
}




