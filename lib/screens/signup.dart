import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(18),
        child:Column(
        //mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Container(child:const Image(image: AssetImage('assets/images/welcome.png'))
           ,),
           //const SizedBox(height: 10, ),
           Row(mainAxisAlignment: MainAxisAlignment.start,
            children:[ Text('Sign up', style: TextStyle(fontFamily: 'GoogleSans',fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.black),),]),
           const SizedBox(height: 20.0,),
           Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 70,
                height: 50,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border:  Border.all(width: 2,color: Color.fromARGB(255, 209, 209, 209)),
                  color: Colors.white,borderRadius: BorderRadius.circular(20)),
                child: const Image(
                  width: 50,
                  image: AssetImage('assets/images/google.png')),
              ),
              Container(
                width: 70,
                height: 50,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border:  Border.all(width: 2,color: Color.fromARGB(255, 209, 209, 209)),
                  color: Colors.white,borderRadius: BorderRadius.circular(20)),
                child: const Image(
                  width: 50,
                  image: AssetImage('assets/images/facebook.png')),
              ),
              Container(
                width: 70,
                height: 50,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border:  Border.all(width: 2,color: Color.fromARGB(255, 209, 209, 209)),
                  color: Colors.white,borderRadius: BorderRadius.circular(20)),
                child: const Image(
                  width: 50,
                  image: AssetImage('assets/images/apple.png')),
              ),
            ],
           ),
           const SizedBox(height: 10,),
           Container(
            child: const Text('Or sign up with email',style: TextStyle(fontFamily: 'GoogleSans',color: Color.fromARGB(255, 90, 90, 90) , fontSize: 15),),),
           const SizedBox(height: 10,),
           TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              prefixIcon: Icon(Icons.alternate_email),
              label: Text('Email'),
            ),
           ),
            /*TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
           prefixIcon: Icon(Icons.account_circle),
           label: Text('Full name')),
           ),*/
           
           TextFormField(
            decoration: const InputDecoration(border: UnderlineInputBorder(),
            prefixIcon: Icon(Icons.lock),
            label:Text('Password'),),
           ),
           TextFormField(
            decoration: const InputDecoration(border: UnderlineInputBorder(),
            prefixIcon: Icon(Icons.lock_clock_rounded),
            label:Text('Confirm Password'),),
           ),        
            const SizedBox(height:30),
           const Text('By signing up you\'ve agreed to',style: TextStyle(fontFamily: 'GoogleSans',fontSize: 13,fontWeight: FontWeight.normal)),
           const Text('Our Terms & Conditions and Privacy Policy', style: TextStyle(fontFamily: 'GoogleSans',fontSize: 14,color: Colors.blue,fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),      
          Container(
          decoration: const BoxDecoration(borderRadius: BorderRadius.horizontal()),
          width: 800,
          height: 70,
        padding: const EdgeInsets.only(top: 10.0, right:30.0, left: 30.0),
        child : ElevatedButton(
          style: ButtonStyle(
              //maximumSize: MaterialStateProperty<Size>,
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const SignUp()));
                },
                child: const Text('Continue', style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
              ),
              SizedBox(height:10),
              Row(
                mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                  const Text('Already have an account ?',style: TextStyle(fontFamily: 'GoogleSans',fontSize: 13,fontWeight: FontWeight.normal)),
           const Text('Login', style: TextStyle(fontFamily: 'GoogleSans',fontSize: 14,color: Colors.blue,fontWeight: FontWeight.bold),),
            
                ],
              )
   
        
        ],
      ),),
    );
  }
}