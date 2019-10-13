import 'package:flutter/material.dart';
import 'package:todoapp/models/global.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      color: Colors.yellow,
      theme: ThemeData(
        primaryColor: Color(0xFFf6ECBF),
        accentColor: Colors.pink,
        primarySwatch: Colors.yellow,
      ),
      home: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            body: Stack(
              children: <Widget>[
                TabBarView(
                  children: <Widget>[
                    Container(
                      color: pureBlackColor,
                    ),
                    Container(
                      color: Colors.yellow,
                    ),
                    Container(
                      color: Colors.teal,
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 50.0, right: 50.0),
                  height: 160.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                      color: lightClayColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Intray",
                        style: intrayTitleStyle,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.only(top: 120, left: 175),
                  child: FloatingActionButton(
                    child: Container(
                      child: Icon(
                        Icons.add,
                        size: 80.0,
                      ),
                    ),
                    backgroundColor: darkCyanColor,
                    onPressed: () {
                      debugPrint("Add button is being pressed.");
                    },
                  ),
                ),
              ],
            ),
            appBar: AppBar(
              elevation: 0,
              backgroundColor: lightClayColor,
              title: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    icon: Icon(Icons.rss_feed),
                  ),
                  Tab(
                    icon: Icon(Icons.perm_identity),
                  )
                ],
                labelColor: darkCyanColor,
                unselectedLabelColor: pureBlackColor,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(5.0),
                indicatorColor: darkCyanColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
