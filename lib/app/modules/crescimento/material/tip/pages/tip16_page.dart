import 'package:flutter/material.dart';

class Tip16Page extends StatefulWidget {
  final String title;
  const Tip16Page({Key? key, this.title = 'Tip16Page'}) : super(key: key);
  @override
  Tip16PageState createState() => Tip16PageState();
}
class Tip16PageState extends State<Tip16Page> {
  @override
  Widget build(BuildContext context) {
    // usrLOG(UID, "GrouthSub11").then((_){});
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Image.asset("images1/LogoTop.png"),
          SizedBox(
            width: 10.0,
          )
        ],
        centerTitle: true,
        title: Text(
          'Crescimento',
          style: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 1.5,
      ),
      body: PageView(
        // controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
            children: <Widget>[
              Image.asset('images1/Gif-1.gif',),
              SizedBox(height: 20.0,),
              Text('O leite materno é o melhor alimento para ser oferecido à criança.'
                  ' Algumas dificuldades podem surgir durante a amamentação, por isso'
                  ' preparamos um material com técnicas que podem facilitar a '
                  'transição para amamentação ou fórmula, com as indicações e '
                  'vantagens de cada uma.  Evite mamadeiras, bicos e chupetas, isso'
                  ' dificulta o aleitamento materno pela confusão de bicos que '
                  'provoca na criança.  ',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16.0),
              ),

              SizedBox(height: 20.0,),
              RaisedButton(
                padding: EdgeInsets.all(15.0),
                color: Color.fromARGB(255, 101, 188, 89),
                onPressed: (){
                  // _pageController.jumpToPage(1);
                },
                child: Text(
                  'Acessar material',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
            ],
          ),
          ListView(
            children: <Widget>[
              // GCARD('1	Alimentação por copinho',context,1,UID),
              // GCARD('2	Relactação/ Translactação - sondinha (tubo pequeno para'
              //     ' passagem do leite).',context,2,UID),
              // GCARD('3	Ordenha manual',context,3,UID)
            ],
          )
        ],
      ),
    );
  }

  Widget GCARD(String title, BuildContext context, int page,String UID) {
    return InkWell(
      onTap: (){
        switch(page){
          // case 1:
          //   Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub111(UID))));
          //   break;
          // case 2:
          //   Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub112(UID))));
          //   break;
          // case 3:
          //   Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub113(UID))));
          //   break;
        }
      },
      child: Card(
        elevation: 2.0,
        margin: EdgeInsets.fromLTRB(40,20.0,40,0.0),
        child: Container(
          color: Color.fromARGB(20, 101, 188, 89),
          alignment: Alignment.center,
          padding: EdgeInsets.all(40.0),
          width: 300.0,
          child: Text(
            title,
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
