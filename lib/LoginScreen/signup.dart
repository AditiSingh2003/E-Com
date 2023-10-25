import 'package:ecommerce/LoginScreen/otp.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal:20),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
              Center(
                child: Image.asset('assets/images/logo.png',
                height: 200,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],
                      ),
                      child: Icon(Icons.camera_alt,
                      size: 50,
                      color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                    Text('Add Profile Photo',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF2E3192),
                    ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              Row(
                children: [
                  Icon(Icons.mail,
                  color: Color(0xFF2E3192),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
                  SizedBox(
                  width: 300,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Enter your Email ID',
                        hintStyle: TextStyle(
                          color: Colors.grey[700],
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                  ),
                ),
              ],),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              Row(
                children: [
                  Icon(Icons.male,
                  color: Color(0xFF2E3192),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
                  SizedBox(
                  width: 150,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: ' Select Gender',
                        hintStyle: TextStyle(
                          color: Colors.grey[700],
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                  ),
                ),
              ],),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              Row(
                children: [
                  Icon(Icons.calendar_month,
                  color: Color(0xFF2E3192),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
                  SizedBox(
                  width: 150,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Enter D.O.B',
                        hintStyle: TextStyle(
                          color: Colors.grey[700],
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                  ),
                ),
              ],),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              Row(
                children: [
                  Icon(Icons.account_balance_outlined,
                  color: Color(0xFF2E3192),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
                  SizedBox(
                  width: 300,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Enter your Bank A/C Number',
                        hintStyle: TextStyle(
                          color: Colors.grey[700],
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                  ),
                ),
              ],),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.height * 0.05,),
                  SizedBox(
                  width: 150,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Enter IFSC Code',
                        hintStyle: TextStyle(
                          color: Colors.grey[700],
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                  ),
                ),
              ],),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text('SIGN UP',
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
                    MaterialPageRoute(builder: (context) => otpScreen()),
                    );
                    },
                    child: Text('Login',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}