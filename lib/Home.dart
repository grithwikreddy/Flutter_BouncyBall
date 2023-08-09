import 'dart:async';

import 'package:flutter/material.dart';
import 'buttons.dart';
import 'ball.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("images/456.gif"),
              fit: BoxFit.fill,
            )
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0,10,10,120),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Nexthome()),
                );
              },
              child: const Text('START',style: TextStyle(color: Colors.brown)),
style: ElevatedButton.styleFrom(
  primary: Colors.red,
    textStyle: TextStyle(fontWeight: FontWeight.bold),

),

            ),
          ),
        ),
    ),
    );
  }
}


class Nexthome extends StatefulWidget {
  const Nexthome({Key? key}) : super(key: key);

  @override
  State<Nexthome> createState() => _HomeState();
}
enum direction{LEFT,RIGHT,UP,DOWN}
class _HomeState extends State<Nexthome> {
  @override
var uy =direction.UP;
var dir =direction.LEFT;
  double ly=0;
  int level=0,jk=0;
  int r=0,iop=0;
  int score=0;
  String scor="";
  double ry=0,ballx=0,bally=0;
  void play(){
    if(r==0){
      setState(() {iop=0;r=1;
        ballrotate();
      });
    }
  }
  void leftup(){
    setState(() {
      if(r==0){r=1;iop=0;
        ballrotate();
      }
    });
    setState(() {

      ly-=0.1;
    });
  }

  void fail(){
    if(r==0){
    setState(() {r=0;jk=0;
      if(score==0){
        scor="DAM NULL";
      }
      else if(score<3){
        scor="YOUR SCORE IS $score. IT'S TOO LOW";
      }
      else if(score>10){
        scor="YOUR SCORE IS TOO GOOD ON A NUMBER $score";
      }
      else{
        scor="YOUR SCORE IS $score 'GOOD' ";
      }

    ballx=0;
    bally=0;
    score=0;
    iop=0;
    ly=0;
    ry=0;


    });}

  }
void ballrotate(){
  setState(() {scor="";
    ballx=0;
    bally=0;
  });
   Timer.periodic(Duration(milliseconds: 40),(t){
     setState(() {if(jk==0){
if(iop==0){
         if (uy == direction.UP) {
           if (bally < -1) {
             uy = direction.DOWN;
             if (dir == direction.LEFT) {
               if (ballx < -0.85) {
                 if (bally < ly + 0.25 && bally > ly - 0.25) {
                   dir = direction.RIGHT;
                   score++;
                   ballx += 0.01;
                 }
                 else if (ballx < -1) {
                   t.cancel();
                   r = 0;
                   fail();
                 }
                 else {
                   ballx -= 0.01;
                 }
               }
               else {
                 ballx -= 0.01;
               }
             }
             else {
               if (ballx > 0.85) {
                 if (bally < ry + 0.25 && bally > ry - 0.25) {
                   dir = direction.LEFT;
                   score++;
                   ballx -= 0.01;
                 }
                 else if (ballx > 1) {
                   t.cancel();
                   r = 0;
                   fail();
                 }
                 else {
                   ballx += 0.01;
                 }
               }
               else {
                 ballx += 0.01;
               }
             }
           }
           else {
             bally -= 0.01;
             if (dir == direction.LEFT) {
               if (ballx < -0.85) {
                 if (bally < ly + 0.25 && bally > ly - 0.25) {
                   dir = direction.RIGHT;
                   score++;
                   ballx += 0.01;
                 }
                 else if (ballx < -1) {
                   t.cancel();
                   r = 0;
                   fail();
                 }
                 else {
                   ballx -= 0.01;
                 }
               }
               else {
                 ballx -= 0.01;
               }
             }
             else {
               if (ballx > 0.85) {
                 if (bally < ry + 0.25 && bally > ry - 0.25) {
                   dir = direction.LEFT;
                   score++;
                   ballx -= 0.01;
                 }
                 else if (ballx > 1) {
                   t.cancel();
                   r = 0;
                   fail();
                 }
                 else {
                   ballx += 0.01;
                 }
               }
               else {
                 ballx += 0.01;
               }
             }
           }
         }
         else {
           if (bally > 1) {
             uy = direction.UP;
             if (dir == direction.LEFT) {
               if (ballx < -0.85) {
                 if (bally < ly + 0.25 && bally > ly - 0.25) {
                   dir = direction.RIGHT;
                   score++;
                   ballx += 0.01;
                 }
                 else if (ballx < -1) {
                   t.cancel();
                   r = 0;

                   fail();
                 }
                 else {
                   ballx -= 0.01;
                 }
               }
               else {
                 ballx -= 0.01;
               }
             }
             else {
               if (ballx > 0.85) {
                 if (bally < ry + 0.25 && bally > ry - 0.25) {
                   dir = direction.LEFT;
                   score++;
                   ballx -= 0.01;
                 }
                 else if (ballx > 1) {
                   t.cancel();
                   r = 0;
                   fail();
                 }
                 else {
                   ballx += 0.01;
                 }
               }
               else {
                 ballx += 0.01;
               }
             }
           }
           else {
             bally += 0.01;
             if (dir == direction.LEFT) {
               if (ballx < -0.85) {
                 if (bally < ly + 0.25 && bally > ly - 0.25) {
                   dir = direction.RIGHT;
                   score++;
                   ballx += 0.01;
                 }
                 else if (ballx < -1) {
                   t.cancel();
                   r = 0;
                   fail();
                 }
                 else {
                   ballx -= 0.01;
                 }
               }
               else {
                 ballx -= 0.01;
               }
             }
             else {
               if (ballx > 0.85) {
                 if (bally < ry + 0.25 && bally > ry - 0.25) {
                   dir = direction.LEFT;
                   score++;
                   ballx -= 0.01;
                 }
                 else if (ballx > 1) {
                   t.cancel();
                   r = 0;
                   fail();
                 }
                 else {
                   ballx += 0.01;
                 }
               }
               else {
                 ballx += 0.01;
               }
             }
           }
         }
      }
     }
     else{jk=0;
     t.cancel();
     }
     }
      );
    }


   );}

  void leftdown(){
    setState(() {
      if(r==0){r=1;iop=0;
        ballrotate();
      }
    });
    setState(() {
    ly+=0.1;
  });}
  void rightup(){
    setState(() {
      if(r==0){r=1;iop=0;
        ballrotate();
      }
    });
    setState(() {
    ry-=0.1;
  });}
  void rightdown(){
    setState(() {
      if(r==0){r=1;iop=0;
        ballrotate();
      }
    });
    setState(() {
    ry+=0.1;
  });}
  Widget build(BuildContext context) {
    return Container(
      child : Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(

            decoration: new BoxDecoration(
            image: new DecorationImage(
            image: new AssetImage("images/098.jpg"),
        fit: BoxFit.fill,
      )
    ),

              child: Stack(
                children: [
                  Container(
                    alignment: Alignment(-1,ly),
                    child: Container(
                        height: 100,
                        width: 30,
                        child :Center(child:
                        Container(
                          color: Colors.black,
                        ))
                    ),

                  ),
                  Container(
                    alignment: Alignment(-1,ly),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                          height: 100,
                          width: 5,
                          child :Center(child:
                          Container(
                            color: Colors.white,
                          ))
                      ),
                    ),

                  ),
                  Center(child: Padding(
                    padding: const EdgeInsets.fromLTRB(10.0,10.0,10.0,100.0),
                    child: Text(
                      '$scor',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30,
                      color: Colors.red,
                          decoration: TextDecoration.none),


                    ),
                  ),
                  ),
                  Ball(
                    ballx : ballx,
                    bally : bally,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          child: const Icon(Icons.home),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Home()),
                            );
                          },
                        ),
                        Container(
                          color: Color(0xFF381460),

                          height: 40,
                          child: Text('SCORE: $score',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25, color: Colors.white,
                                  decoration: TextDecoration.none)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment(1,ry),
                    child: Container(
                        height: 100,
                        width: 30,
                        child :Center(child:
                        Container(
                          color: Colors.black,
                        ))
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      alignment: Alignment(1,ry),
                      child: Container(
                          height: 100,
                          width: 5,
                          child :Center(child:
                          Container(
                            color: Colors.white,
                          ))
                      ),

                    ),
                  )
                ],
              ),
            ),),
          Expanded(child: Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("images/145.jpg"),
                  fit: BoxFit.fill,
                )
            ),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    MyButton(
                      icon: Icons.arrow_upward_sharp,
                      function: leftup ,
                    ),
                    MyButton(
                      icon: Icons.arrow_downward_sharp,
                      function: leftdown ,
                    ),
                  ],
                ),
              ),
                MyButton(
                  icon: Icons.play_circle,
                  function: play ,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyButton(
                        icon: Icons.arrow_upward_sharp,
                        function: rightup ,
                      ),
                      MyButton(
                        icon: Icons.arrow_downward_sharp,
                        function: rightdown ,
                      ),
                    ],
                  ),
                ),

              ]
            ),
          ),),
        ],
      ),
    );
  }
}
