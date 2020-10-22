import 'package:flutter/material.dart';
import 'package:gemini_app/camera_page.dart';
import 'register_page.dart';
import 'login_page.dart';

void main() => runApp(MaterialApp(
  home: Login(),
));

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4E4D6),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Column>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Column>[
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Image.asset(
                  'assets/Gemini Logo Transparent.png',
                  width: 320,
                  height: 320,
                ),
         )
              ]
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                  width: 250,
                  child: RaisedButton(
                    color: Color(0xffB48C4A),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>LoginPage())
                      );
                    },
                    child: Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'Oxygen',
                          fontSize: 17,
                          color: Color(0xffFFF4E1),
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: RaisedButton(
                    color: Color(0xffB48C4A),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>RegisterPage())
                      );
                    },
                    child: Text(
                        'Register',
                      style: TextStyle(
                        fontFamily: 'Oxygen',
                        fontSize: 17,
                        color: Color(0xffFFF4E1),
                      )
                    ),
                  ),
                ),
                ),
              ],
            )
          ]
        ),
        ]
        ),
      );
  }
}
