import 'package:flutter/material.dart';

class Tip18Page extends StatefulWidget {
  final String title;
  const Tip18Page({Key? key, this.title = 'Tip18Page'}) : super(key: key);
  @override
  Tip18PageState createState() => Tip18PageState();
}
class Tip18PageState extends State<Tip18Page> {
  @override
  Widget build(BuildContext context) {
    // usrLOG(UID, "GrowthSub36").then((_){});

    // fase = getFase(perfil);
    // if(fase <= 18) _pageController = PageController(initialPage: 1);
    // else if(fase > 18 && fase <= 27) _pageController = PageController(initialPage: 2);
    // else if(fase > 27 && fase <= 36) _pageController = PageController(initialPage: 3);
    // else _pageController = PageController(initialPage: 0);
    // print("A fase é $fase");

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Image.asset("images/LogoTop.png"),
          const SizedBox(
            width: 10.0,
          )
        ],
        centerTitle: true,
        title: const Text(
          'Crescimento',
          style: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 1.5,
      ),
      body: PageView(
        // controller: _pageController,
        //physics: NeverScrollableScrollPhysics(),
        children: [
          const Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
            ),
          ),
          Center(
            child: Container(
              color: const Color.fromARGB(200, 101, 188, 89),
              padding: const EdgeInsets.all(10.0),
              width: 200.0,
              child: const Text(
                'Você receberá instruções sobre a introdução alimentar após os 6 meses de idade, aguarde.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                ),
              ),
            ),
          ),
          ListView(
            padding: const EdgeInsets.all(20.0),
            children: [
              const SizedBox(height: 20.0,),
              const Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20.0),
                child: Text(
                  'INTRODUÇÃO',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20.0,),

              const Text(
                'A introdução alimentar, chamada também de alimentação complementar, é o momento em que se dá início a oferta dos alimentos além do leite, aos 6 meses de idade corrigida, para bebe em aleitamento materno exclusivo e/ou fórmulas. O início da introdução alimentar terá como função a apresentação do gosto dos alimentos para bebe, sua consistência, seu cheiro e a forma de comer, por isso não se preocupe caso bebe não coma inicialmente. O principal alimento até o 1 ano de vida ainda continua sendo o leite materno ou a fórmula já estabelecida.'
                    '\n\nPara dar início a introdução alimentar é preciso avaliar alguns pontos que indicará o momento certo. Vamos avaliar de forma visual, pois conseguiremos observar melhor as reações do bebe. Já as questões internas do organismo (enzimas, digestão, capacidade dos sistemas) devemos deixar para a avaliação do profissional de saúde.'
                    '\n\nBebe ainda não possui as aparições dos dentes, mas a força de sua gengiva e de sua língua são capazes de desfazer os alimentos. Assim, transformando os alimentos em pedaços menores ou em purês será suficiente para bebe conseguir deglutir de forma segura.',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),

              const SizedBox(height: 20.0,),
              GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2
                ),
                children: const[
                  // GCARD('1.	SINAIS DE PRONTIDÃO',context,4,UID,name),
                  // GCARD('2. EXEMPLO DOS PAIS – ALIMENTOS E AMBIENTE – DICAS',context,5,UID,name),
                  // GCARD('3.	UTENSÍLIOS – SUGESTÃO',context,6,UID,name),
                  // GCARD('4.	TIPOS DE INTRODUÇÃO ALIMENTAR',context,7,UID,name),
                  // GCARD('5.	COMO PREPARAR – BLW OU PAPINHA – VAPOR E CONSISTÊNCIA',context,8,UID,name),
                  // GCARD('6.	DIVISÃO DO PRATO E GRUPOS ALIMENTAR',context,9,UID,name),
                  // GCARD('7.	CRONOGAMA DE INTRODUÇÃO DE ALIMENTOS ',context,10,UID,name),
                  // GCARD('8.	ENGASGO E REFLEXO DE GAG',context,11,UID,name),
                  // GCARD('9.	ALIMENTOS PARA SER INICIADOS',context,12,UID,name),
                  // GCARD('10.	CONGELAMENTO E DESCONGELAMENTO DO ALIMENTO',context,13,UID,name),
                  // GCARD('11.	REAÇÕES ALÉRGICAS',context,14,UID,name),
                  // GCARD('12.	ALIMENTOS PROIBIDOS ATÉ 1 ANO',context,15,UID,name),
                  // GCARD('13.	ALIMENTOS PROIBIDOS ATÉ 2 ANOS ',context,16,UID,name),
                ],
              )
            ],
          ),
          // ListView(
          //   padding: EdgeInsets.fromLTRB(20, 5.0, 20, 5.0),
          //   children: [
          //     GCARD('1.	COMO PREPARAR – BLW OU PAPINHA – VAPOR E CONSISTÊNCIA',context,1,UID,name),
          //     GCARD('2.	CRONOGAMA DE INTRODUÇÃO DE ALIMENTOS',context,2,UID,name),
          //     GCARD('3.	ALIMENTOS PROIBIDOS ATé 2 ANOS',context,3,UID,name)
          //   ],
          // ),
        ],
      ),
    );
  }

  // Widget GCARD(String title, BuildContext context, int page,String UID, String name) {
  //   return InkWell(
  //     onTap: (){
  //       switch(page) {
  //         case 1:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub361(UID,name))));
  //           break;
  //         case 2:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub362(UID,name))));
  //           break;
  //         case 3:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub363(UID,name))));
  //           break;
  //         case 4:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub364(UID,name))));
  //           break;
  //         case 5:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub365(UID,name))));
  //           break;
  //         case 6:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub366(UID,name))));
  //           break;
  //         case 7:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub367(UID,name))));
  //           break;
  //         case 8:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub368(UID,name))));
  //           break;
  //         case 9:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub369(UID,name))));
  //           break;
  //         case 10:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub370(UID,name))));
  //           break;
  //         case 11:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub371(UID,name))));
  //           break;
  //         case 12:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub372(UID,name))));
  //           break;
  //         case 13:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub373(UID,name))));
  //           break;
  //         case 14:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub374(UID,name))));
  //           break;
  //         case 15:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub375(UID,name))));
  //           break;
  //         case 16:
  //           Navigator.of(context).push(MaterialPageRoute(builder: ((context) => GSub376(UID,name))));
  //           break;
  //       }
  //     },
  //     child: Card(
  //       elevation: 2.0,
  //       //margin: EdgeInsets.all(20.0),
  //       child: Container(
  //         color: Color.fromARGB(20, 101, 188, 89),
  //         alignment: Alignment.center,
  //         padding: EdgeInsets.all(20.0),
  //         child: Text(
  //           title,
  //           style: TextStyle(
  //               fontSize: 16.0,
  //               fontWeight: FontWeight.w500
  //           ),
  //           textAlign: TextAlign.center,
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // int getFase(Perfil perfil){

  //   //Computa periodo para conteudo de 1 a 3 meses
  //   int IG = perfil.gage;
  //   DateTime birth = DateFormat("dd/MM/yyyy").parse(perfil.birth);
  //   DateTime ZD = birth.add(Duration(days: 280-IG));
  //   DateTime ND = ZD.add(Duration(days: 90));
  //   DateTime dtReg = DateFormat("yyyy-MM-dd HH:mm:ss").parse(perfil.dtReg);
  //   int p = ND.difference(dtReg).inDays~/9;

  //   DateTime now = DateTime.now();
  //   //now = ND.add(Duration(days: 90));

  //   if(now.difference(ZD).inDays > 90) {
  //     return (now.difference(ZD).inDays/10).ceil();
  //   }
  //   else {
  //     for(var i=1;i<=9;i++){
  //       if(
  //       now.isAfter(dtReg.add(Duration(days: p*(i-1)))) &&
  //           now.isBefore(dtReg.add(Duration(days: p*(i)))) ||
  //           (now.isAfter(dtReg.add(Duration(days: 90)))&&i==9) ||
  //           now == dtReg.add(Duration(days: p*i))
  //       ){
  //         return i;
  //       }
  //     }
  //   }
  // }
}