import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    int pageIndex = 0;
    return Padding(
      padding: EdgeInsets.only(top: 10,),
      child: Scaffold(
      
      backgroundColor: Colors.black,
      appBar:  AppBar(
          actions: <Widget>[
            IconButton(
            icon: const Icon(Icons.dark_mode, color: Colors.white,),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Dark Mode')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white,),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Notifications')));
            },
          ),
        ],
        backgroundColor: Colors.black,
        title:  Text("Rebecca TABOUKOUNA", style: TextStyle(color: Colors.white, fontSize: 15),),
        leading:   Padding(          
          padding:  const EdgeInsets.all(8),
          child:  Material(
            shape:  const CircleBorder(),
            child: 
                ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: const Image(image:AssetImage("assets/images/rbk.jpg"), height: 20,width: 20,     
                ),
               ),
               
            ),
          ),
        ),
      
      body:  Container(
        padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                         Text("\$4,98745",style: TextStyle(color: Colors.white,fontSize:30),),
                         Text('Available Balance',style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    ElevatedButton.icon(
                      
                      style:  ButtonStyle(
                        
                        backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(121, 68, 68, 68),)),
                      onPressed: () {},
                      icon: const Icon( // <-- Icon
                        Icons.add,
                        size: 24.0, color: Colors.white
                      ),
                      label: const Text('Add Card', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),), // <-- Text
                    ),
                  ],
                  ),
              
              const SizedBox(height: 40,),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        //margin: EdgeInsets.all(2),
                        width: 160,
                        height: 180,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromARGB(255, 252, 237, 104),
                              Colors.red,
                            ],
                          ),
                          //color: Color.fromARGB(255, 252, 102, 102),
                          borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:const [
                           Image(image: AssetImage('assets/images/mastercard.png'), width: 50,),
                          Icon(Icons.more_horiz_outlined, color: Colors.white,) ,
                        ],),
                        const SizedBox(height: 30,),
                        const SizedBox(height: 30,),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [Column(
                          mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.start,
                          children:const [
                          Text('\$859,756',style:TextStyle(color:Colors.white, fontSize: 18,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold)),
                          Text('...7628',style:TextStyle(color:Colors.white, fontSize: 16,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold))
                        ],)],),
                        
                      ],
                    ) ,
                  ),
                      
                      Container(
                        padding: EdgeInsets.all(12),
                        //margin: EdgeInsets.all(2),
                        width: 160,
                        height: 180,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromARGB(255, 132, 250, 181),
                              Colors.blue,
                            ],
                          ),
                          //color: Color.fromARGB(255, 99, 54, 124),
                          borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:const [
                           Image(image: AssetImage('assets/images/visa-white.png'), width: 60,),
                          Icon(Icons.more_horiz_outlined, color: Colors.white,) ,
                          
                        ],),
                        const SizedBox(height: 40,),
                        
                        const SizedBox(height: 30,),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [Column(
                          mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.start,
                          children:const [
                          Text('\$85,789',style:TextStyle(color:Colors.white, fontSize: 18,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold)),
                          Text('...8,8',style:TextStyle(color:Colors.white, fontSize: 16,fontFamily: 'GoogleSans',fontWeight: FontWeight.bold))
                        ],)],),
                        
                      ],
                    ) ,
                  ),   
                    ],
                    ),
              
              const SizedBox(height: 25,),
              const Text('Send Money', style: TextStyle(color: Colors.white, fontSize: 20),),
              const SizedBox(height: 25,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                            width: 43, height: 43,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color:Color.fromARGB(121, 68, 68, 68)),
                            child:const Icon(Icons.person_add_outlined, color: Colors.white,) ,
                          ), 
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/images/user1.jpg'),
                          ),
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/images/user2.jpg'),
                          ),
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/images/user3.jpg'),
                          ),
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/images/user4.jpg'),
                          ),
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/images/user5.jpg'),
                          ),
                          
                ],
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 170.0,
                    height: 53.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        //minimumSize: ,
                        backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12), // <-- Radius
                              ),
                            ),
                      onPressed: () {},
                      
                      child: const Text('Transfer',style:TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)), // <-- Text
                    ),
                 ),
                    
                   SizedBox(
                    width: 170,
                    height: 52,
                    child: OutlinedButton(
                      style:  ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(121, 68, 68, 68),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12), // <-- Radius
                              ),
                            ),
                      onPressed: () {},
                      
                      child: const Text('Receive',style: TextStyle( color:Colors.white,fontSize: 17, fontWeight: FontWeight.bold), ), // <-- Text
                    ),
                  ),
                    
                ],
              ),
                    const SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                       Text('My Savings',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                       Text('See All',style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),),
                      
                      ],
                    ),
                    const SizedBox(height: 25,),  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(121, 68, 68, 68)),
                          width:170,
                          height:70,
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children:  [
                               Container(
                                  height: 35,
                                  width: 35,
                                decoration :BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.yellow,
                                ),
                                child: const Icon(Icons.mobile_screen_share_outlined, color: Color.fromARGB(255, 109, 109, 109),),
                                  ),
                                  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                 Text("IPhone 14", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
                                 Text("\$8452/15635",style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal, color: Colors.white),),
                              ],
                            ),
                                  ],
                              ),
                              const SizedBox(height: 8,),
                              const SizedBox(
                                    width: 150,
                                    child: LinearProgressIndicator(
                                      backgroundColor: Colors.grey,
                                      valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
                                     ),
                                  ),
                                 
                            ],
                            
                          ),
                        ),
 
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(121, 68, 68, 68)),
                          width:170,
                          height:70,
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children:  [
                                Container(
                                  height: 35,
                                  width: 35,
                                decoration :BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color.fromARGB(255, 125, 192, 252)
                                ),
                                child: const Icon(Icons.car_crash, color: Color.fromARGB(255, 109, 109, 109),),
                                  ), 
                                  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                 Text("Super Car", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
                                 Text("\$4964/8986",style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal,color: Colors.white),),
                              ],
                            ),
                                  ],
                              ),
                              const SizedBox(height: 8,),
                              const SizedBox(
                                    width: 150,
                                    child: LinearProgressIndicator(
                                      backgroundColor: Colors.grey,
                                      valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 40, 154, 253)),
                                     ),
                                  ),
                                 
                            ],
                            
                          ),
                        ),
                        
                    ],),
              ]
        
      ),
          ),
    ),
    
    bottomNavigationBar:  Container(
      decoration:const  BoxDecoration(
          color:  Color.fromARGB(122, 158, 158, 158) ,
          borderRadius:  BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            

          ),
        ),
      child: BottomNavigationBar(
      
    backgroundColor: Color.fromARGB(121, 0, 0, 0),
    type: BottomNavigationBarType.fixed,
    
    selectedItemColor: Colors.blue,
    unselectedItemColor: Colors.white,
    currentIndex: 0,
    items: const [
       BottomNavigationBarItem(
          icon:  Icon(Icons.home_outlined,),
          label: "Home",
      ),
       BottomNavigationBarItem(
          icon:  Icon(Icons.align_vertical_bottom_outlined, color:Colors.white),
          label: "Statistics",),
       BottomNavigationBarItem(
          icon:  Icon(Icons.account_balance_wallet_outlined, color: Colors.white),
          label: "Wallet",),
       BottomNavigationBarItem(
          icon:  Icon(Icons.account_circle_outlined, color: Colors.white),
          label: "Profile",
          ),
       /* BottomNavigationBarItem(
          icon:  Icon(Icons.help, /*color:  Colors.black45 */),
          label: "",
          ) */ 
    ],

  ),
    
    ),
    )
  
      );
      }
}