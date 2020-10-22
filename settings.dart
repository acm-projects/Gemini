import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  Settings();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 35,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 20),
      icon: Icon(
        Icons.settings,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/SettingsPage');
      },
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SettingButton('Change Username'),
            SettingButton('Change Password'),
            SettingButton('Delivery Information'),
            SettingButton('Payment Information'),
            SettingButton('Notification Settings'),
            SettingButton('Privacy Settings'),
            SettingButton('Log Out'),
          ],
        ),
      ),
    );
  }
}

class SettingButton extends StatelessWidget {
  final String category;

  SettingButton(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 330,
      margin: EdgeInsets.only(top: 15),
      child: RaisedButton(
        padding: EdgeInsets.only(top: 10),
        color: Colors.purple[300],
        textColor: Colors.white,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            category,
            style: TextStyle(fontSize: 21),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/SettingsButton');
        },
      ),
    );
  }
}

class SettingsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Specific Setting',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
    );
  }
}
