import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:challenge/screens/day5.dart';
import 'package:challenge/screens/day4.dart';
import 'package:challenge/screens/day6.dart';
import 'package:challenge/screens/day7.dart';


PersistentTabController _controller= PersistentTabController(initialIndex: 0);

const style=TextStyle(color: Colors.white);
const List<Widget> fruits = <Widget>[
  Text('Day',style:TextStyle(fontFamily: "GoogleSans", fontSize: 15,fontWeight:FontWeight.bold )),
  Text('Week',style:TextStyle(fontFamily: "GoogleSans", fontSize: 15,fontWeight:FontWeight.bold )),
  Text('Month',style:TextStyle(fontFamily: "GoogleSans", fontSize: 15,fontWeight:FontWeight.bold ))
];
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int pageIndex = 0;
  final List<bool> _selectedFruits = <bool>[true, false, false];
  final pages = [
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("STATES",style:TextStyle(fontFamily: "GoogleSans", fontSize: 20,fontWeight:FontWeight.bold, color:Color.fromARGB(255, 28, 6, 90) )),
         leading: IconButton(
            onPressed: () {},
            icon:const  Icon(Icons.chevron_left),
          ),
        scrolledUnderElevation: 10.0,
        shadowColor:const Color.fromARGB(255, 255, 255, 255),
        //elevation:5.0,
        //shape:ShapeBorder.lerp(1, 2, 2),
        backgroundColor:const Color.fromARGB(255, 255, 255, 255),
        /* actions: [
          IconButton(onPressed: (){
          },
          tooltip: "Cliquez",
           icon: const Icon(Icons.arrow_circle_left))
        ] */
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ToggleButtons(
                  direction:  Axis.horizontal,
                  onPressed: (int index) {
                    setState(() {
                      // The button that is tapped is set to true, and the others to false.
                      for (int i = 0; i < _selectedFruits.length; i++) {
                        _selectedFruits[i] = i == index;
                      }
                    });
                },
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                selectedBorderColor: const Color.fromARGB(255, 255, 255, 255) ,
                selectedColor: const Color.fromARGB(255, 255, 255, 255),
                fillColor: const Color.fromARGB(255, 28, 6, 90) ,
                color: const Color.fromARGB(255, 28, 6, 90),
                splashColor: Colors.grey,
                disabledColor: const Color.fromARGB(255, 36, 35, 35),
                highlightColor: Colors.grey,
                hoverColor: Colors.grey,
                focusColor: Colors.grey,
                constraints: const BoxConstraints(
                  minHeight: 45.0,
                  minWidth: 120.0,
                ),
                isSelected: _selectedFruits,
                children: fruits,
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        //margin: EdgeInsets.all(2),
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 252, 102, 102),
                          borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          const Text('Heart Race', style: TextStyle(color:Colors.white, fontSize: 18,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold),),
                          Container(
                            width: 50, height: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color:Colors.white38),
                            child:const Icon(CupertinoIcons.graph_circle_fill, color: Colors.white,) ,
                          ),
                          
                        ],),
                        const SizedBox(height: 10,),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children:const [
                          Text('124',style:TextStyle(color:Colors.white, fontSize: 22,fontFamily: "GoogleSans",fontWeight: FontWeight.bold)),
                          SizedBox(width: 5,),
                          Text('bpm',style:TextStyle(color:Colors.white, fontSize: 16,fontFamily: "GoogleSans",fontWeight: FontWeight.bold)),
                        ],),
                        const SizedBox(height: 20,),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [Column(
                          mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,
                          children:const [
                          Text('80-120',style:TextStyle(color:Colors.white, fontSize: 16,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold)),
                          Text('healthy',style:TextStyle(color:Colors.white, fontSize: 16,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold))
                        ],)],),
                        
                      ],
                    ) ,
                  ),
                      
                      Container(
                        padding: EdgeInsets.all(12),
                        //margin: EdgeInsets.all(2),
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 99, 54, 124),
                          borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          const Text('Sleep', style: TextStyle(color:Colors.white, fontSize: 18,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold),),
                          Container(
                            width: 50, height: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color:Colors.white38),
                            child:const Icon(CupertinoIcons.moon_zzz_fill, color: Colors.white,) ,
                          ),
                          
                        ],),
                        const SizedBox(height: 8,),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children:const [
                          Text('8',style:TextStyle(color:Colors.white, fontSize: 22,fontFamily: "GoogleSans",fontWeight: FontWeight.bold)),
                          SizedBox(width: 5,),
                          Text('h42m',style:TextStyle(color:Colors.white, fontSize: 16,fontFamily: "GoogleSans",fontWeight: FontWeight.bold)),
                        ],),
                        const SizedBox(height: 20,),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [Column(
                          mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,
                          children:const [
                          Text('Deep Sleep',style:TextStyle(color:Colors.white, fontSize: 16,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold)),
                          Text('5h13m',style:TextStyle(color:Colors.white, fontSize: 16,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold))
                        ],)],),
                        
                      ],
                    ) ,
                  ),   
                    ],
                    ),
              
              SizedBox(height: 18,),
                      Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        //margin: EdgeInsets.all(2),
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 230, 115, 9),
                          borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          const Text('Energy Burn', style: TextStyle(color:Colors.white, fontSize: 18,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold),),
                          Container(
                            width: 50, height: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color:Colors.white38),
                            child:const Icon(Icons.fire_extinguisher, color: Colors.white,) ,
                          ),
                          
                        ],),
                        const SizedBox(height: 10,),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children:const [
                          Text('583',style:TextStyle(color:Colors.white, fontSize: 22,fontFamily: "GoogleSans",fontWeight: FontWeight.bold)),
                          SizedBox(width: 5,),
                          Text('kcal',style:TextStyle(color:Colors.white, fontSize: 16,fontFamily: "GoogleSans",fontWeight: FontWeight.bold)),
                        ],),
                        const SizedBox(height: 20,),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [Column(
                          mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,
                          children:const [
                          Text('Daily Goal',style:TextStyle(color:Colors.white, fontSize: 16,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold)),
                          Text('900kcal',style:TextStyle(color:Colors.white, fontSize: 16,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold))
                        ],)],),
                        
                      ],
                    ) ,
                  ),
                      
                      Container(
                        padding: EdgeInsets.all(12),
                        //margin: EdgeInsets.all(2),
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 95, 199, 224),
                          borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          const Text('Steps', style: TextStyle(color:Colors.white, fontSize: 18,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold),),
                          Container(
                            width: 50, height: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color:Colors.white38),
                            child:const Icon(CupertinoIcons.layers_alt_fill, color: Colors.white,) ,
                          ),
                          
                        ],),
                        const SizedBox(height: 8,),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children:const [
                          Text('16,741',style:TextStyle(color:Colors.white, fontSize: 22,fontFamily: "GoogleSans",fontWeight: FontWeight.bold)),
                          SizedBox(width: 5,),
                          Text('',style:TextStyle(color:Colors.white, fontSize: 16,fontFamily: "GoogleSans",fontWeight: FontWeight.bold)),
                        ],),
                        const SizedBox(height: 20,),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [Column(
                          mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,
                          children:const [
                          Text('Daily Goal',style:TextStyle(color:Colors.white, fontSize: 16,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold)),
                          Text('20,000 Steps',style:TextStyle(color:Colors.white, fontSize: 16,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold))
                        ],)],),
                   ],
                    ) ,
                  ),   
                    ],
                    ),
          SizedBox(height: 18,)   , 
                       Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        //margin: EdgeInsets.all(2),
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 64, 43, 161),
                          borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          const Text('Running', style: TextStyle(color:Colors.white, fontSize: 18,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold),),
                          Container(
                            width: 50, height: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color:Colors.white38),
                            child:const Icon(CupertinoIcons.speedometer, color: Colors.white,) ,
                          ),
                          
                        ],),
                        const SizedBox(height: 10,),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children:const [
                          Text('5,3',style:TextStyle(color:Colors.white, fontSize: 22,fontFamily: "GoogleSans",fontWeight: FontWeight.bold)),
                          SizedBox(width: 5,),
                          Text('km',style:TextStyle(color:Colors.white, fontSize: 16,fontFamily: "GoogleSans",fontWeight: FontWeight.bold)),
                        ],),
                        const SizedBox(height: 20,),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [Column(
                          mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,
                          children:const [
                          Text('Daily Goal',style:TextStyle(color:Colors.white, fontSize: 16,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold)),
                          Text('10km',style:TextStyle(color:Colors.white, fontSize: 16,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold))
                        ],)],),
                        
                      ],
                    ) ,
                  ),
                      
                      Container(
                        padding: EdgeInsets.all(12),
                        //margin: EdgeInsets.all(2),
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 77, 189, 101),
                          borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          const Text('Cycling', style: TextStyle(color:Colors.white, fontSize: 18,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold),),
                          Container(
                            width: 50, height: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color:Colors.white38),
                            child:const Icon(Icons.cyclone, color: Colors.white,) ,
                          ),
                          
                        ],),
                        const SizedBox(height: 8,),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children:const [
                          Text('12,5',style:TextStyle(color:Colors.white, fontSize: 22,fontFamily: "GoogleSans",fontWeight: FontWeight.bold)),
                          SizedBox(width: 5,),
                          Text('km',style:TextStyle(color:Colors.white, fontSize: 16,fontFamily: "GoogleSans",fontWeight: FontWeight.bold)),
                        ],),
                        const SizedBox(height: 20,),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [Column(
                          mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,
                          children:const [
                          Text('Daily Goal',style:TextStyle(color:Colors.white, fontSize: 16,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold)),
                          Text('20 km',style:TextStyle(color:Colors.white, fontSize: 16,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold))
                        ],)],),
                        
                      ],
                    ) ,
                  ),   
                    ],
                    ),
       
         
    ]
          ,),
        ),
    ),

         bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 28, 6, 90) ,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? const Icon(
                      Icons.home_filled,
                      color: Colors.white,
                      size: 35,
                    )
                  : const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const Icon(
                      CupertinoIcons.gauge,
                      color: Colors.white,
                      size: 35,
                    )
                  : const Icon(
                      CupertinoIcons.gauge_badge_minus,
                      color: Colors.white,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? const Icon(
                      Icons.widgets_rounded,
                      color: Colors.white,
                      size: 35,
                    )
                  : const Icon(
                      Icons.widgets_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 35,
                    )
                  : const Icon(
                      Icons.person_outline,
                      color: Colors.white,
                      size: 35,
                    ),
            ),
          ],
        ),
      )
    
    );
  
         
  }
}