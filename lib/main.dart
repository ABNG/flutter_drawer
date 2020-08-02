import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

//you can use this code or see flutter docs code. if you want to move header up and don't want logo at bottom
//https://api.flutter.dev/flutter/material/Drawer-class.html
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APPBAR"),
        elevation: Platform.isAndroid ? 5.0 : 0.0,
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            UserAccountsDrawerHeader(
              //use DrawerHeader(fully customisable) or this that i Use i prefer that i use
              accountName: Text("Abu Bakar"),
              accountEmail: Text("abnawaz14@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Text("A"),
              ),
//              decoration: BoxDecoration(
//                color: Colors.red,
//              ),
              otherAccountsPictures: [
                CircleAvatar(
                  child: Text("A"),
                ),
                CircleAvatar(
                  child: Text("A"),
                ),
              ],
//              onDetailsPressed: () {  //we can build drawer body also but not necessary
//                print("ok");
//              },
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(Icons.message),
                      title: Text('Messages'),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text('Profile'),
                    ),
                  ),
                  Divider(),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Settings'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Column(
                //we can wrap column with expanded
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.import_contacts,
                    color: Colors.amber,
                    size: 120.0,
                  ),
                  Text("hello Flutter"),
                ],
              ),
            )
          ],
        ),
      ),
//      endDrawer: Drawer(),  //show drawer right side
    );
  }
}
