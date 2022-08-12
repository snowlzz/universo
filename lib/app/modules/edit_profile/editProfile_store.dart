// ignore_for_file: file_names, library_private_types_in_public_api, no_leading_underscores_for_local_identifiers, avoid_print

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../models/kid_model.dart';

part 'editProfile_store.g.dart';

class EditProfileStore = _EditProfileStoreBase with _$EditProfileStore;
abstract class _EditProfileStoreBase with Store {

  FirebaseStorage storage = FirebaseStorage.instance;

  @observable
  TextEditingController controllerKidName = TextEditingController();

  @observable
  TextEditingController controllerBirth = TextEditingController();

  @observable
  TextEditingController controllerWeeks = TextEditingController();

  @observable
  TextEditingController controllerDays = TextEditingController();

  @observable
  TextEditingController controllerMomName = TextEditingController();

  @observable
  TextEditingController controllerBirthMom = TextEditingController();

  @observable
  int? idadeCorrigida;


  @observable
  String? idLogado;

  @observable
  int gestation = 40;

  @observable
  XFile? kidPhoto; 

  @observable
  XFile? momPhoto; 

  @observable
  bool upload = false;

  @observable
  bool upload1 = false;

  @observable
  String photoURL = '';

  @observable
  String momURL = '';

  @observable
  String? escolhaUser;

  // SAVE DB

  Future saveData() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore db = FirebaseFirestore.instance;
    User usuarioLogado = auth.currentUser!;
    idLogado = usuarioLogado.uid;
    KidModel model = KidModel();
    model.kidName = controllerKidName.text;
    model.birth = controllerBirth.text;
    model.weeks = controllerWeeks.text;
    model.days = controllerDays.text;

    Map<String, dynamic> data = {
      "nome": model.kidName,
      "nasc": model.birth,
      "genero": model.gender,
      "semanas": model.weeks,
      "dias": model.days
    };
    db.collection("users").doc(idLogado).update(data).then((firebaseUser) {
      saveData();
      
    });

  }
  recoveryData() {
    FirebaseAuth auth = FirebaseAuth.instance;
    User usuarioLogado = auth.currentUser!;
    idLogado = usuarioLogado.uid;
    FirebaseFirestore db = FirebaseFirestore.instance;
    final docRef = db.collection("users").doc(idLogado);
    docRef.get().then((DocumentSnapshot doc){
      final data = doc.data as Map<String, dynamic>;
      controllerKidName.text = data["crianca"];
      controllerBirth.text = data["nasc"];
      controllerWeeks.text = data["semanas"];
    } );
    return docRef;
  }


  

  

  // CORRECTED AGE

  // Future<int> correctAge() async {
  //   int? idadeCorrigida;
  //   idadeCorrigida = int.tryParse(controllerBirth.text.substring(1, 40))! - gestation - int.tryParse(controllerWeeks.text.substring(20, 40))!;
  //   print(idadeCorrigida);    
  //   return idadeCorrigida;
  // }

  // Kid's photo
  
  Future selectPhoto(String origem) async {
    final ImagePicker _picker = ImagePicker();
    XFile? selectedPhoto;
    if(origem == "camera"){
      selectedPhoto = await _picker.pickImage(source: ImageSource.camera);
      kidPhoto = selectedPhoto;
      if(kidPhoto != null){
        uploadPhoto();
        upload = true;
      }
    } else if (origem == "galeria"){
        selectedPhoto = await _picker.pickImage(source: ImageSource.gallery);
        kidPhoto = selectedPhoto;
        if(kidPhoto != null){
          uploadPhoto();
          upload = true;
      }
    }
  }

  

  Future uploadPhoto() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User usuarioLogado = auth.currentUser!;
    idLogado = usuarioLogado.uid;
    File file = File(kidPhoto!.path);
    Reference pastaRaiz = storage.ref();
    Reference arquivo = pastaRaiz.child("perfil").child("kid.jpg");
    UploadTask task = arquivo.putFile(file);
    task.snapshotEvents.listen((TaskSnapshot storageEvent) {
      if(storageEvent.state == TaskState.running){
        upload = true;
      } else if (storageEvent.state == TaskState.success){
        upload = false;
      }
     });
     task.then((TaskSnapshot taskSnapshot) => recoveryPhotoURL(taskSnapshot));
     await Future.delayed(const Duration(seconds: 2));
  }

  Future recoveryPhotoURL(TaskSnapshot taskSnapshot) async {
    String url = await taskSnapshot.ref.getDownloadURL();
    photoURL = url;
  }


  // MOM PHOTO
  Future selectMomPhoto(String origem) async {
    final ImagePicker _picker = ImagePicker();
    XFile? selectedMomPhoto;
    if(origem == "camera"){
      selectedMomPhoto = await _picker.pickImage(source: ImageSource.camera);
      momPhoto = selectedMomPhoto;
      if(momPhoto != null){
        uploadMomPhoto();
        upload1 = true;
      }
    } else if (origem == "galeria"){
        selectedMomPhoto = await _picker.pickImage(source: ImageSource.gallery);
        momPhoto = selectedMomPhoto;
        if(momPhoto != null){
          uploadMomPhoto();
          upload1 = true;
      }
    }
  }

  Future uploadMomPhoto() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User usuarioLogado = auth.currentUser!;
    idLogado = usuarioLogado.uid;
    File file = File(momPhoto!.path);
    Reference pastaRaiz = storage.ref();
    Reference arquivo = pastaRaiz.child("perfil").child("$idLogado.jpg");
    UploadTask task = arquivo.putFile(file);
    task.snapshotEvents.listen((TaskSnapshot storageEvent) {
      if(storageEvent.state == TaskState.running){
        upload1 = true;
      } else if (storageEvent.state == TaskState.success){
        upload1 = false;
      }
     });
     task.then((TaskSnapshot taskSnapshot) => recoveryMomPhotoURL(taskSnapshot));
     await Future.delayed(const Duration(seconds: 2));
  }

  Future recoveryMomPhotoURL(TaskSnapshot taskSnapshot) async {
    String url2 = await taskSnapshot.ref.getDownloadURL();
    momURL = url2;
  }
  

}