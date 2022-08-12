import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Tip11Page extends StatefulWidget {
  final String title;
  const Tip11Page({Key? key, this.title = 'Tip11Page'}) : super(key: key);
  @override
  Tip11PageState createState() => Tip11PageState();
}
class Tip11PageState extends State<Tip11Page> {
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

          const SizedBox(height: 10.0,),
          const Text(
            'Principais problemas com as mamas',
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
                      'Os problemas relacionados com a mama ocorrem geralmente '
                          'nos primeiros meses da amamentação. Mas caso tenha '
                          'alguma alteração na mama que está dificultando a '
                          'amamentação, veja os conteúdos abaixo e tire suas '
                          'dúvidas:',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '1 - Bico da mama dolorido e/ou machucado'
                          '\n2 - Ingurgitamento mamário (mama empedrada)'
                          '\n3 - Mastite (Inflamação da mama)',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images1/figura 07.jpg'),

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
                      '1 - Bico da mama dolorido e/ou machucado',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20.0,),
                const Text(
                  'Causas:',
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
                      '\u27A2Pega e posição da criança de forma errada;'
                          '\n\u27A2Bico do peito pequeno ou invertido (bico do '
                          'peito para dentro da mama);\n\u27A2Uso de bombas de '
                          'extração de leite;\n\u27A2Puxar a criança do seio;'
                          '\n\u27A2Uso de cremes, pomadas e óleos;\n\u27A2'
                          'Uso de protetores de mamilos e forros úmidos;',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images1/IMAGEM 11.jpg'),

                const SizedBox(height: 20.0,),
                const Text(
                  'Condutas/ Prevenção:',
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
                      text: '\u27A2Procure um profissional de saúde para orientação;'
                          '\n\u27A2Amamentar com a técnica correta;'
                          '\n\u27A2Passar o próprio leite na mama após as '
                          'mamadas, e expor a mama ao sol por 15 minutos, antes'
                          ' das nove horas da manhã e depois das dezesseis horas;'
                          '\n\u27A2Evitar o uso de produtos que retiram a '
                          'proteção da pele do bico do peito, como sabão por exemplo;'
                          '\n\u27A2Evitar banhos muitos quentes;'
                          '\n\u27A2Amamentar a criança em livre demanda, assim '
                          'que a criança der sinais que está com fome, sem '
                          'horários definidos;'
                          '\n\u27A2Ordenhar a mama com as mãos, antes da mamada'
                          ', se a aréola estiver endurecida. Caso tenha dúvida '
                          'sobre como realizar a ordenha, acesse o atalho '
                          'clicando aqui: ',
                      children: <TextSpan>[
                        TextSpan(
                          text: '\u279COrdenha Manual',
                          recognizer: TapGestureRecognizer(),
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline
                          )
                        ),
                        const TextSpan(
                          text: '\n\u27A2Se a criança não largar o seio após a mamada'
                        ', introduzir o dedo mínimo (mindinho) ou indicador '
                        '(fura-bolo) para que a criança solte a mama.  Em caso'
                        ' de dúvida, acesse o atalho clicando aqui: '
                        ),
                        TextSpan(
                            text: '\u279CPega da criança ao seio',
                            recognizer: TapGestureRecognizer(),
                              
                            style: const TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.underline
                            )
                        ),
                        const TextSpan(text:';\n\u27A2Não usar protetores para a mama;')
                      ]
                    ),
                  ),
                ),
                Image.asset('images1/Gif---3.gif'),
                const SizedBox(height: 10.0,),
                Image.asset('images1/IMAGEM 10.jpg'),

                const SizedBox(height: 20.0,),
                const Text(
                  'Dicas',
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
                      '\u27A2Corrigir a pega e posição da criança;'
                          '\n\u27A2A mamãe deve continuar a amamentar mesmo com'
                          ' o bico do peito machucado, com a pega correta a dor'
                          ' e sensibilidade vão melhorar;'
                          '\n\u27A2Se o bico do peito está machucado, inicia a '
                          'mamada pela mama que não está machucada ou está menos'
                          ' dolorida;'
                          '\n\u27A2Mude a posição da criança nas mamadas '
                          'seguintes, isso reduz a pressão que a criança faz na'
                          ' mama durante a retirada do leite.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images1/imagem 09.jpg'),
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
                      '2 - Ingurgitamento mamário (mama empedrada)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '\u27A2Mama fica endurecida e dolorida, o que dificulta a saída do leite;'
                          '\n\u27A2Mama pode ficar com pontos avermelhados e com a pele brilhante;'
                          '\n\u27A2Bico do peito reduz de tamanho, dificultando a pega da criança;',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images1/figura 07.jpg'),
                const SizedBox(height: 20.0,),

                const Text(
                  'Causas:',
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
                      '\u27A2Produção de muito leite, e a criança não consegue '
                          'esvaziar o peito;'
                          '\n\u27A2Início tardio da amamentação;'
                          '\n\u27A2Frequência das mamadas reduzidas;'
                          '\n\u27A2Pouca sucção (retirada do leite) da criança;'
                          '\n\u27A2Uso de chupetas e mamadeiras.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                const SizedBox(height: 20.0,),

                const Text(
                  'Prevenção/ condutas:',
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
                      '\u27A2Procurar um profissional de saúde para orientação;'
                          '\n\u27A2Se a parte escura da mama (aréola) estiver '
                          'endurecida, fazer massagem suave, e ordenhar a mama,'
                          ' antes de oferecer o peito para criança. A aréola '
                          'deve estar macia, facilitando a retirada de leite '
                          'pela criança;'
                          '\n\u27A2Iniciar a amamentação o mais cedo possível;'
                          '\n\u27A2Amamentar em livre demanda, em qualquer horário;'
                          '\n\u27A2Verificar se a pega da criança ao seio está correta;'
                          '\n\u27A2Utilizar sutiã com alça larga, que fornece suporte a mama;'
                          '\n\u27A2Após as mamadas, pode ser feito compressas '
                          'frias (pano molhado em água fria), para aliviar a '
                          'dor.  Não fazer as compressas antes das mamadas e não'
                          ' deve passar de 20 minutos cada compressa;'
                          '\n\u27A2Se a criança não conseguir tirar o leite, '
                          'faça a ordenha manual e ofereça o leite no copinho;'
                          '\n\u27A2Não faça a reelactação, pois a mama já está '
                          'com muito leite;'
                          '\n\u27A2Uso de medicamento para dor, só com prescrição médica.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images1/Gif---3.gif'),
                const SizedBox(height: 20.0,),

                const Text(
                  'Dicas:',
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
                      '\u27A2Fique de olha na pega e posição da criança se estão corretas;'
                          '\n\u27A2Não pare de amamentar.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images1/Gif---1.gif')

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
                      '3 - Mastite (Inflamação da mama)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0,),

                const Text(
                  'Característica da mama:',
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
                    'Mama muito dolorida, endurecida, pele avermelhada e estendida (pele esticada).',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Image.asset('images1/figura 07.jpg'),

                const SizedBox(height: 20.0,),
                const Text(
                  'Causas:',
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
                      '\u27A2Pega e posição inadequada;'
                          '\n\u27A2Redução do número de mamadas;'
                          '\n\u27A2Uso de chupetas e mamadeiras;'
                          '\n\u27A2Produção excessiva de leite;'
                          '\n\u27A2Criança com sucção (ato de retirar o leite) fraca;'
                          '\n\u27A2Separação entre mamãe e criança;'
                          '\n\u27A2Desmame (suspensão do aleitamento materno).',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images1/IMAGEM 11.jpg'),

                const SizedBox(height: 20.0,),
                const Text(
                  'Prevenção/ Conduta:',
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
                      '\u27A2Procure imediatamente um profissional de saúde para'
                          ' orientações e tratamento;'
                          '\n\u27A2Amamentar com a técnica correta;'
                          '\n\u27A2Amamentar a criança em livre demanda, assim '
                          'que a criança der sinais que está com fome, sem '
                          'horários definidos, em livre demanda;'
                          '\n\u27A2Ordenhar a mama com as mãos, antes da mama, '
                          'se a mama estiver endurecida;',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images1/imagem nova 01.png'),

                const SizedBox(height: 20.0,),
                const Text(
                  'Dicas',
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
                      '\u27A2Não suspender a amamentação na mama afetada;'
                          '\n\u27A2Seguir corretamente as orientações e utilizar as medicações prescritas pelo médico;'
                          '\n\u27A2Corrigir a pega e a posição da criança.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images1/IMAGEM 01.jpg'),

              ],
            ),
          )

        ],
      ),
    );
    
  }
}