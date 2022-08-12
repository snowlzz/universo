import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Tip14Page extends StatefulWidget {
  final String title;
  const Tip14Page({Key? key, this.title = 'Tip14Page'}) : super(key: key);
  @override
  Tip14PageState createState() => Tip14PageState();
}
class Tip14PageState extends State<Tip14Page> {
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

          const SizedBox(height: 10.0,),
          const Text(
            'RETORNO AO TRABALHO',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10.0,),

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

                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      'Após os primeiros meses, de exclusividade para criança, '
                          'pode chegar a hora da mamãe voltar a trabalhar. Este'
                          ' momento pode ser difícil, mas com planejamento é '
                          'possível continuar a oferecer somente o leite materno'
                          ' à criança até o sexto mês e complementar por dois ou'
                          ' mais anos de vida. ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images1/IMAGEM 01.jpg'),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '\u27A2No final da licença maternidade, nos últimos 15 '
                          'dias, a mamãe deverá iniciar o planejamento para '
                          'retornar ao trabalho e continuar oferecendo somente '
                          'o leite materno a criança;',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images1/IMAGEM 03.jpg'),
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
                        text: '\u27A2O leite é produzido de acordo com a demanda '
                            'da criança, a sucção ao seio é fundamental para '
                            'produção do leite. Quando não for possível dar o '
                            'peito, é importante que a mamãe ordenhe a mama em '
                            'intervalos regulares, porém quando estiver com a '
                            'criança ofereça a mama;'
                            '\n\u27A2O passo a passo para ordenha manual da mama e '
                            'armazenamento do leite está acessível no atalho '
                            'clicando aqui: ',
                        children: <TextSpan>[
                          TextSpan(
                              text: '\u279CComo retirar o leite manualmente (Ordenha)',
                              recognizer: TapGestureRecognizer(),
                              style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.underline
                              )
                          ),
                          const TextSpan(text:'. Durante a ordenha, pense na criança, '
                              'isso facilita a descida do leite.')
                        ]
                    ),
                  ),
                ),
                Image.asset('images1/Gif---3.gif'),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '\u27A2Durante a jornada de trabalho, mamãe tem '
                          'direito a dois períodos de meia hora por dia para '
                          'amamentar seu bebê até os seis meses;'
                          '\n\u27A2Mesmo amamentando a criança nesses dois '
                          'períodos, a mamãe deverá realizar a ordenha, '
                          'observando a necessidade quando a mama estiver cheia.'
                          ' Poderá ser realizada em um ambiente limpo, na '
                          'empresa onde trabalha. Verifique está possibilidade '
                          'com o seu gerente. Lembre-se do passo a passo para '
                          'realizar a ordenha e armazenamento do leite. Para '
                          'transporte, você poderá utilizar uma caixa térmica '
                          'com gelo, ao chegar à residência poderá deixar na '
                          'geladeira por 12h. ou no freezer por 15 dias;'
                          '\n\u27A2Não se esqueça de identificar o frasco que '
                          'será coletado o leite, na parte externa, identifique'
                          ' com o seu nome, data da coleta e horário. ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images1/IMAGEM 03.jpg'),
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
                        text: '\u27A2O  leite ordenhado deve ser oferecido no '
                            'copinho. O passo a passo está disponível clicando '
                            'no atalho:',
                        children: <TextSpan>[
                          TextSpan(
                              text: '\u279CAlimentação por copinho',
                              recognizer: TapGestureRecognizer(),
                              style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.underline
                              )
                          ),
                          const TextSpan(text:'.  O ideal é iniciar a alimentação por'
                              ' copinho dias antes da mamãe voltar a trabalhar,'
                              ' assim a mamãe fica mais tranquila e confiante '
                              'em oferecer somente o leite materno. Treine '
                              'alguém de confiança para dar o leite no copinho '
                              'para sua criança;')
                        ]
                    ),
                  ),
                ),
                Image.asset('images1/Gif-1.gif'),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: const TextSpan(
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        text: 'Lembre-se:',
                        children: <TextSpan>[
                          TextSpan(
                              text:' É possível continuar com o leite '
                              'materno ao retornar ao trabalho! Você consegue! '
                              'Caso venha a complementar o leite materno com a '
                              'fórmula infantil, continue oferecendo a mama a '
                              'criança! O leite materno é essencial para a '
                              'criança e todo esforço vale a pena.',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          )
                        ]
                    ),
                  ),
                ),
              ],
            ),
          )

        ],
      ),
    );

  }
}