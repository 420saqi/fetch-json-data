
class Model{
  final int id;
  final String name;
  final String desc;
  final String img;
  final double price;

  Model({required this.id,required this.name, required this.desc, required this.img, required this.price});
}

class Products{
 static final items=[
    Model(
        id: 1,
    name: "Infinix",
      desc: "My First Mobile",
      price: 1000,
      img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFzxw64xFF8Bpbls4qt2XEpocxJNrwjTgwBg&usqp=CAU"
    ),
    Model(
        id: 1,
    name: "Infinix",
      desc: "My First Mobile",
      price: 1000,
      img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFzxw64xFF8Bpbls4qt2XEpocxJNrwjTgwBg&usqp=CAU"
    ),
    Model(
        id: 1,
    name: "Infinix",
      desc: "My First Mobile",
      price: 1000,
      img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFzxw64xFF8Bpbls4qt2XEpocxJNrwjTgwBg&usqp=CAU"
    ),
  ];
}