import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo/app/modules/crescimento/material/tip/tip_store.dart';
import 'package:flutter/material.dart';

class TipPage extends StatefulWidget {
  final String title;
  const TipPage({Key? key, this.title = 'TipPage'}) : super(key: key);
  @override
  TipPageState createState() => TipPageState();
}
class TipPageState extends State<TipPage> {
  final TipStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Crescimento"), 
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 193, 143),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: (){
             Modular.to.popAndPushNamed("/crescimento");
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: 
            LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 254, 187, 132), Color.fromARGB(255, 255, 183, 143)])),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 30,
              crossAxisSpacing: 30,
              children: [
                ElevatedButton(
                  onPressed: (){
                    Modular.to.pushNamed("/tip/tip1");
                  }, 
                  child: const Text(
                    "Dicas iniciais para as mamães",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed('/tip/tip2');}, 
                  child: const Text(
                    "Importância do aleitamento materno",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed('/tip/tip3');}, 
                  child: const Text(
                    "Cuidados com a mama",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed('/tip/tip4');}, 
                  child: const Text(
                    "Posições da criança durante o aleitamento",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                    
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed('/tip/tip5');}, 
                  child: const Text(
                    "Posições da mamãe para amamentação",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed('/tip/tip6');}, 
                  child: const Text(
                    "Pega da criança ao seio - Correta e Incorreta",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed('/tip/tip7');}, 
                  child: const Text(
                    "Inicio da mamada",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed('/tip/tip8');}, 
                  child: const Text(
                    "Passo a passo para a amamentação",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip9");}, 
                  child: const Text(
                    "Aleitamento materno em livre demanda",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    
                    )),
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip10");}, 
                  child: const Text(
                    "Técnicas que auxiliam a amamentação",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip11");}, 
                  child: const Text(
                    "Principais problemas relacionados a mama",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip12");}, 
                  child: const Text(
                    "Final da mamada",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),


                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip13");}, 
                  child: const Text(
                    "Verdades e mitos sobre a amamentação",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                // ElevatedButton(
                //   onPressed: (){Modular.to.pushNamed("/tip/tip14");}, 
                //   child: const Text(
                //     "Retorno ao trabalho",
                //     textAlign: TextAlign.center,
                //     style: TextStyle(
                //       fontSize: 18,
                //       fontWeight: FontWeight.w600
                //     ),
                //     )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip15");}, 
                  child: const Text(
                    "Perguntas sobre a amamentação e o uso do app",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip16");}, 
                  child: const Text(
                    "Amamentação/fórmula e a introdução a alimentos",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip17"); }, 
                  child: const Text(
                    "Introdução Alimentar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip18"); }, 
                  child: const Text(
                    "Introdução Alimentar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip19"); }, 
                  child: const Text(
                    "Introdução Alimentar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip20"); }, 
                  child: const Text(
                    "Introdução Alimentar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip21"); }, 
                  child: const Text(
                    "Introdução Alimentar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip22"); }, 
                  child: const Text(
                    "Introdução Alimentar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip23"); }, 
                  child: const Text(
                    "Introdução Alimentar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip24"); }, 
                  child: const Text(
                    "Introdução Alimentar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip25"); }, 
                  child: const Text(
                    "Introdução Alimentar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip26"); }, 
                  child: const Text(
                    "Introdução Alimentar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip27"); }, 
                  child: const Text(
                    "Introdução Alimentar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip28"); }, 
                  child: const Text(
                    "Introdução Alimentar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip29"); }, 
                  child: const Text(
                    "Introdução Alimentar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip30"); }, 
                  child: const Text(
                    "Introdução Alimentar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip31"); }, 
                  child: const Text(
                    "Introdução Alimentar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip32"); }, 
                  child: const Text(
                    "Introdução Alimentar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip33"); }, 
                  child: const Text(
                    "Introdução Alimentar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip34"); }, 
                  child: const Text(
                    "Introdução Alimentar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip35"); }, 
                  child: const Text(
                    "Introdução Alimentar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/tip/tip36"); }, 
                  child: const Text(
                    "Introdução Alimentar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),


                  SizedBox(
                  height: 50, 
                  child: OutlinedButton(
                    onPressed: (){
                    Modular.to.pushNamed("/home/");
                  },
                  child: const Text("Home")
                  ),
                ),

                 
                const SizedBox(height: 100)
              ],
              
              ),
          ),
        ),
      )
    );
  }
}