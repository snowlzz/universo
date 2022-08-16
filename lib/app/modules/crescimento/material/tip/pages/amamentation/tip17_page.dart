import 'package:flutter/material.dart';

class Tip17Page extends StatefulWidget {
  final String title;
  const Tip17Page({Key? key, this.title = 'Tip17Page'}) : super(key: key);
  @override
  Tip17PageState createState() => Tip17PageState();
}
class Tip17PageState extends State<Tip17Page> {
  @override
  Widget build(BuildContext context) {
    // usrLOG(UID, "GrouthSub35").then((_){});

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
              Image.asset('images1/fig79-11.jpeg',),
              SizedBox(height: 20.0,),
              Text('A amamentação deve ser exclusiva (somente o leite materno ou'
                  ' quando necessária a fórmula infantil) até o sexto mês de vida'
                  ' da criança. Após o sexto mês a amamentação/fórmula deve ser '
                  'mantida em livre demanda e a introdução de alimentos deve ser'
                  ' realizada de forma lenta e gradual. Preparamos algumas dicas'
                  ' sobre a manutenção do aleitamento materno/fórmula e a introdução'
                  ' de alimentos após o sexto mês de vida da criança.',
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
          GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2
            ),
            children: <Widget>[
              // GCARD('Leite materno/fórmula no complemento da alimentação da criança',context,1,UID,name),
              // GCARD('A introdução alimentar não é o início do desmame',context,2,UID,name),
              // GCARD('O leite materno pode ser oferecido após as refeições ou em caso de recusa',context,3,UID,name),
              // GCARD('O leite materno sacia a fome e aconchega a criança',context,4,UID,name),
              // GCARD('O choro da criança pode ser por vários motivos, além da fome',context,5,UID,name),
              // GCARD('A amamentação em livre demanda mantém a produção regular do leite materno',context,6,UID,name),
              // GCARD('A realização da ordenha pode ser útil nesse período',context,7,UID,name),
              // GCARD('Copinho é uma ótima opção para substituir a mamadeira, quando necessário',context,8,UID,name),
              // GCARD('A introdução de água deve ser iniciada após a introdução de outros alimentos',context,9,UID,name),
              // GCARD('O leite materno/fórmula ajuda no período de dentição',context,10,UID,name),
              // GCARD('O peso e crescimento da criança são ótimos indicadores de nutrição adequada',context,11,UID,name),
              // GCARD('A amamentação prolongada traz benefícios ao longo da vida da criança',context,12,UID,name),
            ],
          )
        ],
      ),
    );
  }

  // Widget GCARD(String title, BuildContext context, int page,String UID, String name) {
  //   return InkWell(
  //     onTap: (){
  //       switch(page){
  //         case 1:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub351(UID,title))));
  //           break;
  //         case 2:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub352(UID,title))));
  //           break;
  //         case 3:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub353(UID,title))));
  //           break;
  //         case 4:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub354(UID,title))));
  //           break;
  //         case 5:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub355(UID,title))));
  //           break;
  //         case 6:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub356(UID,title))));
  //           break;
  //         case 7:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub357(UID,title))));
  //           break;
  //         case 8:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub358(UID,title))));
  //           break;
  //         case 9:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub359(UID,title))));
  //           break;
  //         case 10:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub3510(UID,title))));
  //           break;
  //         case 11:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub3511(UID,title))));
  //           break;
  //         case 12:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub3512(UID,title))));
  //           break;
  //       }
  //     },
  
//       child: Card(
//         elevation: 2.0,
//         margin: EdgeInsets.all(10.0),
//         child: Container(
//           color: Color.fromARGB(20, 101, 188, 89),
//           alignment: Alignment.center,
//           padding: EdgeInsets.all(10.0),
//           width: 300.0,
//           child: Text(
//             title,
//             style: TextStyle(
//                 fontSize: 16.0,
//                 fontWeight: FontWeight.w500
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ),
//     );
//   }
// }
}
