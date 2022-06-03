// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:tampilan_final/views/signup_view.dart';
// import 'package:tampilan_final/widgets/inputTextWidget.dart';
// import 'package:tampilan_final/ui/ui_helper.dart';
// import 'package:tampilan_final/views/dashboard_view.dart';

// class LoginView1 extends StatefulWidget {
//   LoginView1() : super();

//   @override
//   _LoginView1State createState() => _LoginView1State();
// }

// class _LoginView1State extends State<LoginView1> {

//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;

//     final TextEditingController _passController = TextEditingController();
//     final TextEditingController _emailController = TextEditingController();

//     void _navigateToDashboard(BuildContext context) {
//       Navigator.of(context).push(MaterialPageRoute(builder: (context) => DashboardView()));
//     }
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Stack(
//             children: <Widget>[
//               Container(
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('assets/bg1.png'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 child: Center(
//                   child: Column(
//                     children: <Widget>[
//                       Padding(
//                         padding: const EdgeInsets.only(left: 30.0, right: 10.0, top: 125.0, bottom: 10.0),
//                         child: Row(
//                           children: [
//                             Container(
//                               height: 55,
//                               width: 300,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(50),
//                                   gradient: LinearGradient(
//                                       begin: Alignment.centerLeft,
//                                       end: Alignment.centerRight,
//                                       colors: [
//                                         Colors.blue.shade700,
//                                         Colors.lightBlueAccent.shade100,
//                                       ]
//                                   ),
//                                   boxShadow: [
//                                     BoxShadow(
//                                         color: Colors.black,
//                                         offset: const Offset(0, 0),
//                                         blurRadius: 4.0
//                                     ),
//                                   ]
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsets.only(top: 13.0),
//                                 child: Text(
//                                   'Login to App',
//                                   style: TextStyle(
//                                     fontFamily: 'Segoe UI',
//                                     fontSize: 25,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white,
//                                   ),
//                                   textAlign: TextAlign.center,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       verticalSpaceSmall,
//                       Form(
//                         key: _formKey,
//                         child: Column(
//                           children: [
//                             InputTextWidget(
//                               controller: _emailController,
//                               icon: Icons.email,
//                               labelText: "Email Address",
//                               obscureText: false,
//                               keyboardType: TextInputType.emailAddress,
//                               validator: (value) {
//                                 if (value == null || value.isEmpty) {
//                                   return 'Please Enter Your Email';
//                                 } else {
//                                   return null;
//                                 }
//                               }
//                             ),
//                             verticalSpaceSmall,
//                             InputTextWidget(
//                               controller: _passController,
//                               icon: Icons.lock,
//                               labelText: "Password",
//                               obscureText: true,
//                               keyboardType: TextInputType.text,
//                               validator: (value) {
//                                 if (value == null || value.isEmpty) {
//                                   return 'Please Enter Your Password';
//                                 } else if (value.length < 8) {
//                                   return 'Password Must Have At Least 8 Characters';
//                                 } else {
//                                   return null;
//                                 }
//                               },
//                             ),
//                             verticalSpaceMedium,
//                             Container(
//                               width: 300,
//                               height: 55,
//                               child: ElevatedButton(
//                                 onPressed: () async {
//                                   print('Validating...');
//                                   if (_formKey.currentState!.validate()){
//                                     print('Logged in');
//                                     _navigateToDashboard(context);
//                                   };
//                                 },
//                                 style: ElevatedButton.styleFrom(
//                                   primary: Colors.white,
//                                   elevation: 10.0,
//                                   padding: EdgeInsets.symmetric(horizontal: 0),
//                                   shape: const RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.all(Radius.circular(12.0)),
//                                   ),
//                                 ),
//                                 child: Ink(
//                                   decoration: BoxDecoration(
//                                     color: Colors.blue, // Color(0xffF05945),
//                                     borderRadius: BorderRadius.circular(12.0)
//                                   ),
//                                   child: Container(
//                                     alignment: Alignment.center,
//                                     child: Text(
//                                       "Login",
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(color: Colors.white, fontSize: 25),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
                      
//                       verticalSpaceSmall,
//                       verticalSpaceTiny,
//                       Wrap(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 30.0, right: 10.0, top: 15.0),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 boxShadow: <BoxShadow>[
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     offset: const Offset(0, 0),
//                                     blurRadius: 5.0,
//                                   ),
//                                 ],
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(12.0),
//                               ),
//                               width: (screenWidth / 2) - 40,
//                               height: 55,
//                               child: Material(
//                                 borderRadius: BorderRadius.circular(12.0),
//                                 child: InkWell(
//                                   onTap: () {
//                                     print("Facebook Tapped");
//                                   },
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Row(
//                                       children: [
//                                         Image.asset("assets/fb.png", fit: BoxFit.cover),
//                                         horizontalSpaceTiny,
//                                         Text("Sign in using\nfacebook")
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 10.0, right: 30.0, top: 15.0),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 boxShadow: <BoxShadow>[
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     offset: const Offset(0, 0),
//                                     blurRadius: 5.0,
//                                   ),
//                                 ],
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(12.0),
//                               ),
//                               width: (screenWidth / 2) - 40,
//                               height: 55,
//                               child: Material(
//                                 borderRadius: BorderRadius.circular(12.0),
//                                 child: InkWell(
//                                   onTap: () {
//                                     print("Google Tapped");
//                                   },
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Row(
//                                       children: [
//                                         Image.asset("assets/google.png", fit: BoxFit.cover),
//                                         horizontalSpaceTiny,
//                                         Text("Sign in using\ngoogle")
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       verticalSpaceSmall,
//                       verticalSpaceTiny,
//                       Padding(
//                         padding: const EdgeInsets.only(bottom: 100.0),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: Stack(
//         children: [
//           new Container(
//             height: 50.0,
//             color: Colors.transparent,
//             child: Center(
//                 child: Wrap(
//                   children: [
//                     Text(
//                       "Don't have an account?  ",
//                       style: TextStyle(
//                           color: Colors.grey[600], fontWeight: FontWeight.bold),
//                     ),
//                     Material(
//                         child: InkWell(
//                           onTap: () {
//                             print("sign up tapped");
//                             Get.to(() => SignUpView());
//                           },
//                           child: Text(
//                             "Sign Up",
//                             style: TextStyle(
//                               color: Colors.blue[800],
//                               fontWeight: FontWeight.bold,
//                               fontSize: 15,
//                             ),
//                           ),
//                         ),
//                     ),
//                   ],
//                 ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }