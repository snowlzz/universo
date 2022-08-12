import 'package:mobx/mobx.dart';

class KidModel {
  
  @observable
  String? kidName;

  @observable
  String? birth;

  @observable
  String? weeks;

  @observable
  String? days;

  @observable
  String? gender;

  @observable
  String? idadeCorrigida;

  

  @action
  setName(String value) => kidName = value;
  
  @action
  setBirth(String value) => birth = value;
  
  @action
  setWeeks(String value) => weeks = value;
  
  @action
  setDays(String value) => days = value;

  @action
  setGender(String value) => gender = value;

  @action
  setIdade(String value) => idadeCorrigida = value;

  Map<String, dynamic> toMap() {
     Map<String, dynamic> map = {
      "criança": kidName, 
      "nasc.": birth,
      "genero": gender,
      "semanas": weeks
      
      };

     return map;
  }

}