import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello world",
      theme: ThemeData(
          primarySwatch: Colors.red
      ),
      home: Home(),
    );
  }
}
class Home extends StatefulWidget
{
  State<StatefulWidget> createState()=> HomeState();
}
class HomeState extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello Appbar '),
        ),
        body:FutureBuilder(
            future: DefaultAssetBundle.of(context).loadString('assets/json/data.json'),
            builder: (context,snapshot) {
              var mydata = jsonDecode(snapshot.data.toString());
              if (mydata == null) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              else {
                return ListTile(
                  title: Text('${mydata["products"][1]["name"]}'),
                  leading: Image.network(mydata["products"][1]["image"]),
                  subtitle: Text('${mydata["products"][1]["desc"]}'),
                  trailing: Text("${mydata["products"][1]['price']}"),
                );

              }

            }//snapshot will contain our data, you can change the name
          ),

    );
  }
}