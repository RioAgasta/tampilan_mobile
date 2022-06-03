import 'package:flutter/material.dart';
import 'package:tampilan_final/widgets/inputTextWidget.dart';
import 'package:tampilan_final/ui/ui_helper.dart';
import 'package:tampilan_final/views/login_view.dart';

class SignUpView extends StatefulWidget {
  SignUpView() : super();

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final TextEditingController _passwordController = TextEditingController();

    void _navigateToLoginView(BuildContext context) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginView()));
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/bg2.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 10.0, top: 50.0, bottom: 10),
                        child: Row(
                          children: [
                            Container(
                              height: 55,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.indigo.shade900,
                                    Colors.tealAccent.shade700,
                                  ]
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: const Offset(0, 0),
                                    blurRadius: 4.0
                                  ),
                                ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 13.0),
                                child: Text(
                                  'Register Account',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      verticalSpaceSmall,
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            InputTextWidget(
                              icon: Icons.person,
                              labelText: "Username",
                              obscureText: false,
                              keyboardType: TextInputType.text,
                            ),
                            verticalSpaceSmall,
                            InputTextWidget(
                              icon: Icons.person,
                              labelText: "Name",
                              obscureText: false,
                              keyboardType: TextInputType.text,
                            ),
                            verticalSpaceSmall,
                            InputTextWidget(
                              icon: Icons.email,
                              labelText: "Email Address",
                              obscureText: false,
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Your Email\n';
                                } else {
                                  return null;
                                }
                              },
                            ),
                            verticalSpaceSmall,
                            InputTextWidget(
                              icon: Icons.phone,
                              labelText: "Phone Number",
                              obscureText: false,
                              keyboardType: TextInputType.text,
                            ),
                            verticalSpaceSmall,
                            InputTextWidget(
                              controller: _passwordController,
                              icon: Icons.lock,
                              labelText: "Password",
                              obscureText: true,
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Your Password\n';
                                } else if (value.length < 8) {
                                  return 'Password Should Have \nAt Least 8 Characters\n';
                                } else {
                                  return null;
                                }
                              },
                            ),
                            verticalSpaceSmall,
                            InputTextWidget(
                              icon: Icons.lock,
                              labelText: "Confirm Password",
                              obscureText: true,
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Confirm Your Password\n';
                                } else if (value.length < 8) {
                                  return 'Password Should Have \nAt Least 8 Characters\n';
                                } else if (value != _passwordController.text) {
                                  return 'Passwords Mismatch\n';
                                } else {
                                  return null;
                                }
                              },
                            ),
                            verticalSpaceMedium,
                            Container(
                              width: 300,
                              height: 55,
                              child: ElevatedButton(
                                onPressed: () async {
                                  print('Validating...');
                                  if (_formKey.currentState!.validate()){
                                    print('Account Registered');
                                    _navigateToLoginView(context);
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  elevation: 10.0,
                                  padding: EdgeInsets.symmetric(horizontal: 0),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                  ),
                                ),
                                child: Ink(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Colors.indigo.shade900,
                                        Colors.tealAccent.shade700
                                      ]
                                    )
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Register',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            verticalSpaceLarge,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}