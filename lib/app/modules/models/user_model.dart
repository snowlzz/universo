import 'package:mobx/mobx.dart';

class UserModel{


  @observable
  String? nameMom;

  @observable
  String? birthMom;

  @observable
  String? email;

  @observable
  String? pass;

  UserModel();






  @action 
  changeName(String value) => nameMom = value;

  @action 
  changeBirth(String value) => birthMom = value;

  @action 
  changeEmail(String value) => email = value;

  @action 
  changePass(String value) => pass = value; 

  

  Map<String, dynamic> toMap() {
     Map<String, dynamic> map = {"nome": nameMom, "email": email,  "nasc M": birthMom};
     return map;
  }

}