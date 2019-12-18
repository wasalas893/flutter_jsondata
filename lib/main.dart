import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; 
import 'dart:async';
import 'dart:convert';

void main() {

  runApp(new MaterialApp(

    home:new Scaffold(
      appBar:new AppBar(
        title: new Text("sunrise app"),
        backgroundColor: Colors.purple,

      ),
    ),

  ));
}

Future<Map> getAllData() async{

  var api="https://api.sunrise-sunset.org/json?lat=36.7201600&lng=-4.4203400";

  var data=await http.get(api);

  var jsonData=json.decode(data.body);
}