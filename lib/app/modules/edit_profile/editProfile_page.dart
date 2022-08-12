// ignore_for_file: file_names
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo/app/modules/edit_profile/editProfile_store.dart';
import 'package:flutter/material.dart';

import '../models/kid_model.dart';


class EditProfilePage extends StatefulWidget {
  final String title;
  const EditProfilePage({Key? key, this.title = 'EditProfilePage'}) : super(key: key);
  @override
  EditProfilePageState createState() => EditProfilePageState();
}
class EditProfilePageState extends State<EditProfilePage> {
  gradient2(){
      return const LinearGradient(colors: [Color.fromARGB(255, 151, 115, 85), Color.fromARGB(255, 255, 193, 143)]);
    }

    @override
  void initState() {
    store.recoveryData();
    super.initState();
  }
  final EditProfileStore store = Modular.get();
  KidModel model = KidModel();


  var maskDate = MaskTextInputFormatter(
      mask: '##/##/####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  var maskGage = MaskTextInputFormatter(
      mask: 'Semanas: ##, Dias: ##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Editar Perfil"), 
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 253, 158, 104),
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
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration:  const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 253, 158, 104), Color.fromARGB(255, 255, 193,143)],
                  begin: Alignment.center,
                  end: Alignment.bottomCenter
                  )),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // ElevatedButton(
                    //   onPressed: (){
                    //     Modular.to.popAndPushNamed("/home");
                    //   }, child: const Text("Voltar")
                    // ),
                    Observer(
                    builder: (_) {
                    return Center(
                      child: CircleAvatar(
                        radius: 65,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(store.photoURL),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: store.upload
                                ? const CircularProgressIndicator()
                                : Container()
                              ),
                        
                        ));
                    }
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        child: const Text("Câmera",
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {
                          store.selectPhoto("camera");
                        },
                      ),
                      TextButton(
                        child: const Text("Galeria",
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {
                          store.selectPhoto("galeria");
                        },
                      ),
                    ],
                  ),
              
                    SizedBox(
                    height: MediaQuery.of(context).size.height/2.2,
                    width: 390,
                    
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        color: Colors.white,
                        child: 
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                
                                  TextField(
                                    controller: store.controllerKidName,
                                    decoration: InputDecoration(
                                      labelText: 'Nome da criança',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20)
                                      )
                                    ),
                                  ),  
                              
                                const SizedBox(height: 10),
                                TextField(
                                  inputFormatters: [maskDate],
                                  controller: store.controllerBirth,
                                  decoration: InputDecoration(
                                    labelText: 'Nascimento',
                                    hintText: "DD/MM/AAAA",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)
                                    )
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TextField(
                                  inputFormatters: [maskGage],
                                  controller: store.controllerWeeks,
                                  decoration: InputDecoration(
                                    labelText: 'Idade Gestacional',
                                    hintText: "Semanas: ##, Dias: ##",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)
                                    )
                                  ),
                                ),
                                Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Masculino", style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color.fromARGB(255, 101, 187, 88)
                          )),
                          Observer(builder: (_){
                            return Radio(
                            value: "masculino",
                            toggleable: true,
                            groupValue: store.escolhaUser, 
                            onChanged: (String?  escolha){
                              store.escolhaUser = escolha!;
                            });
              
                          }),
                          const Text("Feminino",style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color.fromARGB(255, 255, 193, 143)
                          )),
                          Observer(
                            builder: (_) {
                            return Radio(
                              value: "feminino",
                              toggleable: true,
                              groupValue: model.gender, 
                              onChanged: (String? escolha){
                                store.escolhaUser = escolha!;
                              });
                            }
                          ),
                      ]),
                    ),
                              ]
                            )
                          )
                        )
                      )
                    ),
                    
                              
                    
                    Observer(
                    builder: (_) {
                    return Center(
                      child: CircleAvatar(
                        radius: 65,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(store.momURL),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: store.upload1
                                ? const CircularProgressIndicator()
                                : Container()
                              ),
                        
                        ));
                    }
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        child: const Text("Câmera",
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {
                          // store.selectMomPhoto("camera");
                        },
                      ),
                      TextButton(
                        child: const Text("Galeria",
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {
                          // store.selectMomPhoto("galeria");
                        },
                      ),
                    ],
                  ),
              
                    SizedBox(
                    height: MediaQuery.of(context).size.height/2.5,
                    width: 390,
                    
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        color: Colors.white,
                        child: 
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextField(
                                  controller: store.controllerMomName,
                                  decoration: InputDecoration(
                                    labelText: 'Nome',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)
                                    )
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TextField(
                                  inputFormatters: [maskDate],
                                  controller: store.controllerBirthMom,
                                  decoration: InputDecoration(
                                    labelText: 'Nascimento',
                                    hintText: "DD/MM/AAAA",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)
                                    )
                                  ),
                                ),
                                const SizedBox(height: 10),
                                
                              ]))))),
                              OutlinedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(20),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 255, 255, 255)),
                        ),
                        onPressed: () {
                          store.saveData();
                          Modular.to.pushNamed("/home/");
                          // Modular.to.pushReplacementNamed("/profile/");
                        },
                        child: const Text(
                          "Entre agora!",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.green),
                        )
                      ),
                          const SizedBox(height: 150),
                              
                          
                ]),
              ),
            

            // CARD MOM

            
                  
        )]
        ),      
      ),
    );
  }
}

