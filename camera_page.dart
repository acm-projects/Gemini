import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyCam());

class MyCam extends StatefulWidget {
  @override
  _MyCamState createState() => _MyCamState();
}

class _MyCamState extends State<MyCam> {
  File _image;
  Future getImage() async{
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;

    });
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'Take a picture of your outfit!',
    home: new Scaffold(
    appBar: new AppBar(
      title: new Text(
          'Take a picture of your outfit!',
          style: TextStyle(
            fontFamily: 'Oxygen',
            color : Color(0xffF4E4D6),
          )
      ),
      centerTitle: true,
      backgroundColor: Color(0xff86466C),
    ),
      body: new Center(child: _image == null ? new Text('No image selected'): new Image.file(_image),
      ),
      floatingActionButton: new FloatingActionButton(onPressed: getImage,
        tooltip: 'Pick Image',
        backgroundColor: Color(0xff86466C),
        child: new Icon(
            Icons.camera_alt,
            color: Color(0xffF4E4D6),
        ),
      ),
      ),
    );
  }
}


