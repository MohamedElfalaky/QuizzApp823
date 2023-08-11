import 'package:flutter/material.dart';

import 'Screens/opening_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Cupertino App
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const OpeningScreen()

        // OurFirstScreen(
        //   title: 'Flutter Demo Home Page',
        // ),
        );
  }
}

class OurFirstScreen extends StatefulWidget {
  const OurFirstScreen({
    super.key,
    required this.title,
  });

  final String title;

  // final int? counterTwo;

  @override
  State<OurFirstScreen> createState() => _OurFirstScreenState();
}

class _OurFirstScreenState extends State<OurFirstScreen> {
  int _counter = 0; // initialization

  // int ourDouble = 2; // initialization

  // String trackName = "ITI 8-2023"; // initialization

  // bool isAugs = false; // initialization

  // var name; // declearation

  String _incrementCounter() {
    // void : no return

    setState(() {
      _counter++;
    });

    return "hellooooooo";
  }

  void _decrementCounter() {
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  // Person p1 = new Person()

  SizedBox mySizedBox = new SizedBox(
    height: 100,
  );

  @override
  Widget build(BuildContext context) {
    const String trackName = "ITI 8-2023"; //

    final int counterTwo;

    counterTwo = 2;

    // counterTwo = 4;  can not initialized again

    // trackName = "jkss";

    // const means : the variable that is constant in both : run time and compile time
    // compile time : when i am writing a code in the ide before running in the device .
    // run time error: Error that appears when running the app.

    return Scaffold(
        appBar: AppBar(
          title: Text("ITI 8 -2023"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Hello world, we are ITI 8/2023",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold)),

              // ourItiSizedBox,

              // mySizedBox,

              SizedBox(
                height: 100,
              ),

              const Text(
                'لقد قمت بالضغط على الزر هذا العدد من المرات',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                '$_counter',
                style: const TextStyle(
                    color: Colors.green,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: _decrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.minimize),
            ),
          ],
        ));
  }
}

/////////  Dart ////////

// Naming :
// vars and function : lowerCase, Uppercase:    myFunction(){}, myVar  ----> Camel case
// Class and Object, instance, Widget: UpperCase, Uppercase:   MyClass{}  ----> kabab case
// files naming: lowerCase_lowerCase
// dont start with: nubers, special chractars and special sympols (except _)

// كل ما التزم بيها كل ما يكون الكود بتاعي Clean

// 1- Super Strongly *Typed* language: very important to put the type of variable. (Clean Code)
// 2- open source
// 3- developed by google

// Data type:
// String : "نصوووووص"
// Int : 1, 2, 3,4   الارقام الصحيحة
// double : 2.25 - 3.5 -- 4 الرقم العشري
// boolean : true - false
// null : null ----> لا شيء

/////  Const vs final  (interview question) ---- (Variable)

// intialization syntx:
// const/ final/ non ----- Type ---- name ;
// final String name;

/// const : the var that is constant in both compile time and run time
///  1- must be initialized.
///  2- has a const value in compile time and run time
///  3- can't be initialized again .

/// final : the var that is constant in compile  time but can take its value in run time.
/// 1- may not be initialized  (may be declerated only)
/// 2- can be initialized after decleration (only once )
///  3- can't be initialized again .

// If Condition
// if (2>3){
// }

// Function: is a block of code that can be excuted when we call it, and it could return someThing .
// Syntx:
// return type --- name --- () ---- {}

// int ourFunction () {
//  _counter = 3;
//  name = Khaled;
//  return  5;
//
// }

// Object

////////  OOP    ////////

// * Inheritance : to take the charactaristics of a specific class (extends keyword "in other langs we use :")

// Modifiers:
// 1- UnderScore (_): when typed before something means that this var/function/class is Private.






//////// Flutter  /////////
///
///

//1- everything in flutter is a widget
//2- there are two main types of widgets:

// A] Stateless Widget   
// B] Statefull Widget 

// what is the diff between Column , Row and Stack?

// 1- Column: a widget that allow us to put widgets above each other, Y axis
// 2- Row: a widget that allow us to put widgets beside, next to  each other, X axis
// 3- Stack :  widget that allow us to put widgets  above each other in 3d dimensionly ,  Z axis



/////  How to get the full hight/ width of any device
///  MediaQuery.of(context).size.hight/width
/// 

/// what is the diff between MediaQuery.of(contxt).size.width And Double.infinity
/// MediaQuery: get the full hight/ width of any device
///  Double.infinity : get the availble width or hight
/// 



/// Responsive design : The design that responses and addaptes to any device screen size
/// please dont use static values in spaces and dimensions
