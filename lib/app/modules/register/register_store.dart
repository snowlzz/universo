// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../models/user_model.dart';

part 'register_store.g.dart';

class RegisterStore = _RegisterStoreBase with _$RegisterStore;
abstract class _RegisterStoreBase with Store {


  @observable
  TextEditingController controllerEmail = TextEditingController();

  @observable
  TextEditingController controllerPass = TextEditingController();

  @observable
  TextEditingController controllerName = TextEditingController();

  @observable
  String? idLogado;

  @action
  changeEmail(String value) => controllerEmail.text = value;

  @action
  changePass(String value) => controllerPass.text = value;

  @computed
  bool get isValid {
    return validatePass() == null && validateEmail() == null;
  }

  @action
  register(UserModel user){
    FirebaseAuth auth = FirebaseAuth.instance;
    user.email = controllerEmail.text;
    user.pass = controllerPass.text;
    auth.createUserWithEmailAndPassword(email: user.email!, password: user.pass!).then((firebaseUser) {
      save();
    }).catchError((e) {
      e = "Erro ao cadastrar usuario.";
      return e;
    });
  }

  // @action
  // registerUser(UserModel user) {
  //   FirebaseAuth auth = FirebaseAuth.instance;
  //   user.email = controllerEmail.text;
  //   user.pass = controllerPass.text;
  //   auth.createUserWithEmailAndPassword(
  //     email: controllerEmail.text,
  //     password: controllerPass.text,
  //   ).then((firebaseUser){
  //     save();
  //     Modular.to.pushNamed('/editprofile');
  //   });
    
  // }



  @action
  save() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    UserModel user = UserModel();
    FirebaseFirestore db = FirebaseFirestore.instance;
    User usuarioLogado =  await auth.currentUser!;
    idLogado = usuarioLogado.uid;
    

    user.email = controllerEmail.text;
    user.pass = controllerPass.text;


    Map<String, dynamic> data = {
      "email" : user.email,
      "pass" : user.pass
    };
    db.collection("users").doc(idLogado).set(data);
    print("salvo");

  }

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



   
}