import 'package:flutter/material.dart';
import 'package:quizz_iti_823/Cubits/ChangeSelectedValue/change_selected_value_cubit.dart';
import 'package:quizz_iti_823/Cubits/CounterCubit/counter_cubit.dart';
import 'package:quizz_iti_823/Cubits/LoginCubit/login_cubit.dart';
import 'package:quizz_iti_823/Cubits/RadioToggleCubit/radio_toggle_cubit.dart';
import 'package:quizz_iti_823/Cubits/ReplaceUICubit/replace_ui_cubit.dart';
import 'package:quizz_iti_823/Cubits/ShowHidePass/show_hide_password_cubit.dart';
import 'package:quizz_iti_823/Screens/opening_screen.dart';

import 'Screens/StateManagement/counter_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Screens/StateManagement/counter_screen_with_cubit.dart';
import 'Screens/StateManagement/task8.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(
          create: (BuildContext context) => CounterCubit(),
        ),
        BlocProvider<ReplaceUiCubit>(
          create: (BuildContext context) => ReplaceUiCubit(),
        ),
        BlocProvider<ChangeSelectedValueCubit>(
          create: (BuildContext context) => ChangeSelectedValueCubit(),
        ),
        BlocProvider<ShowHidePasswordCubit>(
          create: (BuildContext context) => ShowHidePasswordCubit(),
        ),
        BlocProvider<RadioToggleCubit>(
          create: (BuildContext context) => RadioToggleCubit(),
        ),
        BlocProvider<LoginCubit>(
          create: (BuildContext context) => LoginCubit(),
        ),
      ],
      child: MaterialApp(
          // Cupertino App
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: CounterScreenWithCubit()

          // OurFirstScreen(
          //   title: 'Flutter Demo Home Page',
          // ),
          ),
    );
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


/////////   Null Safety  /////////////




////////  OOP    ////////
///

///0-  Constructor : Is a function has the same name of the class,
///  1- first thing that happed when we call 
/// the class is what inside its constructor function.
/// 
/// 2- we can pass data from parent widget to child widget 
/// using the constructor
/// 
/// //// We can pass data using two methods:
/// 1- Named Argument: to write the name of the parameter before passing it
/// 2- Positional Arguments: to write the param directly without its name
/// 


// 1- Inheritance : to take the charactaristics of a specific class (extends keyword "in other langs we use :")
// when i extends to a specific class, i talk all its characters (Functions (method) - variabled (parameter) )


// 2- Abstruction: 
// Abstract Class:  Class that can not be instantiated
// Abstract function : a function with no body inside Abstract class, when i inherit from this 
// Abstract class, the abstract method must be Implement (Build)


// 3- Encapsulation : TO Isolate the class content from the outside ,to avoid un intended outside errors(security)
// by using (for an example ) "_" modifire to indicate that this method/ parameter
// is Private.
// and use setters an d getter to control this var without connecting with it directly.
// 


// 4- Plyorphisim :
//  - OverRide: اعادة صياغة الدالة الموروثة بتعديلاتي الخاصة
// re-write the extended method with my own edits
// to override the function

//  - OverLoad: تعريف نفس الدالة بنفس الاسم ولكن مع مدخلات مختلفة ومخرجات مختلفة
//  use the same function with different parameters and with different return
// to overload the function   // how to apply overload in dart lang




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
/// 
/// 1- Media query
/// 2- using Column and row approperiatly 
/// 3- Expanded And Flexible 
/// 




// Stack widget works inside the boundries of his parent 


// how to change anything to a button ?
// 1- Gesture detector
// 2- inkwell



// Navigation between screen: we have many methods to navigate
// Concepts of navigation:
// 1- navigate to a screen
// 2- back to a screen
// 3- Navigate and cant back 



// types of navigations:
// 1- Material(Anonymous) Navigation  -----> small projects, M , L
// 2- Named Navigation (Routes) ---------> medium projects
// 3- Generator Navigation  --------> Large and Huge projects






/*  
1- Version Control | Git (Github)
2- Dart *** 

- Data types
- variables
- data structure & data base (Map)
- functions
- Conditioning (If condition)
- Looping (For Loop - Listview.builder() - map - while - do while)
- Future (async - await) 
- Switch and case 
- try and catch


-------------------------
// while - dowhile
// higher order function
***** stream in dart language ******






3- OOP ***
4- Flutter  
- UI coding  (UI UX designer)
- State management 


- HTTP request (Call an API - Fetching data from API  - Connect with server - Call a remote datebase) --- Back end
- Notification
- Animation

- UI UX 

- Back end & data base


5- Project
- 3 days 


-----> ايه اللي باقيلي واذاكره ازاي
----->>  اعمل ايه ف الانترفيو
----->  اعمل cv ازاي 
-----> سوق العمل 
-----> الحصول علي وظيفة
------>  هو انا جاهز ؟ 
*/


