import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

class CartilhaPage extends StatefulWidget {
  final String title;
  const CartilhaPage({Key? key, this.title = 'Cartilha'}) : super(key: key);
  @override
  CartilhaPageState createState() => CartilhaPageState();
}
class CartilhaPageState extends State<CartilhaPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"), 
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 253, 158, 104),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: (){
             Modular.to.popAndPushNamed("/home/");
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          Image.asset('images1/cartilha/0001.jpg',),
          Image.asset('images1/cartilha/0002.jpg',),
          Image.asset('images1/cartilha/0003.jpg',),
          Image.asset('images1/cartilha/0004.jpg',),
          Image.asset('images1/cartilha/0005.jpg',),
          Image.asset('images1/cartilha/0006.jpg',),
          Image.asset('images1/cartilha/0007.jpg',),
          Image.asset('images1/cartilha/0008.jpg',),
          Image.asset('images1/cartilha/0009.jpg',),
          Image.asset('images1/cartilha/0010.jpg',),
          Image.asset('images1/cartilha/0011.jpg',),
          Image.asset('images1/cartilha/0012.jpg',),
          Image.asset('images1/cartilha/0013.jpg',),
          Image.asset('images1/cartilha/0014.jpg',),
          Image.asset('images1/cartilha/0015.jpg',),
          Image.asset('images1/cartilha/0016.jpg',),
          Image.asset('images1/cartilha/0017.jpg',),
          Image.asset('images1/cartilha/0018.jpg',),
          Image.asset('images1/cartilha/0019.jpg',),
          Image.asset('images1/cartilha/0020.jpg',),
          Image.asset('images1/cartilha/0021.jpg',),
          Image.asset('images1/cartilha/0022.jpg',),
          Image.asset('images1/cartilha/0023.jpg',),
          Image.asset('images1/cartilha/0024.jpg',),
          Image.asset('images1/cartilha/0025.jpg',),
          Image.asset('images1/cartilha/0026.jpg',),
          Image.asset('images1/cartilha/0027.jpg',),
          Image.asset('images1/cartilha/0028.jpg',),
          Image.asset('images1/cartilha/0029.jpg',),
          Image.asset('images1/cartilha/0030.jpg',),
          Image.asset('images1/cartilha/0031.jpg',),
          Image.asset('images1/cartilha/0032.jpg',),
          Image.asset('images1/cartilha/0033.jpg',),
          Image.asset('images1/cartilha/0034.jpg',),
          Image.asset('images1/cartilha/0035.jpg',),
          Image.asset('images1/cartilha/0036.jpg',),
          ],
        ),
      ),
    );
  }
}