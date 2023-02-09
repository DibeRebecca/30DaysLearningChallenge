import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Launch extends StatelessWidget {
  const Launch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:const [
          SizedBox(height: 350,),
         
           Center(child: Text("Baobab",style: TextStyle(fontSize: 22,fontFamily: 'Montserrat', color: Colors.green ,fontWeight: FontWeight.bold)),),
            Center(
            child: Text("Plateforme d'informations de",style: TextStyle(fontSize: 18,color: Colors.green),),
          ),
           Center(
            child: Text("l'Université de Lomé",style: TextStyle(fontSize: 18,color: Colors.green),),
          ),
           SizedBox(height: 300,),
           Image(image: AssetImage('assets/images/logo-ul.png',),width: 200,)
        ],
      ) ,) 
    );
  }
}