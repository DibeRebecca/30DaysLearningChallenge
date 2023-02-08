import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
         
         const Image(image: AssetImage("assets/images/logo_texte.png"),width: 200,),
         Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const[
              SizedBox(height: 50,),
              Text("Veuillez changer votre Mot de passe ", style: TextStyle(fontSize: 18, color: Colors.green, fontWeight: FontWeight.bold),)
          ],),
         const SizedBox(height: 100,),
           TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              prefixIcon: Icon(Icons.lock),
              labelText: 'Nouveau mot de passe',
              suffixIcon: Icon(CupertinoIcons.eye),
            ),
          ),
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
              width: 500, height: 65,
              decoration: BoxDecoration(color: Colors.green),
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
              Text("Mot de passe oublié ?", style: TextStyle(fontSize: 18, color: Colors.green, fontWeight: FontWeight.bold),)
          ],),
        ],
      ),
      )

      
    ) ,
    );
  }
}