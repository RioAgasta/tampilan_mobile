import 'package:flutter/material.dart';
import 'package:tampilan_final/ui/ui_helper.dart';
import 'package:tampilan_final/widgets/inputTextWidget.dart';

class TransferView extends StatefulWidget {
  const TransferView({Key? key}) : super(key: key);

  @override
  _TransferViewState createState() => _TransferViewState();
}

class _TransferViewState extends State<TransferView> {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    final List<String> name = <String>['Daniel', 'Diaz', 'Didi', 'Dziki',
      'Fauzan', 'Firdan', 'Kevin', 'Nafish', 'Rafi', 'Vinsen'];
    int? selectedIndex;

    return Scaffold(
      appBar: AppBar(
        title: Text('Send Money'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 10, top: 25),
            child: Column(
              children: <Widget>[
                Container(
                  height: 75,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.indigo,
                        Colors.indigoAccent,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        offset: const Offset(0, 0),
                        blurRadius: 5.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Text(
                      'Who Would You Like To \nSend Money To?',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                verticalSpaceMedium,
                Icon(
                  Icons.arrow_upward,
                  color: Colors.indigo,
                  size: 20,
                ),
                verticalSpaceTiny,
                SizedBox(
                  width: screenWidth - 20,
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: name.length,
                    itemBuilder: (BuildContext context, int index) {
                      // return InkWell(
                      //   onTap: () async {
                      //     setState(() {
                      //       textColor[index] = Colors.lightBlueAccent;
                      //     });
                      //   },
                      //   child: AnimatedContainer(
                      //     width: screenWidth - 60,
                      //     padding: EdgeInsets.all(10),
                      //     duration: Duration(seconds: 0),
                      //     decoration: BoxDecoration(
                      //       border: Border.all(
                      //         color: Colors.white,
                      //         width: 2,
                      //       ),
                      //     ),
                      //     child: Row(
                      //       children: [
                      //         Container(
                      //           width: 50,
                      //           height: 50,
                      //           decoration: BoxDecoration(
                      //               borderRadius: BorderRadius.circular(50),
                      //               image: DecorationImage(
                      //                 image: AssetImage('assets/propic.png'),
                      //                 fit: BoxFit.cover,
                      //               )
                      //           ),
                      //         ),
                      //         horizontalSpaceSmall,
                      //         Text(
                      //           '${name[index]}',
                      //           style: TextStyle(
                      //             fontFamily: 'Segoe UI',
                      //             fontSize: 18,
                      //             fontWeight: FontWeight.w500,
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // );
                      return ListTile(
                        title: Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  image: AssetImage('assets/propic.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            horizontalSpaceSmall,
                            Text(
                              '${name[index]}',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        tileColor: selectedIndex == index ? Colors.lightBlueAccent : null,
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      );
                    },
                  ),
                ),
                verticalSpaceTiny,
                Icon(
                  Icons.arrow_downward,
                  color: Colors.indigo,
                  size: 20,
                ),
                verticalSpaceMedium,
                InputTextWidget(
                  labelText: 'Insert Money Amount',
                  icon: Icons.attach_money,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                ),
                verticalSpaceMedium,
                Container(
                  width: 300,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () async {
                      print("Money Sent!");
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
                          color: Colors.indigo, // Color(0xffF05945),
                          borderRadius: BorderRadius.circular(12.0)
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Send",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                ),
                verticalSpaceMassive
              ],
            ),
          ),
        ),
      ),
    );
  }
}
