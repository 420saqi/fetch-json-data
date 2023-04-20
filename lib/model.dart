class Item{
  final String name;
  final String image;
  final String desc;
  final int price;

  Item({ required this.name,required this.image,required this.desc,required this.price});
factory Item.fromjson(Map<dynamic, dynamic> map){
 return Item(
  name:map["name"],
  image : map["image"],
  desc : map["desc"],
  price : map["price"],
 );
}
tomap()=>{
  "name" : name,
  "image" : image,
  "desc": desc,
  "price" : price
};

}

class MyItems{
 static List<Item> products= [

 ];
}