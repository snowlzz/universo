// ignore_for_file: library_private_types_in_public_api

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:universo/app/modules/models/user_model.dart';

part 'initial_store.g.dart';

class InitialStore = _InitialStoreBase with _$InitialStore;
abstract class _InitialStoreBase with Store {

  

  @observable
  TextEditingController controllerEmail = TextEditingController();

  @observable
  TextEditingController controllerPass = TextEditingController();

  @observable
  String error = '';
  
  @observable
  bool loading = false;

  @action
  changeEmail(String value) => controllerEmail.text = value;

  @action
  changePass(String value) => controllerPass.text = value;

  validateEmail() {
    var user = UserModel();
    user.email = controllerEmail.text;
    if (user.email!.isEmpty) {
      return 'O campo é obrigatorio';
    } else if (!user.email!.contains("@")) {
      return 'Insira um e-mail válido!';

    }
  }
  validatePass() {
    var user = UserModel();
    user.pass = controllerPass.text;
    if (user.pass!.isEmpty) {
      return 'O campo é obrigatorio';
    } else if (user.pass!.length < 5) {
      return 'A senha precisa ter mais de 5 caracteres';

    }
  }

  @action
  Future signInWithEmailAndPassword(UserModel user) async {
    loading = true;
    FirebaseAuth auth = FirebaseAuth.instance;
    User usuarioLogado = auth.currentUser!;
    user.email = controllerEmail.text;
    user.pass = controllerPass.text;
    await Future.delayed(const Duration(seconds: 3)).whenComplete(() async {
      try {
        await auth.signInWithEmailAndPassword(email: user.email!, password: user.pass!).then((firebaseUser)  async {
          if(usuarioLogado != null) loading = false;
          await Future.delayed(const Duration(seconds: 1), (){
            Modular.to.pushNamed("/home/");
            print("sucesso");
          });
        });
        
      } on FirebaseAuthException catch (e) {
        loading = false;
        switch (e.code) {
          case "invalid-email":
            error = "E-mail inválido, por favor verifique.";
            break;
          case "wrong-password":
            error = "Senha incorreta.";
            break;
          case "user-not-found":
            error = "E-mail não cadastrado";
            break;
          case "user-disabled":
            error = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            error = "Too many requests. Try again later.";
            break;
          case "operation-not-allowed":
            error = "Signing in with Email and Password is not enabled.";
            break;
          default:
            error = "An undefined Error happened.";
        }
        print(error);
      }
    });
  }
}