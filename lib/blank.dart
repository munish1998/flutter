import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Blank extends StatefulWidget{
  const Blank({super.key});

  @override
  State<Blank> createState()=>_BlankPage();
}
class _BlankPage extends State <Blank>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Box items',style: TextStyle(color: Colors.black),),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Item List is Empty',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
      ),
    );
  }
}