import 'package:ecommerce/HomePage/homePage.dart';
import 'package:ecommerce/LoginScreen/signup.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class otpScreen extends StatefulWidget {
  const otpScreen({super.key});

  @override
  State<otpScreen> createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
              Center(
                child: Image.asset('assets/images/logo.png',
                height: 200,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              Row(
                children: [
                  Icon(Icons.phone_android,
                  size: 30,
                  color: Color(0xFF2E3192),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
                  SizedBox(
                  width: 300,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Enter your mobile number',
                        hintStyle: TextStyle(
                          color: Colors.grey[700],
                        ),
                        border: InputBorder.none, // Remove the underline
                        contentPadding: EdgeInsets.symmetric(vertical: 15), // Adjust text centering // Center-align text
                      ),
                    ),
                  ),
                ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
              Row(children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFF2E3192),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('OTP',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.yellow,
                  ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05,), 
                Pinput(
                  defaultPinTheme: PinTheme(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                  length: 4,
                  focusNode: FocusNode(),
                  onChanged: (String value) {},
                )
              ]
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Text('LOGIN',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xFF2E3192),
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                    );
                    },
                    child: Text('Signup',
                    style: TextStyle(
                      color: Color(0xFF2E3192),
                      fontSize: 18
                    ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Text('Need Help?',
                    style: TextStyle(
                      color: Color(0xFF2E3192),
                      fontSize: 18
                    ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}