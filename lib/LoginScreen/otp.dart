import 'package:ecommerce/HomePage/homePage.dart';
import 'package:ecommerce/LoginScreen/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class otpScreen extends StatefulWidget {
  const otpScreen({super.key});

  @override
  State<otpScreen> createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {
  TextEditingController countrycode = TextEditingController();
  var phone="";
  String verificationId = "";
  final FirebaseAuth auth = FirebaseAuth.instance;
  var code="";

  @override
  void initState(){
    countrycode.text = "+91";
    super.initState();
  }

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
                      onChanged: (value){
                        phone = value;
                      } ,
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
                SizedBox(width: MediaQuery.of(context).size.width * 0.15,), 
                Pinput(
                  defaultPinTheme: PinTheme(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                  length: 6,
                  focusNode: FocusNode(),
                  onChanged: (value) {
                    code = value;
                  },
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
                  onPressed: () async {
                    await FirebaseAuth.instance.verifyPhoneNumber(
                    phoneNumber: '${countrycode.text + phone}',
                    verificationCompleted: (PhoneAuthCredential credential) {
                    },
                    verificationFailed: (FirebaseAuthException e) {},
                    codeSent: (String verificationId, int? resendToken) {
                      this.verificationId = verificationId;
                    },
                    codeAutoRetrievalTimeout: (String verificationId) {},
                  );
                  },
                  child: Text('Get OTP',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xFF2E3192),
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  onPressed: () async {
                    FirebaseAuth auth = FirebaseAuth.instance;
                        PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: code);
                        await auth.signInWithCredential(credential);
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                          (route) => false,
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