import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hangman2/MODELCLASSHANGMAN.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: const Hangman2()),
  );
}

class Hangman2 extends StatefulWidget {
  const Hangman2({Key? key}) : super(key: key);

  @override
  State<Hangman2> createState() => _Hangman2State();
}

class _Hangman2State extends State<Hangman2> {


  List game = ["N","O","O","R","A",];


  List guesalphabets=[];
 int countvariable=0;
  bool head = false;
  bool body = false;
  bool hand = false;
  bool ll = false;
  bool ra = false;
  bool rl = false;
  bool t1 = false;
  bool t2 = false;
  bool t3 = false;
  bool t4 = false;
  bool t5 = false;




  bool finished(){
    if(countvariable==5){
      return true;
    }
    else if(countvariable==5){
      return true;
    }
    else{
      return false;
    }
  }
  int reset(){
    return countvariable=0;

  }
  
  play(String d) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 50,
          width: 50,
          child: Center(
            child: InkWell(onTap: (){
              setState(() {
                if(finished()==true){
                  print("Finished");
                  Alert(


                    context: context,
                    content: TextButton(onPressed: (){
                      Navigator.pop(context);
                      setState(() {
                        reset();

                        game=game[Random().nextInt(game.length)];

                      });

                    }, child: Text("Play  Again")),
                    title: "Finished",).show();reset();





                }else {
                  if (d == "N") {
                    t1 = true;
                  }
                  else if (d == "O") {
                    t2 = true;
                    t3 = true;
                  }

                  else if (d == "R") {
                    t4 = true;
                  }
                  else if (d == "A") {
                    t5 = true;

                  }

                  else {
                    countvariable++;


                    if (countvariable == 1) {
                      head = true;
                    }
                    else if (countvariable == 2) {
                      body = true;
                    }
                    else if (countvariable == 3) {
                      hand = true;
                    }
                    else if (countvariable == 4) {
                      ll = true;
                    }
                    else if (countvariable == 5) {
                      ra = true;
                    }
                    else if (countvariable == 6) {
                      rl = true;

                    }
                    Alert(content: TextButton(onPressed: (){
                      Navigator.pop(context);
                      setState(() {
                        reset();
                        guesalphabets.clear();
                        game=game[Random().nextInt(game.length)];
                      });

                    }, child: Text("Play Again")),
                        context: context,
                        desc:"Finished" ).show();reset();finished();




                  }




                }




              });

            },
              child: Card(
                color: Color(0xff1B0640),
                child: Center(
                  child: Text(
                    d,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  play2(String c) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: SizedBox(
          height: 50,
          width: 50,
          child: InkWell(
            onTap: (){
              setState(() {
                if(finished()==true) {
                  print("Finished");



                }else {
                  if (c == "N") {
                    t1 = true;
                  }
                  else if (c == "O") {
                    t2 = true;
                    t3 = true;
                  }
                  else if (c == "R") {
                    t4 = true;
                  }
                  else if (c == "A") {
                    t5 = true;

                  }


                  else {
                    countvariable++;
                    if (countvariable == 1) {
                      head = true;
                    }
                    else if (countvariable == 2) {
                      body = true;
                    }
                    else if (countvariable == 3) {
                      hand = true;
                    }
                    else if (countvariable == 4) {
                      ll = true;
                    }
                    else if (countvariable == 5) {
                      ra = true;
                    }
                    else if (countvariable == 6) {
                      rl = true;


                    }
                    Alert(content: TextButton(onPressed: (){
                      Navigator.pop(context);
                      setState(() {
                        reset();
                        guesalphabets.clear();
                        game=game[Random().nextInt(game.length)];
                      });

                    }, child: Text("Play Again")),
                        context: context,
                        desc:"Finished" ).show();reset();finished();


                  }

                }



              });

            },
            child: Card(
              color: Color(0xff1B0640),
              child: Center(
                child: Text(
                  c,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  firstdesign(String character,bool v){
    return
      Expanded(
        child: Container(
          color: Color(0xff1B0640),
          child: Center(
            child: Visibility(
              visible: v,
              child: Text(
               character,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      );

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5D08A9),
        elevation: 0.0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.volume_up_sharp,color: Colors.black,size: 40,)),
        ],
      ),
      backgroundColor: Color(0xff5D08A9),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 200,
                  child: Stack(
                    children: [
                      Image.asset("hangman33/hang.png"),
                      Visibility(
                          visible: head,
                          child: Image.asset("hangman33/head.png")),
                      Visibility(
                          visible: body,
                          child: Image.asset("hangman33/body.png")),
                      Visibility(
                          visible: hand,
                          child: Image.asset("hangman33/hand.png")),
                      Visibility(
                          visible: ll,
                          child: Image.asset("hangman33/ll.png")),
                      Visibility(
                          visible: ra,
                          child: Image.asset("hangman33/ra.png")),
                      Visibility(
                          visible: rl,
                          child: Image.asset("hangman33/rl.png")),
                    ],
                  ),
                ),
              ),

              GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 5,
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 2,
              childAspectRatio:23/17 ,
              children: [
                firstdesign("N",t1),
                firstdesign("O",t2),
                firstdesign("O",t3),
                firstdesign("R",t4),
                firstdesign("A",t5)
              ],


                 ),
              SizedBox(height: 25,),

              Row(
                children: [
                  play("A"),
                  play("B"),
                  play("C"),
                  play("D"),
                  play("E"),
                  play("F"),
                ],
              ),
              Row(
                children: [
                  play("G"),
                  play("H"),
                  play("I"),
                  play("J"),
                  play("K"),
                  play("L"),
                ],
              ),
              Row(
                children: [
                  play("M"),
                  play("N"),
                  play("O"),
                  play("P"),
                  play("Q"),
                  play("R"),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.center,
                      ),
                      play("S"),
                      play("T"),
                      play("U"),
                      play("V"),
                      play("W"),
                      play("X"),
                    ],
                  ),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.center,
                      ),
                      play2("Y"),
                      play2("Z"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
