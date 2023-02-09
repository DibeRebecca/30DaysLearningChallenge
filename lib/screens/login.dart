import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
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

         const SizedBox(height: 40,),
           TextFormField(
             
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              prefixIcon: Icon(Icons.person),
              labelText: 'Identifiant',
            ),
          ),
          const SizedBox(height: 15,),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              prefixIcon: Icon(Icons.lock),
              labelText: 'Mot de passe',
              suffixIcon: Icon(CupertinoIcons.eye),
            ),
          ),
          const SizedBox(height: 75,),
          SizedBox(
            child: Container(
              width: 500, height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.green),
            child: ElevatedButton(
          child: Text('Connexion',style: TextStyle(fontSize: 18, color: Colors.white),),
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
              SizedBox(height: 70,),
              Text("Mot de passe oublié ?", style: TextStyle(fontSize: 16, color: Colors.black),)
          ],)
        ],
      ),
      )

      
    ) ,
    );
  }
}