import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(pointsCounterApp());
}
class pointsCounterApp extends StatefulWidget {
  @override
  State<pointsCounterApp> createState() => _pointsCounterAppState();
}
class _pointsCounterAppState extends State<pointsCounterApp> {
  int teamAPoints =0;
  int teamBPoints =0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Points Counter'),
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text('Team A', style: TextStyle(fontSize: 33),),
                      ),
                      Text('$teamAPoints', style: TextStyle(fontSize: 150, )),
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              fixedSize: Size(130, 40),
                            ),
                            onPressed: () {
                              setState(() {
                                teamAPoints ++;
                              });
                            },
                            child: Text('Add 1 point', style: TextStyle(color: Colors.black, fontSize: 15),)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(9),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              fixedSize: Size(130, 40),
                            ),
                            onPressed: () {
                              setState(() {
                                teamAPoints += 2;
                              });
                            },
                            child: Text('Add 2 points', style: TextStyle(color: Colors.black, fontSize: 15), )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(9),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              fixedSize: Size(130, 40),
                            ),
                            onPressed: () {
                              setState(() {
                                teamAPoints +=3 ;
                              });
                            },
                            child: Text('Add 3 points', style: TextStyle(color: Colors.black, fontSize: 15),)
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 400,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text('Team B', style: TextStyle(fontSize: 33),),
                      ),
                      Text('$teamBPoints', style: TextStyle(fontSize: 150, )),
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              fixedSize: Size(130, 40),
                            ),
                            onPressed: () {
                              setState(() {
                                teamBPoints ++ ;
                              });
                            },
                            child: Text('Add 1 point', style: TextStyle(color: Colors.black, fontSize: 15),)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              fixedSize: Size(130, 40),
                            ),
                            onPressed: () {
                              setState(() {
                                teamBPoints += 2 ;
                              });
                            },
                            child: Text('Add 2 points', style: TextStyle(color: Colors.black, fontSize: 15),)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              fixedSize: Size(130, 40),
                            ),
                            onPressed: () {
                              setState(() {
                                teamBPoints += 3 ;
                              });
                            },
                            child: Text('Add 3 points', style: TextStyle(color: Colors.black, fontSize: 15),)
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      fixedSize: Size(130, 40),
                    ),onPressed: (){
                      setState(() {
                        teamAPoints = 0;
                        teamBPoints = 0;
                      });
                },
                  child: Text('Reset', style: TextStyle(color: Colors.black, fontSize: 15),),
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}


