import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo/app/modules/projeto/projeto_store.dart';
import 'package:flutter/material.dart';

class ProjetoPage extends StatefulWidget {
  final String title;
  const ProjetoPage({Key? key, this.title = 'ProjetoPage'}) : super(key: key);
  @override
  ProjetoPageState createState() => ProjetoPageState();
}

class ProjetoPageState extends State<ProjetoPage> {
  final ProjetoStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "O Projeto",
            style: TextStyle(),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 253, 158, 104),
          elevation: 0,
          // leading: IconButton(
          //   icon: const Icon(Icons.arrow_back_ios_new),
          //   onPressed: (){
          //      Modular.to.popUntil(ModalRoute.withName("/homecontent/"));
          //   },
          // ),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 253, 158, 104),
              Color.fromARGB(255, 255, 193, 143)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Image.asset(
                      "images/logo/logologin.png",
                      width: 230,
                      height: 230,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 5))
                      ],
                    ),
                    width: MediaQuery.of(context).size.width * .85,
                    height: MediaQuery.of(context).size.height * 1.4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Text(
                            'O projeto “Universo Prematuro” envolve uma ferramenta '
                            'digital para oferecer o melhor cuidado longitudinal de '
                            'crianças nascidas prematuras (idade gestacional menor que'
                            ' 37 semanas) no período pós-alta hospitalar.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            'Os primeiros anos de vida é reconhecido como o período '
                            'alvo para alcançar melhores habilidades motoras, '
                            'cognitivas e psicossociais. Os estímulos direcionados '
                            'corretamente do ambiente, do meio social e familiar, para'
                            ' as crianças após o nascimento favorecem para o '
                            'desenvolvimento integral, que otimiza o potencial para a '
                            'vida adulta.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            'Esse aplicativo “Universo Prematuro” acompanhará o '
                            'desenvolvimento e crescimento da criança nascida '
                            'prematura, de forma supervisionada, interdisciplinar e '
                            'sistemática, com alcance no domicílio. O aplicativo '
                            'digital é um canal que gera proximidade entre os '
                            'profissionais e o cuidador da criança, e disponibilizará '
                            'informações referentes a estímulos direcionados para o '
                            'desenvolvimento das crianças. Com o conceito digital o '
                            'envio de dúvidas, registro temporal do desenvolvimento e '
                            'ao mesmo tempo os registros em vídeos e fotos serão '
                            'permitidos.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            'No aplicativo digital cada etapa cronológica de criança é'
                            ' registrada permitindo o acompanhando das conquistas dos '
                            'marcos motores. A vigilância do desenvolvimento infantil '
                            'pelo aplicativo possibilitará a identificação precoce de '
                            'sinais de alerta, sendo elemento de proteção ao '
                            'desenvolvimento da criança.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            'O aplicativo contará com tarefa de estímulo para a '
                            'criança com blocos de três em três meses do primeiro ano '
                            'de vida, as notificações são liberadas no aplicativo a '
                            'cada 10 dias para lembrar das atividades de estímulo e '
                            'registros.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            '“O Universo Prematuro” é para todas as crianças nascidas '
                            'prematuras, uma proteção para o direito do melhor '
                            'desenvolvimento.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          RichText(
                              text: const TextSpan(
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 16.0),
                          )),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Center(
                      child: Text("Parcerias",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                  const SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images1/chb.png",
                              width: 220,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "images1/capes.png",
                              width: 220,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "images1/fapesp.png",
                              width: 220,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "images1/prefeitura.png",
                              width: 220,
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Image.asset(
                              "images1/unifran.png",
                              width: 220,
                            ),
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  InteractiveViewer(
                      panEnabled: false, // Set it to false to prevent panning.
                      boundaryMargin: const EdgeInsets.all(80),
                      maxScale: 3,
                      minScale: 1,
                      child: Image.asset(
                        "images1/mapa.png",
                        fit: BoxFit.cover,
                      )),
                  const SizedBox(
                    height: 65,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

// children: <TextSpan>[
//                                 TextSpan(
//                                   text: 'Parcerias:',
//                                   style: TextStyle(fontWeight: FontWeight.bold),
//                                 ),
//                                 TextSpan(
//                                   text:
//                                       '\n\t\t\tFaculdade de Motricidade Humana - '
//                                       'Universidade de Portugal - Lisboa'
//                                       '\n\t\t\tPrograma de Pós-graduação em Linguística - Universidade de Franca'
//                                       '\n\t\t\tSetor de Tecnologia da Informação da '
//                                       'Universidade de Franca'
//                                       '\n\t\t\tNúcleo de Design - Universidade de Franca',
//                                 ),
//                                 TextSpan(
//                                   text: '\n\nApoio:',
//                                   style: TextStyle(fontWeight: FontWeight.bold),
//                                 ),
//                                 TextSpan(
//                                   text:
//                                       '\n\t\t\t Fundação de Amparo à Pesquisa do Estado'
//                                       ' de São Paulo (FAPESP)'
//                                       '\n\t\t\tCoordenação de Aperfeiçoamento de Pessoal '
//                                       'de Nível Superior (CAPES)',
//                                 ),
//                               ],
//                             ),

// Column(

//           children: <Widget>[

//             Image.asset('images/logo/LogoMov.gif',height: 200.0,),

//             const SizedBox(height: 20.0,),
