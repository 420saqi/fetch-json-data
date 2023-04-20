import 'package:flutter/material.dart';

import 'model.dart';

class MyWidget extends StatelessWidget
{
  final Item item;

  const MyWidget({super.key, required this.item}): assert(item!= null);

  @override
  Widget build(BuildContext context) {
return ListTile(
        leading: Image.network(item.image),
  title: Text(item.name),
  subtitle: Text(item.desc),
  trailing: Text("\$${item.price}"),
);
  }
}