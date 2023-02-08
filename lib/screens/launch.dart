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
        children: [
          SizedBox(height: 250,),
          DefaultTextStyle(
            style: const  TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),
            child: AnimatedTextKit(
              animatedTexts: [
                ScaleAnimatedText('Baobab'),
              ],
              totalRepeatCount: 4,
              pause: const Duration(milliseconds: 1000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
              onTap: () {
                print("Tap Event");
              },
            ),
  ),
          //const Center(child: Text("Baobab",),),
           const Center(
            child: Text("Plateforme d'informations de",style: TextStyle(fontSize: 18,color: Colors.green),),
          ),
          const Center(
            child: Text("l'Université de Lomé",style: TextStyle(fontSize: 18,color: Colors.green),),
          ),
          const SizedBox(height: 350,),
          const Image(image: AssetImage('assets/images/logo-ul.png',),width: 250,)
        ],
      ) ,) 
    );
  }
}