import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Helloo world'),
            actions: <Widget>[
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_train)),
              ],
            ),
            // flexibleSpace: Icon(Icons.photo_camera, size: 70.0,color: Colors.amber,),
            backgroundColor: Colors.pink,
            elevation: 3.0,
          ),
          body: TabBarView(children: [
            Icon(Icons.directions_bike),
            Icon(Icons.directions_car),
            Icon(Icons.directions_train),
          ]),
        ),
      ),
    );
  }
}
