import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class cashed{

  static Future<bool> setprefs(String value)async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('path', value);
  }


  static Future<String?> getPrefs()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('path');
  }

  static String base64String(Uint8List data){
    return base64Encode(data);
  }

  static Image imageFromBase64String(String base64String){
    return Image.memory(base64Decode(base64String),fit: BoxFit.fill,);
  }
}