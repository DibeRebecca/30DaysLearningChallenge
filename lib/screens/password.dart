import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Password extends StatefulWidget {
  const Password({super.key});
  

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  
  @override
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SingleChildScrollView(
      child: Padding(padding: EdgeInsets.all(20),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100,),
         
         const Center(child:Image(image: AssetImage("assets/images/logo.png"),width: 200,) ,) ,
         const Center(child: Text("Baobab",style: TextStyle(fontSize: 22,fontFamily: 'Montserrat', color: Colors.green ,fontWeight: FontWeight.bold)),),
          const SizedBox(height: 15,),
         //const Center(child: Text("Connexion",style: TextStyle(fontSize: 25,fontFamily: 'Montserrat', color: Colors.black ,fontWeight: FontWeight.bold)),),

         Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:const [
              
              SizedBox(height: 50,),
              AutoSizeText("Veuillez changer votre Mot de passe ",style:  TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.normal), 
              maxLines: 2,
              )
          ],),
         const SizedBox(height: 70,),
           TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              prefixIcon: Icon(Icons.lock),
              labelText: 'Nouveau mot de passe',
              suffixIcon: Icon(CupertinoIcons.eye),
            ),
          ),
          const SizedBox(height: 15,),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              prefixIcon: Icon(Icons.lock),
              labelText: 'Confirmer le mot de passe',
              suffixIcon: Icon(CupertinoIcons.eye),
            ),
          ),
          const SizedBox(height: 50,),
          SizedBox(
            child: Container(
              width: 500, height: 55,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.green),
            child: ElevatedButton(
          child: Text('Valider',style: TextStyle(fontSize: 18, color: Colors.white),),
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
            textStyle: const TextStyle(
                color: Colors.white,
                 fontSize: 10, 
                 fontStyle: FontStyle.normal),
          ),
          onPressed: () {},
        ),
          ),),
           Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const[
              SizedBox(height: 50,),
          ],),
        ],
      ),
      )

      
    ) ,
    );
  }
}