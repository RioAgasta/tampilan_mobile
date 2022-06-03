import 'package:flutter/material.dart';
import 'package:tampilan_final/ui/ui_helper.dart';
import 'package:tampilan_final/views/scanner_view.dart';
import 'package:tampilan_final/views/topup_view.dart';
import 'package:tampilan_final/views/transfer_view.dart';
import 'package:tampilan_final/views/request_view.dart';

class DashboardView extends StatefulWidget {
  DashboardView() : super();

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    void _navigateToTopUpView(BuildContext context) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => TopUpView()));
    }

    void _navigateToTransferView(BuildContext context) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => TransferView()));
    }

    void _navigateToRequestView(BuildContext context) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => RequestView()));
    }

    void _navigateToScannerView(BuildContext context) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScannerView()));
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: screenWidth,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/bg3.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            verticalSpaceSmall,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Good Morning, \nRio!',
                                  style: TextStyle(
                                    fontFamily: 'SegoeUI',
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white
                                  ),
                                ),
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        print('PFP Tapped');
                                      },
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.white,
                                              spreadRadius: 2,
                                            )
                                          ],
                                          image: DecorationImage(
                                            image: AssetImage('assets/propic.png'),
                                            fit: BoxFit.cover
                                          )
                                        ),
                                      ),
                                    ),
                                    verticalSpaceSmall,
                                    Text('Rp100.000',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: screenWidth,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 60.0),
                            child: Container(
                              width: screenWidth - 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: const Offset(0, 0),
                                    blurRadius: 4,
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Send Money To: ',
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontFamily: 'Segoe UI',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    verticalSpaceMedium,
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () async {
                                            print('Firdan Tapped');
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(50),
                                                  // boxShadow: [
                                                  //   BoxShadow(
                                                  //     color: Colors.black12,
                                                  //     spreadRadius: 2,
                                                  //   )
                                                  // ],
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/propic.png'),
                                                    fit: BoxFit.cover,
                                                  )
                                                ),
                                              ),
                                              verticalSpaceSmall,
                                              Text('Firdan',
                                                style: TextStyle(
                                                  fontFamily: 'Segoe UI',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            print('Diaz Tapped');
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(50),
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/propic.png'),
                                                    fit: BoxFit.cover,
                                                  )
                                                ),
                                              ),
                                              verticalSpaceSmall,
                                              Text('Diaz',
                                                style: TextStyle(
                                                  fontFamily: 'Segoe UI',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            print('Rafi Tapped');
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(50),
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/propic.png'),
                                                    fit: BoxFit.cover,
                                                  )
                                                ),
                                              ),
                                              verticalSpaceSmall,
                                              Text('Rafi',
                                                style: TextStyle(
                                                  fontFamily: 'Segoe UI',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            _navigateToTransferView(context);
                                            print('Others Tapped');
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(50),
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/threedots.png'),
                                                    fit: BoxFit.cover,
                                                  )
                                                ),
                                              ),
                                              verticalSpaceSmall,
                                              Text('Others',
                                                style: TextStyle(
                                                  color: Colors.lightBlueAccent,
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
                                  ],
                                ),
                              ),
                            ),
                          ),
                          verticalSpaceSmall,
                          Container(
                            width: screenWidth - 20,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: const Offset(0, 0),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Feed',
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontFamily: 'Segoe UI',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  verticalSpaceMedium,
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'There is Currently Nothing To Show Here :(',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Segoe UI',
                                          color: Colors.black26,
                                        ),
                                      ),
                                    ],
                                  ),
                                  verticalSpaceMedium,
                                ],
                              )
                            )
                          ),
                          verticalSpaceSmall,
                          Container(
                            width: screenWidth - 20,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: const Offset(0, 0),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Recent Transactions: ',
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontFamily: 'Segoe UI',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  verticalSpaceMedium,
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(50),
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/logo1.png'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              horizontalSpaceTiny,
                                              Text(
                                                'Spotify',
                                                style: TextStyle(
                                                  fontFamily: 'Segoe UI',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          horizontalSpaceLarge,
                                          Text(
                                            '- Rp59.000',
                                            style: TextStyle(
                                              fontFamily: 'Segoe UI',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500
                                            ),
                                          ),
                                        ],
                                      ),
                                      verticalSpaceSmall,
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(50),
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/logo2.png'),
                                                    fit: BoxFit.cover
                                                  )
                                                ),
                                              ),
                                              horizontalSpaceTiny,
                                              Text(
                                                'Tokopedia',
                                                style: TextStyle(
                                                  fontFamily: 'Segoe UI',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          horizontalSpaceLarge,
                                          Text(
                                            '- Rp241.000',
                                            style: TextStyle(
                                              fontFamily: 'Segoe UI',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          verticalSpaceMassive,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 150,
                right: 0,
                left: 0,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        width: screenWidth - 20,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  offset: const Offset(0, 0),
                                  blurRadius: 4.0
                              )
                            ]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Material(
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () async {
                                        _navigateToTopUpView(context);
                                        print('Top Up Tapped');
                                      },
                                      icon: Icon(Icons.credit_card_rounded, color: Colors.indigo, size: 35,),
                                    ),
                                    verticalSpaceTiny,
                                    Text('Top Up', style: TextStyle(fontSize: 18, fontFamily: 'Segoe UI'))
                                  ],
                                ),
                              ),
                              Material(
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () async {
                                        _navigateToTransferView(context);
                                        print('Send Tapped');
                                      },
                                      icon: Icon(Icons.attach_money, color: Colors.indigo, size: 35),
                                    ),
                                    verticalSpaceTiny,
                                    Text('Send', style: TextStyle(fontSize: 18, fontFamily: 'Segoe UI'))
                                  ],
                                ),
                              ),
                              Material(
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () async {
                                        _navigateToRequestView(context);
                                        print('Request Tapped');
                                      },
                                      icon: Icon(Icons.call_received_sharp, color: Colors.indigo, size: 35),
                                    ),
                                    verticalSpaceTiny,
                                    Text('Request', style: TextStyle(fontSize: 18, fontFamily: 'Segoe UI'))
                                  ],
                                ),
                              ),
                              Material(
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () async {
                                        _navigateToScannerView(context);
                                        print('Scan Tapped');
                                      },
                                      icon: Icon(Icons.qr_code_scanner, color: Colors.indigo, size: 35),
                                    ),
                                    verticalSpaceTiny,
                                    Text('Scan', style: TextStyle(fontSize: 18, fontFamily: 'Segoe UI'))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
