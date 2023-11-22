import 'package:alexapps/Custom_Text.dart';
import 'package:alexapps/homeScreen.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
      ),

      //image in the center of screen

      body: Padding(
        padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
        child: Column(children: [
          Container(
            height: 200,
            width: 400,
            color: Colors.white,
            child: Image.asset("assets/images/car.jpeg"),
          ),

          SizedBox(
            height: 10,
          ),

          //Text SignIn
          CustomText(
            text: 'تسجيل دخول',
            fontSize: 16,
            alignment: Alignment.center,
          ),

          SizedBox(
            height: 15,
          ),

          //two textformfiel to enter phone number
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade100),
                  width: 250,
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "0123456789",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(),
                        fillColor: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade100),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Container(
                            width: 5,
                            child: Image.asset("assets/images/120.png"))),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 30,
          ),

          //Text form field to enter password
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade100),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        hintText: "كلمة المرور",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        fillColor: Colors.white),
                  ))),
          SizedBox(
            height: 20,
          ),

          //Text
          CustomText(
            text: "هل نسيت كلمة المرور؟",
            alignment: Alignment.center,
            fontSize: 16,
          ),

          //button to sign in app
          Container(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                child: Text("تسجيل دخول")),
          ),
          //Navigate to second screen when tapped

          SizedBox(
            height: 100,
          ),

          // Text to Sign Up
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: "سجل الان",
                color: Colors.blue,
                fontSize: 14,
              ),
              CustomText(
                text: "ليس لديك حساب  ",
                fontSize: 16,
              ),
            ],
          )
        ]),
      ),
    );
  }
}
