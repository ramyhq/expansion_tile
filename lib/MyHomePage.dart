
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

//TODO 1
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 20),
          child: InfoCard(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset('assets/images/me.jpg',fit: BoxFit.cover,height: 450,),
                  expansionTile(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//TODO 2
class InfoCard extends StatelessWidget {
  final Widget child;
  const InfoCard({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
        side: BorderSide(color: Colors.black45,width: 2),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: child,
      ),
    );
  }
}

//TODO 3
Widget expansionTile(){
  return ExpansionTile(
    title: Text("Ramy Wahid"),
    children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text("I'm Ramy Wahid, 28 yeas old, Flutter Developer, I live in NewYork city"
            " I'm dreaming to be very successful developer in flutter field ",
        style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,height: 1.4,),
        textAlign: TextAlign.center,),
      ),
    ],
  );
}