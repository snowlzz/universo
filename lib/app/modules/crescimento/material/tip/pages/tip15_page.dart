import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Tip15Page extends StatefulWidget {
  final String title;
  const Tip15Page({Key? key, this.title = 'Tip15Page'}) : super(key: key);
  @override
  Tip15PageState createState() => Tip15PageState();
}
class Tip15PageState extends State<Tip15Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: MediaQuery.of(context).size.height,
      child: ListView(
        children: <Widget>[
          const SizedBox(height: 20.0,),
          const Padding(
            padding: EdgeInsets.only(left: 20.0,right: 20.0),
            child: Text(
              'Siga a 1ª tarefa em casa',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20.0,),
          CarouselSlider(
            options: CarouselOptions(height: 285.0,
              reverse: false,
              autoPlay: false,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,),
            items: <Widget>[
              Container(
                //margin: EdgeInsets.symmetric(vertical: 10.0),
                //width: 350.0,
                //height: 250.0,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 101, 188, 89),
                        width: 3.0
                    )
                ),
                child: Image.asset('images1/static1.png'),
              ),
              Container(
                //margin: EdgeInsets.symmetric(vertical: 10.0),
                //width: 250.0,
                //height: 250.0,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 101, 188, 89),
                        width: 3.0
                    )
                ),
                child: Image.asset('images1/static3.png'),
              ),
            ],
          ),
          const SizedBox(height: 20.0,),
          Container(
            margin: const EdgeInsets.only(left: 40.0,right: 40.0,bottom: 20.0),
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 35.0),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images1/ballon9.png')
              ),
            ),
            child: regText('\u25CF Movimento', '-  deverá experimentar '
                'diferentes posições corporais para desenvolver-se melhor.\n- Não'
                ' deixe  por um período maior de que uma hora em cada posição.'
                '\n- Na hora do sono da noite deixe  dormir na posição '
                'lateral com um apoio nas costas. Manter uma inclinação na '
                'cabeceira do berço. A cabecinha deverá ficar um pouco acima das '
                'perninhas.'),
          ),
          Container(
            margin: const EdgeInsets.only(left: 40.0,right: 40.0,bottom: 20.0),
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images1/ballon91.png')
                ),
            ),
            child: regText('\u25CF Som', '- Converse com sempre que estiver '
                'em alerta. Mostre brinquedos coloridos e com som. Comunique-se '
                'sempre com , fixando olho no olho.'),
          ),Container(),
          Container(
            margin: const EdgeInsets.only(left: 40.0,right: 40.0,bottom: 20.0),
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 30.0),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images1/ballon9.png')
                ),
            ),
            child: regText('\u25CF Atenção!', '- Cuidado com queda: não deixe '
                ' sozinho(a) no trocador ou na cama.\n- Respeite a hora do sono, um '
                'ambiente tranquilo é importante para o seu desenvolvimento.'),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0,right:20.0,bottom:10.0,top:30.0),
            child: Text(
              "LEMBRE-SE: a frequência de estímulos é muito importante. Estimule "
                  "sempre que possível",
              style: TextStyle(
                  color: Color.fromARGB(255, 193, 61, 39),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic
              ),
              textAlign: TextAlign.center,
            ),
          //   Text(
          //     "LEMBRE-SE: Todo cuidado com é muito importante.",
          //     style: TextStyle(
          //         color: Color.fromARGB(255, 193, 61, 39),
          //         fontSize: 18,
          //         fontWeight: FontWeight.w500,
          //         fontStyle: FontStyle.italic
          //     ),
          //   ),
           ),
          
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right:20.0,bottom:40.0,top:20.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: RaisedButton.icon(

                elevation: 5,
                color: const Color.fromARGB(255, 101, 188, 89),
                shape: const StadiumBorder(),
                label: const Text(
                  'Seguem as tarefas',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),
                ),
                icon: const Icon(Icons.arrow_forward,color: Colors.white,),
                onPressed: (){
                  Modular.to.pushNamed("/tip/");
                }
              ),
            ),
          ),
      ]),
    );
    
  }

  Widget regText(String title, String text){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$title',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 193, 61, 39),
          ),
          textAlign: TextAlign.left,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
          textAlign: TextAlign.justify,
        )
      ],
    );
  }

}