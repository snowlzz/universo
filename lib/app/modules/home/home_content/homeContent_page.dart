// ignore_for_file: file_names

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:universo/app/modules/home/home_content/homeContent_store.dart';
import 'package:flutter/material.dart';

import '../../edit_profile/editProfile_store.dart';
import '../../register/register_store.dart';

class HomeContentPage extends StatefulWidget {
  final String title;
  const HomeContentPage({Key? key, this.title = 'HomeContentPage'})
      : super(key: key);
  @override
  HomeContentPageState createState() => HomeContentPageState();
}

class HomeContentPageState extends State<HomeContentPage> {
  final HomeContentStore store = Modular.get();
  final EditProfileStore ep = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 253, 158, 104),
        elevation: 0,
        leading: null,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 253, 158, 104),
                  Color.fromARGB(255, 255, 193, 143)
                ], begin: Alignment.center, end: Alignment.bottomCenter)),
                child: Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30, left: 20),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Observer(builder: (_) {
                          return Text(
                            "Olá, ${ep.controllerMomName.text}!",
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          );
                        })),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              onPressed: () {
                                Modular.to.pushNamed("/cartilha/");
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white)),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * .3,
                                height: MediaQuery.of(context).size.height * .2,
                                child: Column(children: [
                                  const SizedBox(height: 15),
                                  Image.asset("images/buttons/BotaoUP.png",
                                      width: 100, height: 100),
                                  const SizedBox(height: 15),
                                  const Text(
                                    "Cartilha",
                                    style: TextStyle(color: Colors.green),
                                  )
                                ]),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              onPressed: () {
                                Modular.to.pushNamed("/noticias/");
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white)),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * .3,
                                height: MediaQuery.of(context).size.height * .2,
                                child: Column(children: [
                                  const SizedBox(height: 15),
                                  Image.asset("images1/botaokm.png",
                                      width: 100, height: 100),
                                  const SizedBox(height: 15),
                                  const Text(
                                    "Noticias",
                                    style: TextStyle(color: Colors.green),
                                  )
                                ]),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              onPressed: () {
                                Modular.to.pushNamed("/projeto/");
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white)),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * .3,
                                height: MediaQuery.of(context).size.height * .2,
                                child: Column(children: [
                                  const SizedBox(height: 15),
                                  Image.asset("images/buttons/BotaoUP.png",
                                      width: 100, height: 100),
                                  const SizedBox(height: 15),
                                  const Text(
                                    "O Projeto",
                                    style: TextStyle(color: Colors.green),
                                  )
                                ]),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              onPressed: () {
                                Modular.to.pushNamed("/producoes/");
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white)),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * .3,
                                height: MediaQuery.of(context).size.height * .2,
                                child: Column(children: [
                                  const SizedBox(height: 15),
                                  Image.asset("images1/botao bate papo.png",
                                      width: 100, height: 100),
                                  const SizedBox(height: 15),
                                  const Text(
                                    "Produções",
                                    style: TextStyle(color: Colors.green),
                                  )
                                ]),
                              )),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.05,
                    height: MediaQuery.of(context).size.height / 1.688,
                    alignment: Alignment.bottomCenter,
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(26),
                          topLeft: Radius.circular(26),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0, left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Observer(builder: (_) {
                                  return Text(
                                    'Mãe: ${ep.controllerMomName.text}',
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  );
                                }),
                                Observer(builder: (_) {
                                  return Text(
                                    'Aniversário: ${ep.controllerBirthMom.text}',
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  );
                                }),

                            Padding(
                              padding: const EdgeInsets.only(top: 195.0),
                              child: CircularPercentIndicator(
                                radius: 60, 
                                lineWidth: 5,
                                percent: 90/100,
                                center: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Tarefas completas\n90%", textAlign: TextAlign.center,style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold )),
                                ),
                              ),
                            ),
                            
                         

                                // Observer(
                                //   builder: (_){
                                //   return Text('Mãe:   ${ep.controllerMomName.text}',
                                //     style: const TextStyle(
                                //       color: Colors.white,
                                //       fontWeight: FontWeight.w600
                                //       ),
                                //     );

                                //   }
                                // ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 95.0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Observer(builder: (_) {
                                return CircleAvatar(
                                  radius: 45,
                                  backgroundColor: Colors.black,
                                  backgroundImage: NetworkImage(ep.momURL),
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ])),
          ],
        ),
      ),
    );
  }
}




// class Card extends StatelessWidget {
//   final String text;
//   final String imageUrl;
//   final String subtitle;

//   Card(this.text, this.imageUrl, this.subtitle, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 25.0, bottom: 15),
//       child: Container(
//         width: 150,
//         height: 150,
//         padding: const EdgeInsets.all(15.0),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12.5),
//           boxShadow: [
//             BoxShadow(
//                 offset: const Offset(10, 20),
//                 blurRadius: 10,
//                 spreadRadius: 0,
//                 color: Colors.grey.withOpacity(.05)),
//           ],
//         ),
//         child: Column(
//           children: [
//             Image.network(imageUrl, height: 70, fit: BoxFit.cover),
//             Spacer(),
//             Text(text,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18,
//                 )),
//             SizedBox(
//               height: 5,
//             ),
//             Text(
//               subtitle,
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                   color: Colors.grey,
//                   fontWeight: FontWeight.normal,
//                   fontSize: 12),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
