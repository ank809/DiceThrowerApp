import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(Roll_Dice());
}

class Roll_Dice extends StatefulWidget {
  const Roll_Dice({super.key});

  @override
  State<Roll_Dice> createState() => _Roll_DiceState();
}

class _Roll_DiceState extends State<Roll_Dice> {
  var dice_numbber=2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(title: Text('Roll the dice ' ,) , backgroundColor: Color.fromARGB(255, 98, 59, 202), centerTitle: true,),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only( top:40.0),
            child: Expanded(
              child: Column(
                children:<Widget> [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('Roll the dice and unveil its hidden number! ' , style: TextStyle(fontSize: 23.0, color: Colors.amber),),
                  ),
                  SizedBox(height: 65.0),
                  TextButton(
                    onPressed: (){
                    setState(() {
                      // for 0-5 as we do not have any image with 0 so we add 1 in it 
                      dice_numbber= Random().nextInt(6)+1;
                    });
                  }, child:  Container(
                    width: 300.0,
                    child: BounceInUp(child: Image.asset('Assets/Images/dice$dice_numbber.png')),
                    ),
                    ),
                    SizedBox(height: 45.0,),
                    BounceInUp(child: Text('The dice has made its decision:$dice_numbber',  style: TextStyle(fontSize: 25.0, color: Colors.amber),)),
                ],
              ),
            ),
          ), ),
        ),
    );
  }
}