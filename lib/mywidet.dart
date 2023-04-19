import 'package:flutter/material.dart';

import 'model.dart';

class MyWidget extends StatelessWidget
{
  final Model mymodel;

  const MyWidget({super.key, required this.mymodel});

  @override
  Widget build(BuildContext context) {
      return ListTile(
leading: Text(mymodel.img),
        title: Text(mymodel.name),
        subtitle: Text(mymodel.desc),
        trailing: Text("\$${mymodel.price}"),

      );
  }

}