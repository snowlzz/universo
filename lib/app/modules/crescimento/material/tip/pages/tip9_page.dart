import 'package:flutter/material.dart';

import 'widgets/image_content.dart';

class Tip9Page extends StatefulWidget {
  final String title;
  const Tip9Page({Key? key, this.title = 'Tip9Page'}) : super(key: key);
  @override
  Tip9PageState createState() => Tip9PageState();
}
class Tip9PageState extends State<Tip9Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const <Widget>[
          SizedBox(
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
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          const SizedBox(height: 30.0,),
          const Text(
            'Aleitamento materno em livre demanda',
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30.0,),
          imageContent('images/rest/46 IMAGEM 01.png', textContent('',
            '\u27A2Sempre que o bebê quiser, de dia ou de noite, sem '
                'restrição de horários e duração da mamada (livre demanda);\n\n'
                '\u27A2Inicialmente, é normal que a criança mame com maior '
                'frequência e sem horários regulares, de oito a 12 vezes '
                'por dia;\n\n'
                '\u27A2Caso a criança durma por mais de duas horas, a acorde'
                ' com carinho para que ela possa mamar.'
          )),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
            width: 250.0,
            //height: 250.0,
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 101, 188, 89),
                    width: 3.0
                )
            ),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 10.0,),
                const Text(
                  '• Sinais que indicam que a criança está satisfeita e '
                      'alimentando adequadamente: ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10.0,),
                Image.asset('images1/gif novo 01.gif'),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '\u27A2Durante a amamentação, a cada uma ou duas sugadas, a '
                          'criança engole o leite (ruído da criança engolindo o leite'
                          ' pode ser ouvido);\n\n\u27A2Chega a adormecer ou '
                          'largar o peito espontaneamente após a mamada;'
                          '\u27A2A urina da criança é amarela bem clara, eliminada '
                          'várias vezes ao dia (mais de seis vezes ao dia);\n\n'
                          '\u27A2Criança em aleitamento materno pode evacuar várias '
                          'vezes ao dia (6 a 8 vezes) ou ficar alguns dias sem '
                          'evacuar, desde que a mamãe não percebe nenhuma alteração '
                          'na criança. As fezes são pastosas ou semilíquidas, de '
                          'coloração amarelada ou acastanhada;\n\n'
                          '\u27A2Ganha peso dentro do esperado, levando em '
                          'consideração o crescimento e desenvolvimento da criança.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30.0,),
          const SizedBox(height: 30.0,),
        ],
      ),
    );
  }

}