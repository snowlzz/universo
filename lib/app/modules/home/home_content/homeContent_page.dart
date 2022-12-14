// ignore_for_file: file_names

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo/app/modules/home/home_content/homeContent_store.dart';
import 'package:flutter/material.dart';

import '../../register/register_store.dart';

class HomeContentPage extends StatefulWidget {
  final String title;
  const HomeContentPage({Key? key, this.title = 'HomeContentPage'}) : super(key: key);
  @override
  HomeContentPageState createState() => HomeContentPageState();
}
class HomeContentPageState extends State<HomeContentPage> {
  final HomeContentStore store = Modular.get();
  final RegisterStore reg = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"), 
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 253, 158, 104),
        elevation: 0,
        leading: null,
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration:  const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 253, 158, 104), Color.fromARGB(255, 255, 193,143)],
                  begin: Alignment.center,
                  end: Alignment.bottomCenter
                  )),
              child: 
              
              Column(
                children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom:30, left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Observer(
                      builder: (_) {
                      return Text("Olá, ${reg.controllerName.text}", 
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      );
                    })),
                  ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 175,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
            Card(
                "Vegan",
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Resturant%20Image%20(1).png?alt=media&token=461162b1-686b-4b0e-a3ee-fae1cb8b5b33",
                "8 min away"),
            Card(
                "Italian ",
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Restaurant%20Image.png?alt=media&token=43509b4c-269e-4279-8c88-36dc9ed27a66",
                "12 min away"),
            Card(
                "Vegan",
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Resturant%20Image%20(1).png?alt=media&token=461162b1-686b-4b0e-a3ee-fae1cb8b5b33",
                "15 min away"),
          ],
        ),
      ),
                
                Container(
                  width: MediaQuery.of(context).size.width/1.05,
                  height: MediaQuery.of(context).size.height/1.688,
                  alignment: Alignment.bottomCenter,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(26),
                      topLeft: Radius.circular(26),
                    )
                  ),
                )
                ]
              )
            ),

      
    
      
          ],
        ),
      ),
    );
  }
}




class Card extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String subtitle;

  Card(this.text, this.imageUrl, this.subtitle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 15),
      child: Container(
        width: 150,
        height: 150,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.5),
          boxShadow: [
            BoxShadow(
                offset: const Offset(10, 20),
                blurRadius: 10,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.05)),
          ],
        ),
        child: Column(
          children: [
            Image.network(imageUrl, height: 70, fit: BoxFit.cover),
            Spacer(),
            Text(text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            SizedBox(
              height: 5,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 12),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
