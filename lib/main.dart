import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practicecode/widgettoreturn.dart';
import 'dart:convert';
import 'model.dart';

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
  void initState() {
    super.initState();
    getjsondata();
  }
 Future getjsondata()async{await Future.delayed(const Duration(seconds: 2));
    var jsondata= await rootBundle.loadString('assets/json/data.json');
  var decodejsondata =jsonDecode(jsondata);
  var datafromproducts=decodejsondata["products"];
MyItems.products = List.from(datafromproducts).map<Item>((e) => Item.fromjson(e)).toList();
setState(() {

});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello Appbar '),
        ),
        body:Column(
          children: [
            (MyItems.products!=null && MyItems.products.isNotEmpty)? ListView.builder(itemBuilder: (context,index)=>
                MyWidget(item: MyItems.products[index]),
              itemCount: MyItems.products.length,): Center(child: CircularProgressIndicator(),)
          ],
        )
    );
  }
}

