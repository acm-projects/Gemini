import 'package:flutter/material.dart';
import 'package:gemini_app/FirstScreen.dart';
import 'main.dart';
import 'auth.dart';
import 'FirstScreen.dart';

void main() => runApp(MaterialApp(
  home: RegisterPage(),
));

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Color(0xffF4E4D6),
    body: SingleChildScrollView(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Column>[
      Column(
      mainAxisAlignment: MainAxisAlignment.center,
          children: <Column>[
      Column(
      children: <Widget>[
        Padding(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 5),
          child: Image.asset(
            'assets/Gemini Logo Transparent.png',
            width: 270,
            height: 270,
          ),
        ),
        SizedBox(
          width:300,
          child: Column(
            children: [
           Padding(
             padding: EdgeInsets.all(5),
            child: TextField(
                onChanged: (String str){String username = str;},
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(70)),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none),
                  ),
                  filled: true,
                  hintText: 'Enter a valid email address',
                  hintStyle: new TextStyle(color: Color(0xffB48C4A)),
                  fillColor: Colors.white,
                )
                ),
           ),
            Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                onChanged: (String str){String password = str;},
                obscureText: true,
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(70)),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none),
                  ),
                  filled: true,
                  hintText: 'Set a password',
                  hintStyle: new TextStyle(color: Color(0xffB48C4A)),
                  fillColor: Colors.white,
                ),
              ),
            ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Padding(
                       padding: EdgeInsets.all(10),
                      child: SizedBox(
                        height: 50,
                        width: 120,
                          child: RaisedButton(
                            color: Color(0xffB48C4A),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                            onPressed: () {},
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
                     )
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Image.asset('assets/google.png', height: 100, width: 100),
                            iconSize: 80,
                          onPressed: () {
                            signInWithGoogle().then((result) {
                              if (result != null) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return FirstScreen();
                                    },
                                  ),
                                );
                              }
                            });
                          },
                        ),
                        IconButton(
                          icon: Image.asset('assets/facebook.png', height: 100, width: 100),
                          iconSize: 80,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Image.asset('assets/apple.png', height: 100, width: 100),
                          iconSize: 80,
                          onPressed: () {},
                        ),
                      ],
                    )
                  )
                ],
              )
            ],
          ),
),
]
)
]
),
]
),
    )
);
  }
}
