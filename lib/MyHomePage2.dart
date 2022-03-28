
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables



import 'package:flutter/material.dart';

class MyHomePage2 extends StatefulWidget {
   MyHomePage2({Key? key}) : super(key: key);

  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  bool isExpanded = false ;

   Widget expansionTile(){
     return ExpansionTile(
       onExpansionChanged: (isE){
         setState(() {
           isExpanded = isE;
         });
       },
       title: Text('Ramy Wahid'),
       children: [
         Padding(
           padding: const EdgeInsets.all(12.0),
           child: Text("I'm Ramy Wahid, 28 yeas old, Flutter Developer, I live in NewYork city"
               " I'm dreaming to be very successful developer in flutter field ",
             style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,height: 1.4,),
             textAlign: TextAlign.center,),
         ),
       ],
     );
   }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0,horizontal: 30),          child: InfoCard(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                      color: isExpanded ? Colors.green :Colors.transparent,
                      width: double.infinity,
                      child: Text("Available for work ",textAlign: TextAlign.center,)),
                  Image.asset("assets/images/me.jpg",fit: BoxFit.cover,height: 450,),
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



class InfoCard extends StatelessWidget {
  const InfoCard({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
        side: BorderSide(color: Colors.black,width: 2),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: child),
    );
  }
}

