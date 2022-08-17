import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo/app/modules/initial/initial_store.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';

class InitialPage extends StatefulWidget {
  final String title;
  const InitialPage({Key? key, this.title = 'InitialPage'}) : super(key: key);
  @override
  InitialPageState createState() => InitialPageState();
}
class InitialPageState extends State<InitialPage> {
  final InitialStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: const Color.fromARGB(255, 255, 193, 143),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
                      child: Image.asset("images/logo/LogoMov.gif", width: 290),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 50, right: 50, bottom: 0),
                      child: 
                        Observer(
                          builder: (_) {
                            return TextField(
                                controller: store.controllerEmail,
                            // onChanged:(value) => store.changePass,
                                decoration: InputDecoration(
                                    labelText: "Email",
                                  //  errorText: store.validatePass(),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                              )
                            )
                          );
                        }
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
                      child: 
                        Observer(
                          builder: (_) {
                            return TextField(
                                controller: store.controllerPass,
                                onChanged:(value) => store.changePass,
                                decoration: InputDecoration(
                                    labelText: "Senha",
                                    errorText: store.validatePass(),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                              )
                            )
                          );
                        }
                      )
                    ),
              
                    SizedBox(height: 50),
                    Center(child: 
                        Text("${store.error}", style: TextStyle(color: Colors.red, fontSize: 20),)
                      ),
              
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: OutlinedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(20),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 255, 255, 255)),
                        ),
                        onPressed: () {
                          // store.error != null ? Center(
                          //   child: Text("${store.error}")
                          // ) :
                           store.signInWithEmailAndPassword(UserModel());
                          
                        },
                        child: const Text(
                          "Entre agora!",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.green),
                        )
                      ),
                    ),              
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(20),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 255, 255, 255)),
                        ),
                        onPressed: () {
                          Modular.to.pushReplacementNamed("/register");
                        },
                        child: const Text(
                          "Primeira vez no Universo Prematuro?",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.green),
                        )
                      ),
                    ),
                    
                    SizedBox(height: 150,),
                  
                    
                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
  

  

// Container(
//             color: Colors.blue,
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height/2,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Observer(
//                   builder: (_) {
//                     return TextField(
//                     controller: store.controllerEmail,
//                     // onChanged:(value) =>  store.changeEmail,
//                         decoration: InputDecoration(
//                         // errorText: store.validateEmail(),
//                             labelText: "Email",
//                             border: OutlineInputBorder(
//                                      borderRadius: BorderRadius.circular(8),
//                             )
//                           )
//                         );
//                       }
//                     ),
//                 Observer(
//                   builder: (_) {
//                     return TextField(
//                     controller: store.controllerPass,
//                     // onChanged:(value) => store.changePass,
//                         decoration: InputDecoration(
//                             labelText: "Senha",
//                             // errorText: store.validatePass(),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8),
//                           )
//                         )
//                       );
//                   }),
//               ],
//             ),
//           )