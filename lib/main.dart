import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'GoogleSans',
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
        //primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: ''),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        //colo
        title: Text(widget.title),
      ),
      body:  Container(
        padding: EdgeInsets.only(left: 20.0, right: 20.0,),
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           
            Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Image(
                  width: 300,
                  image: AssetImage('assets/images/welcom.png'),)
              ],
            ),
            Row(children: [
              Text(
              'Login',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0,color: Colors.black),
            ),
            ],),
            TextFormField(
             
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              prefixIcon: Icon(Icons.alternate_email),
              labelText: 'Email',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              prefixIcon: Icon(Icons.lock),
              labelText: 'Password',
            ),
          ),
         SizedBox(height:10.0),
        Container(
          decoration: const BoxDecoration(borderRadius: BorderRadius.horizontal()),
          width: 400,
          height: 70,
        padding: const EdgeInsets.only(top: 10.0, right:30.0, left: 30.0),
        child : ElevatedButton(
          style: ButtonStyle(
              //maximumSize: MaterialStateProperty<Size>,
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
                onPressed: (){},
                child: Text('Login', style: TextStyle(fontSize: 18.0,color: Colors.white),),
              ),
              ),
              SizedBox(height:10.0),
              Text(
              'Or login With',
              style: TextStyle(fontWeight: FontWeight.normal,fontSize: 13.0,color: Color.fromARGB(255, 87, 86, 86)),
            ),
            SizedBox(height:10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                Container(
                  padding: EdgeInsets.all(15.0),
                  width: 70,
                  height: 50,
                  //foregroundDecoration: ,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0,color: Color.fromARGB(255, 151, 151, 151),),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                  child: const Image(
                    width: 40,
                    image: AssetImage('assets/images/google.png'),
                  ),
                ),
                Container(
                  
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                  border: Border.all(width: 1.0,color: Color.fromARGB(255, 151, 151, 151),),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                  width: 70,
                  height: 50,
                  child: const Image(
                    width: 40.0,
                    image: AssetImage('assets/images/facebook.png'),
                  ),
                ),
                Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                border: Border.all(width: 1.0,color: Color.fromARGB(255, 151, 151, 151),),

                  borderRadius: BorderRadius.circular(10),color: Colors.white),
                  width: 70,
                  height: 50,
                  child: const Image(
                    width: 40,
                    image: AssetImage('assets/images/apple.png'),
          
                  ),
                ),
              ],),
              SizedBox(height:20.0),
              Text(
              'New to RBK Design ? ',
              style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15.0,color: Color.fromARGB(255, 87, 86, 86)),
            ),
            //SizedBox(height:10.0),
              TextButton(onPressed: (){}, child: Text('Register',style: TextStyle(color: Colors.blue, fontSize: 16,fontWeight: FontWeight.bold),))
          ],
        ),
      
      ),
      
    );
  }
}