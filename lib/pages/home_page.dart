import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _handClickButton(int i) {
    switch (i) {
      case 0:
        setState(() {
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
              Text(
                'ROUND 1',
                style: TextStyle(
                  fontSize: 16.0
                ),
              )
            ],
          );
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF640002),
        title: const Text('OLYMPIC BOXING SCORING'),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 8.0),
            Image.asset(
              'assets/images/logo.png',
              width: 350.0,
            ),
            SizedBox(height: 8.0),

            ColoredBox(
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Women's Light (57.60kg) Semi-final",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16.0),

            //Ireland
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Color(0xFFA00000),
                  size: 80,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/flag_ireland.png',
                          width: 45.0,
                        ),
                        Text(
                          '  IRELAND',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        )
                      ],
                    ),
                    Text(
                      '        HARRINGTON Kellie Anne',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    )
                  ],
                )
              ],
            ),

            //thailand
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Color(0xFF0000A0),
                  size: 80,
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/flag_thailand.png',
                            width: 45.0,
                          ),
                          Text(
                            '  THAILAND',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                      '        SEESONDEE Sudaporn',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    )
                  ],
                )
              ],
            ),

            //ช่องแบ่งสี
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Container(
                  color: Color(0xFFA00000),
                  height: 12.0,
                )),
                Expanded(
                    child: Container(
                  color: Color(0xFF0000A0),
                  height: 12.0,
                )),
              ],
            ),

            //ปุ่ม
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //red
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _handClickButton(0);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFA00000),
                    ),
                    child: Icon(
                      Icons.person,
                    ),
                  ),
                )),
                //blue
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _handClickButton(1);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF0000A0),
                    ),
                    child: Icon(
                      Icons.person,
                    ),
                  ),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
