import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/defaults.dart';

var indexClicked = 0;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final pages = const[
    Center(
      child: Text('Université de Lomé'),
    ),
    Center(
      child: Text('EPL'),
    ),
    Center(
      child: Text('Master Professionel'),
    ),
    Center(
      child: Text('Genie Logiciel'),
    ),
    Center(
      child: Text('MIST07'),
    ),
    Center(
      child: Text('MIST06'),
    ),
  ];
  Function updateState(int index) {
    return () {
      setState(() {
        indexClicked = index;
      });
      Navigator.pop(context);
    };
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('Baobab', style:TextStyle(color:Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
          backgroundColor: Colors.green,

      ),
      
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 243, 239, 239),
        
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

        // Important: Remove any padding from the ListView.
       // padding: EdgeInsets.zero,
        children: [
           DrawerHeader(
            decoration: const BoxDecoration(
              
              color: Color.fromARGB(255, 243, 239, 239),
            ),
            child: Container(
              //height: 500,
                child: Column(
                  children: const [
                     SizedBox(
                      height: 1,
                    ),
                    CircleAvatar(
                      radius: 42,
                      backgroundImage: AssetImage('assets/images/logo.png'),
                    ),
                     SizedBox(
                      //height: 10,
                    ),
                    Text(
                      'Baobab',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     SizedBox(
                      height: 5,
                    ),
                    
                   /* Text(
                      'john@rambo.com',
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),*/
                  ],
                ),
              ),
          ),
          Expanded(child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                   Text("Benjamin AMOUZOU", style:TextStyle(color: Colors.blue)),    
                ],
              ),
              ListTile(
                horizontalTitleGap: 1,
                  leading: const Icon(
                    Icons.exit_to_app,
                    color: Colors.red,
                  ),
                  title: const Text('Deconnexion'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ListTile(
            
            title: const Text('Mes groupes'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
              const SizedBox(
                    height: 20,
                  ),
              AppDrawerTile(
                    index: 0,
                    onTap:()=> updateState(0),
                  ),
                  AppDrawerTile(
                    index: 1,
                    onTap: ()=>updateState(1),
                  ),
                  AppDrawerTile(
                    index: 2,
                    onTap: ()=>updateState(2),
                  ),
                  AppDrawerTile(
                    index: 3,
                    onTap: ()=>updateState(3),
                  ),
                  AppDrawerTile(
                    index: 4,
                    onTap: ()=>updateState(4),
                  ),
                  AppDrawerTile(
                    index: 5,
                    onTap: ()=>updateState(5),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  
            ],
          )),
          
        ],
      ),
    ),
    body: pages[indexClicked],
    );
  }
}

class AppDrawerDivider extends StatelessWidget {
  const AppDrawerDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      thickness: 1,
      color: Defaults.drawerItemColor,
      indent: 3,
      endIndent: 3,
    );
  }
}

class AppDrawerTile extends StatelessWidget {
  const AppDrawerTile({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  final int index;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListTile(
        horizontalTitleGap: 1,
        onTap: onTap(),
        selected: indexClicked == index,
        selectedTileColor: Defaults.drawerSelectedTileColor,
        leading: Icon(
          Defaults.drawerItemIcon[index],
          size: 25,
          color: indexClicked == index
              ? Defaults.drawerItemSelectedColor
              : Defaults.drawerItemColor,
        ),
        title: Text(
          Defaults.drawerItemText[index],
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: indexClicked == index
                ? Defaults.drawerItemSelectedColor
                : Defaults.drawerItemColor,
          ),
        ),
      ),
    );
  }
}
