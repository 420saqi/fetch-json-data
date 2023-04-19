import 'package:flutter/material.dart';
import 'package:practicecode/model.dart';
import 'package:practicecode/mywidet.dart';

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
class HomeState extends State<StatefulWidget>
{
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title:Text('Hello Appbar '),
  ),
  body: ListView.builder(itemBuilder: (context,index)=>myWidget(obj: dumlist[index] ),
  itemCount: dumlist.length,
  )
);
  }


  }
  var dumlist=List.generate(Products.items.length, (index) => Products.items[index]);
class myWidget extends StatelessWidget
{
  final Model obj;

  const myWidget({super.key, required this.obj});
  @override
  Widget build(BuildContext context) {
return ListTile(
  leading: Image.network(obj.img),
  title: Text(obj.name),
  subtitle: Text(obj.desc),
  trailing: Text("\$${obj.price.toString()}"),

);
  }

}