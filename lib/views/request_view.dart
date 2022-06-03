import 'package:flutter/material.dart';
import 'package:tampilan_final/widgets/inputTextWidget.dart';
import 'package:tampilan_final/ui/ui_helper.dart';

class RequestView extends StatefulWidget {
  const RequestView({ Key? key }) : super(key: key);

  @override
  State<RequestView> createState() => _RequestViewState();
}

class _RequestViewState extends State<RequestView> {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Request Money'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              verticalSpaceMedium,
              Center(
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 3,
                      ),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.blue,
                        Colors.indigo,
                      ]
                    )
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                      image: AssetImage('assets/propic.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                horizontalSpaceTiny,
                                Text(
                                  'Rio Agasta',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      verticalSpaceSmall,
                      Image(
                        image: AssetImage('assets/QR.png'),
                        fit: BoxFit.contain,
                        width: 150,
                        height: 150,
                      ),
                      verticalSpaceMedium,
                      InputTextWidget(labelText: 'Insert Money Amount', 
                        icon: Icons.attach_money, 
                        obscureText: false, 
                        keyboardType: TextInputType.number,
                      ),
                      verticalSpaceSmall,
                      Container(
                        width: 200,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () async {
                            print("Money Amount Set");
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
                                "Confirm",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 25),
                              ),
                            ),
                          ),
                        ),
                      ),
                      verticalSpaceMedium,
                      Text(
                        'Share Request Link',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      verticalSpaceTiny,
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Material(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(12),
                              child: InkWell(
                                onTap: () async {
                                  print('Whatsapp Tapped');
                                },
                                child: Column(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/wa.png'),
                                      fit: BoxFit.cover,
                                      width: 25,
                                      height: 25,
                                    ),
                                    verticalSpaceTiny,
                                    Text('Whatsapp',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Material(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(12),
                              child: InkWell(
                                onTap: () async {
                                  print('LINE Tapped');
                                },
                                child: Column(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/line.png'),
                                      fit: BoxFit.cover,
                                      width: 25,
                                      height: 25,
                                    ),
                                    verticalSpaceTiny,
                                    Text('LINE',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Material(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(12),
                              child: InkWell(
                                onTap: () async {
                                  print('Copy Link Tapped');
                                },
                                child: Column(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/link.png'),
                                      fit: BoxFit.cover,
                                      width: 25,
                                      height: 25,
                                    ),
                                    verticalSpaceTiny,
                                    Text('Copy Link',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ),
              verticalSpaceMassive,
            ],
          ),
        ),
      ),
    );
  }
}