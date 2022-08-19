// ignore_for_file: unused_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo/app/modules/register/register_store.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key? key, this.title = 'RegisterPage'}) : super(key: key);
  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  final RegisterStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registro"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 193, 143),
        elevation: 0,
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back_ios_new),
        //   onPressed: (){
        //      Modular.to.pushNamed("/");
        //   },
        // ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              color: const Color.fromARGB(255, 255, 193, 143),
              child: Column(
                children: [
                  Image.asset(
                    "images/logo/LogoMov.gif",
                    width: 350,
                  ),
                  Observer(builder: (_) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 60, left: 50, right: 50),
                      child: TextField(
                        controller: store.controllerEmail,
                        onChanged: (value) => store.changeEmail,
                        decoration: InputDecoration(
                          errorText: store.validateEmail(),
                        ),
                      ),
                    );
                  }),
                  Observer(builder: (_) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 50, right: 50),
                      child: TextField(
                        obscureText: true,
                        controller: store.controllerPass,
                        onChanged: (value) => store.changePass,
                        decoration: InputDecoration(
                          errorText: store.validatePass(),
                        ),
                      ),
                    );
                  }),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            // shape: MaterialStateProperty.all(OutlinedBorder)
                            ),
                        onPressed: store.isValid
                            ? () {
                                store.register(UserModel());
                                // store.save();
                                Modular.to
                                    .pushReplacementNamed("/editprofile/");
                              }
                            : null,
                        child: const Text('Cadastrar')),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
