import 'package:challenge/screens/dashboard.dart';
import 'package:challenge/screens/wallet.dart';
import 'package:flutter/material.dart';

class Swipes extends StatefulWidget {
  const Swipes({super.key});

  @override
  State<Swipes> createState() => _SwipesState();
}

class _SwipesState extends State<Swipes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20,right:20, top: 50),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
              TextButton(
                onPressed: () { Navigator.push(context, MaterialPageRoute(builder:  (context)=>Wallet())); },
                child: Text('Skip'))
            ],),
            SizedBox(height:50),
            Container(child: Image(image: AssetImage('assets/images/1.jpg')),),
            SizedBox(height:30),
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              // ignore: prefer_const_constructors
              Text('Add all accounts and manages',style:TextStyle(fontFamily: 'GoogleSans',fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromARGB(221, 53, 53, 53))),
            ],),
            SizedBox(height: 50,),
            Column(mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('You can add all kinds of accounts in  ', style: TextStyle(fontSize: 14),),
              Text(' one place and use it if you want ',style: TextStyle(fontSize: 14),),

            ],),
            SizedBox(height:50),
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Container(width:15,height:15,decoration:  BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                  border: const Border()
                ),
              ),
              Container(width:15,height:15,decoration:  BoxDecoration(
                  color: Color.fromARGB(255, 190, 190, 190),
                  borderRadius: BorderRadius.circular(50),
                  border: const Border()
                ),
              ),
              Container(width:15,height:15,decoration:  BoxDecoration(
                  color: Color.fromARGB(255, 190, 190, 190),
                  borderRadius: BorderRadius.circular(50),
                  border: const Border()
                ),
              ),
            ],),
            SizedBox(height:30),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
              TextButton(
                onPressed: () { Navigator.push(context, MaterialPageRoute(builder:  (context)=>Dashboard())); },
                child: Text('Skip'))
            ],),
          ],
        ),
      )
      ,
    );
  }

  // ignore: non_constant_identifier_names
  Widget SecondSwipe (){
    return  Scaffold(
      appBar: AppBar(
    title: Text('My App'),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
      ),
    ),
  ),
    );
  }
}