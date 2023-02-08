import 'package:flutter/material.dart';

class Contenus extends StatelessWidget {
  const Contenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BAOBAB", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        elevation: 50.0,
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.comment),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), 
          //IconButton
        ],
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        leading: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        
        backgroundColor: Color.fromARGB(255, 4, 187, 28),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          
          children:  [
            SizedBox(height: 15,),
            Card(
        child: SizedBox(
          width: double.infinity,
          height: 200,
          child:  Column(

            children: [
            Row(
              children: [Text("Tranche disponible")],
            ),
            Row(children: [Text('data')],),
            Row(children: [
              Column(
                children: [
                  Row(children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset('assets/images/user1.jpg', width: 200, height: 70,),
                    ),
                    Text("LOUKA Christophe"),
                  ],),
                  Row()
                ],
              ),
              Column(),
            ],)
          ],),
        ),
      ),

        ],
        )),
    );
  }
}