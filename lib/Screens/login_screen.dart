import 'package:flutter/material.dart';
import 'package:quizz_iti_823/Screens/category_screen.dart';

import '../Global/quizz_data.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  //  final Container muContaner = Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.green,
        body: Stack(
      // unbounded widget
      alignment: Alignment.bottomCenter,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 27, 154, 31),
            child: Center(
              child: Image.asset(
                "Images/logInLogo.png",
                height: 100,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height * 2 / 3, // width: 50,
          width: double.infinity,

          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 226, 216, 216),
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),

          child: Form(
            key: _formKey,
            child: Column(children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),

              // for (int i = 0;
              //     i < 5;
              //     i++) // For Loop: used for repeating same code
              TextFormField(
                controller: userNameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "User name must not be empty";
                  } else if (value.length < 5) {
                    return "User name should be more than 5 characters";
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "User name",
                  // errorBorder: ,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 36, 4, 240), width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  // border: ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  // border:
                ),
              ),
              SizedBox(
                height: 12,
              ),
              // TextField(
              //   decoration: InputDecoration(
              //     prefixIcon: Icon(Icons.lock),
              //     suffixIcon: Icon(Icons.visibility),
              //     hintText: "Password",
              //     // errorBorder: ,
              //     focusedBorder: OutlineInputBorder(
              //       borderSide: BorderSide(
              //           color: Color.fromARGB(255, 36, 4, 240), width: 2),
              //       borderRadius: BorderRadius.circular(30),
              //     ),
              //     // border: ,
              //     enabledBorder: OutlineInputBorder(
              //       borderSide: BorderSide(color: Colors.black),
              //       borderRadius: BorderRadius.circular(30),
              //     ),
              //     // border:
              //   ),
              // ),

              SizedBox(
                height: 8,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("New to quiz app?"),
                  // SizedBox(
                  //   width: 4,
                  // ),
                  InkWell(
                    onTap: () {
                      print("Hello we are ITI");
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),

              SizedBox(
                height: 30,
              ),

              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => CategoryScreen(),
                      ),
                    );
                  }
                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          25.0), // Adjust the radius as needed
                    ),
                    backgroundColor: Colors.green,
                    elevation: 10,
                    minimumSize: Size(130, 40)),
              ),
              SizedBox(
                height: 15,
              ),
              Icon(
                Icons.fingerprint,
                color: Colors.blue,
                size: 50,
              ),
              Text(
                "Touch ID",
                style: TextStyle(color: Colors.grey),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      Text("Remember me"),
                    ],
                  ),

                  // Spacer(),
                  InkWell(
                    onTap: () {
                      print("Hello we are ITI");
                    },
                    child: Text(
                      "Forget password",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ]),
          ),
        )
      ],
    )

        // Container(
        //   // color: Colors.green,
        //   child: Column(children: [
        //     Container(
        //       // color: Colors.green,
        //       height: MediaQuery.of(context).size.height * 1 / 3,
        //     ),
        //     Container(
        //       decoration: BoxDecoration(
        //           color: Color.fromARGB(255, 245, 232, 232),
        //           borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
        //       height: MediaQuery.of(context).size.height * 2 / 3,
        //     )
        //   ]),
        // ),
        );
  }
}


///// Form Validation   /////
/*    

1- change textfield to textformfield
2- Wrap both textformfield and the button with (Form) widget
3- initialize a form key
4- give the form the key
5- validate the key inside the button
6- give your validations in the text form field useing the parameter : Validator


*/