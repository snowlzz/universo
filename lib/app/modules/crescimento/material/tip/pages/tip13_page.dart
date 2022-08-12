import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Tip13Page extends StatefulWidget {
  final String title;
  const Tip13Page({Key? key, this.title = 'Tip13Page'}) : super(key: key);
  @override
  Tip13PageState createState() => Tip13PageState();
}
class Tip13PageState extends State<Tip13Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Image.asset("images1/LogoTop.png"),
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
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[

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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                Container(
                  color: const Color.fromARGB(255, 101, 188, 89),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Verdades da amamentação',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20,),
                const Text(
                  'Quanto mais a criança suga o peito, mais produz leite. (Verdade)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '\u27A2O hormônio responsável pela produção do leite, é produzido por meio da sucção (ato de retirar o leite) da criança.'
                          '\n\u27A2Quanto mais a criança mama no peito, mais leite a mamãe vai produzir.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images1/IMAGEM 01.jpg'),

                const SizedBox(height: 20,),
                const Text(
                  'O leite no início da mamada é ralo e o leite do final da mamada é mais grosso. (Verdade)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '\u27A2O primeiro leite que sai mata a sede da criança, rico em agua;'
                          '\n\u27A2O leite do final da mamada contem mais gordura, engordando a criança.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images1/IMAGEM 02.jpg'),

                const SizedBox(height: 20,),
                const Text(
                  'A amamentação traz benefícios por toda a vida da criança (Verdade)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '\u27A2A amamentação previne contra a obesidade, doenças '
                          'crônicas, como diabetes (aumento do açúcar no sangue)'
                          ' e hipertensão (pressão alta).'
                          '\n\u27A2E os benefícios durante a amamentação, como '
                          'fortalecimento do sistema defesa, levando a menos '
                          'ocorrências de diarreias, pneumonias e infecções '
                          'respiratórias.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images1/IMAGEM 01.jpg'),

                const SizedBox(height: 20,),
                const Text(
                  'Chupeta e mamadeira atrapalham a amamentação (Verdade)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '\u27A2A criança pode confundir os bicos, sendo que na '
                          'mamadeira ela não precisa fazer força para sugar o '
                          'leite, o que atrapalha o desenvolvimento dos músculos'
                          ' da face da criança, prejudicando a dentição e fala.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images1/IMAGEM 03.jpg'),

                const SizedBox(height: 20,),
                const Text(
                  'Não existe idade limite para amamentar o bebê. (Verdade)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '\u27A2É recomendado amamentar exclusivamente até o sexto'
                          ' mês e complementar até dois anos, mas pode passar '
                          'dessa idade.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images1/imagem nova 02.png'),

              ],
            ),
          ),

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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                Container(
                  color: const Color.fromARGB(255, 101, 188, 89),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Mitos sobre a amamentação',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20,),
                const Text(
                  'Meu leite é fraco (FALSO)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '\u27A2Não existe leite fraco;'
                          '\n\u27A2O leite materno tem todos os nutrientes que '
                          'a criança precisa, na quantidade certa, para crescer'
                          ' e se desenvolver;',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images1/Gif---4.gif'),

                const SizedBox(height: 20,),
                const Text(
                  'Dar de mamar faz os peitos caírem. (FALSO)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '\u27A2A flacidez da mama depende de vários fatores: idade, ganho de peso, fator genético.'
                          '\n\u27A2Amamentação não causa alteração no formato da mama.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images1/Gif---2.gif'),

                const SizedBox(height: 20,),
                const Text(
                  'Só meu leite não sustenta, e o bebê chora com fome. (FALSO)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '\u27A2A criança chora por vários motivos além da fome, '
                          'pode estar com cólica, frio ou calor, molhado, ou '
                          'está querendo carinho e atenção da mamãe (colo); '
                          '\n\u27A2O choro é a única forma de comunicação da criança;'
                          '\n\u27A2Para tranquilizar a mamãe, ela deve observar'
                          ' o crescimento da criança, no cartão da criança e se'
                          ' a criança está urinando mais de seis vezes por dia.'
                          ' Converse com o profissional de saúde que está '
                          'acompanhando a criança e esclareça suas dúvidas.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images1/gif novo 01.gif'),

                const SizedBox(height: 20,),
                const Text(
                  'Criança que nasceu prematura (antes do tempo) não deve mamar no peito. (FALSO)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                        text: '\u27A2As crianças prematuras são as que mais '
                            'necessitam do leite materno;'
                            '\n\u27A2No inicio da amamentação a criança pode '
                            'apresentar dificuldade para retirar o leite, mas '
                            'conforme a criança cresce, há melhora da sucção '
                            '(retirada do leite);'
                            '\n\u27A2Algumas técnicas podem facilitar a retirada'
                            ' do leite, como do copinho e reelactação. Acesse o'
                            ' atalho clicando aqui: ',
                        children: <TextSpan>[
                          TextSpan(
                              text: '\u279CCopinho',
                              recognizer: TapGestureRecognizer(),
                              style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.underline
                              )
                          ),
                          const TextSpan(text: ' e '),
                          TextSpan(
                              text: '\u279CRelactação',
                              recognizer: TapGestureRecognizer(),
                              style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.underline
                              )
                          ),
                          const TextSpan(
                            text: ' que você vai ser direcionado as orientações '
                                'disponibilizadas no aplicativo sobre o tema.'
                          )
                        ]
                    ),
                  ),
                ),
                Image.asset('images1/IMAGEM 03.jpg'),

                const SizedBox(height: 20,),
                const Text(
                  'Mãe que está amamentando não pode trabalhar fora. (FALSO)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                        text: '\u27A2A mamãe vai oferecer o peito quando estiver com a criança; '
                            '\n\u27A2Ordenhar manualmente o peito e guardar o '
                            'leite, na geladeira ou congelador, para ser '
                            'oferecido nos períodos em que não estiver em casa.'
                            '\n\u27A2Para saber mais, acesse o atalho clicando aqui: ',
                        children: <TextSpan>[
                          TextSpan(
                              text: '\u279CRetorno ao Trabalho',
                              recognizer: TapGestureRecognizer(),
                              style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.underline
                              )
                          ),
                          const TextSpan(
                              text: ', você será direcionada a informações '
                                  'disponíveis no aplicativo sobre o tema.'
                          )
                        ]
                    ),
                  ),
                ),
                Image.asset('images1/IMAGEM 14.jpg'),

              ],
            ),
          )

        ],
      ),
    );

  }
}