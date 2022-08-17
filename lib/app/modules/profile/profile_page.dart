import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo/app/modules/profile/profile_store.dart';
import 'package:flutter/material.dart';

import '../edit_profile/editProfile_store.dart';
import '../models/kid_model.dart';
import '../register/register_store.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  const ProfilePage({Key? key, this.title = 'Perfil'}) : super(key: key);
  @override
  ProfilePageState createState() => ProfilePageState();
}
class ProfilePageState extends State<ProfilePage> {
  final EditProfileStore store = Modular.get();
  final RegisterStore reg = Modular.get();



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
      appBar: AppBar(
        title: const Text("Perfil", style: TextStyle(
        ),), 
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 1,
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back_ios_new),
        //   onPressed: (){
        //      Modular.to.popUntil(ModalRoute.withName("/homecontent/"));
        //   },
        // ),
      ),
      body: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 16),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 5,
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 5)
                  )],
                  color: Colors.green,
                  
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(32),
                      bottomLeft: Radius.circular(32)),
                ),
                
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children:  <Widget>[


                                Observer(
                                builder: (_){
                                return Text('Mãe:   ${store.controllerMomName.text}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                    ),
                                  );
                                  
                                }
                              ),
                              

                              
                                Observer(
                                builder: (_){
                                return Text('Criança:   ${store.controllerKidName.text}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                    ),
                                  );
                                  
                                }
                              ),
                              

                              Observer(
                                builder: (_){
                                return Text('Aniversario:   ${store.controllerBirth.text}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                    ),
                                  );
                                  
                                }
                              ),

                            ],
                          ),
                        ),
            
                           Padding(
                             padding: const EdgeInsets.only(right: 20),
                             child: Observer(
                              builder: (_) {
                               return CircleAvatar(
                               radius: 45,
                               backgroundColor: Colors.black,
                               backgroundImage: NetworkImage(store.photoURL),
                                 );
                              }),
                              ),
                              
                            ],
                          ),
                          ElevatedButton(onPressed: (){Modular.to.pushReplacementNamed("/editprofile/");}, child: const Text("Editar"))
                        ]
                      ),
                    )
                  ),
                 const Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: TabBar(
                      labelColor: Colors.green,
                      indicator:  UnderlineTabIndicator(
                       borderSide: BorderSide(width: 2.5, color: Colors.green),
                       insets: EdgeInsets.symmetric(horizontal: 30.0),
                       
                     ),
                     indicatorColor: Colors.green,
                     tabs: [
                       Tab(
                         text: "Fotos",
                         ),
                       Tab(
                         text: "Videos",
                         ),
                     ],
                     
                ),
                  ),
                Container(
                  height: MediaQuery.of(context).size.height *.543,
                  child: TabBarView(
                    children: [
                      GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 4,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[100],
                          child: const Text("He'd have you all unravel at the"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[200],
                          child: const Text('Heed not the rabble'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[300],
                          child: const Text('Sound of screams but the'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[400],
                          child: const Text('Who scream'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[500],
                          child: const Text('Revolution is coming...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                      ],
                    ),
                      GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 4,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[100],
                          child: const Text("He'd have you all unravel at the"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[200],
                          child: const Text('Heed not the rabble'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[300],
                          child: const Text('Sound of screams but the'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[400],
                          child: const Text('Who scream'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[500],
                          child: const Text('Revolution is coming...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                      ],
                    ),
                ],
              ),    
            ),        
          ],  
        ),
        
    ));
  }
}