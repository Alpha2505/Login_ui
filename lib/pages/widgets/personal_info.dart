import 'package:flutter/material.dart';
import 'package:login_ui/common/theme_helper.dart';
import 'package:login_ui/pages/widgets/vehicle_info.dart';

class PersonalInfo extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _PersonalInfoState();
  }
}

class _PersonalInfoState extends State<PersonalInfo> {
  double _headerHeight = 25;
  final Key _formKey = GlobalKey<FormState>();
  bool agree = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Personal Information'),
        toolbarHeight: 75,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            gradient: LinearGradient(
                colors: [Colors.teal.shade400, Colors.grey],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHeight,
            ),
            SafeArea(
              child: Container(  //this is login form
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Column(
                  children: [

                    SizedBox(height: 30.0),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SizedBox(height: 20.0),
                          TextField(
                            decoration: ThemeHelper().textInputDecoration('Name', 'Enter your name'),
                          ),
                          SizedBox(height: 30.0),
                          TextField(
                            decoration: ThemeHelper().textInputDecoration('Email', 'Enter your email'),
                          ),
                          SizedBox(height: 30),
                          TextField(
                            decoration: ThemeHelper().textInputDecoration('PIN Code of your address', 'Enter your PINCODE'),
                          ),
                          SizedBox(height: 30),
                          TextField(
                            obscureText: true,
                            decoration: ThemeHelper().textInputDecoration('Password', 'Enter your password'),
                          ),
                          SizedBox(height: 30),
                          TextField(
                            obscureText: true,
                            decoration: ThemeHelper().textInputDecoration('Confirm Password', 'Confirm your password'),
                          ),

                          SizedBox(height: 90),
                          Container(
                            decoration: ThemeHelper().buttonBoxDecoration(context),
                            child: ElevatedButton(
                              style: ThemeHelper().buttonStyle(),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => VehicleInfo()));
                              }, //after login redirect to homepage
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                child: Text('Sign Up'.toUpperCase(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
