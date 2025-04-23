import 'package:flutter/material.dart';

void main() => runApp(CountPoint());

class CountPoint extends StatefulWidget {
  @override
  State<CountPoint> createState() => _CountPointState();
}

class _CountPointState extends State<CountPoint> {
  //   const CountPoint({super.key});
  int teamfakhr = 0;

  int teamRofy = 0;

  // add a function to add points to each team
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Count Point', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.orange,
        ),
        body: DecoratedBox(
          // BoxDecoration takes the image
          decoration: BoxDecoration(
            // Image set to background of the body
            image: DecorationImage(
              image: AssetImage("images/1.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly, // space between
                children: [
                  Column(
                    children: [
                      // add text \
                      Text(
                        "Team F",
                        style: TextStyle(
                          fontSize: 30,
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      Text(
                        "$teamfakhr",
                        style: TextStyle(
                          fontSize: 150,
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      // buttons
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 50),
                          // fixedSize: Size.fromHeight(40),
                          backgroundColor: Colors.orange,
                          shape: LinearBorder.bottom(),
                        ),
                        onPressed: () {
                          setState(() {
                            // update the UI
                            teamfakhr++;
                          });
                        },
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(
                            fontSize: 17,
                            color: const Color.fromARGB(255, 255, 255, 255), // color of text
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 50),
                          // fixedSize: Size.fromHeight(40),
                          backgroundColor: Colors.orange,
                          shape: LinearBorder.bottom(),
                        ),
                        onPressed: () {
                          setState(() {
                            // update the UI
                            teamfakhr += 2;
                          });
                        },
                        child: Text(
                          "Add 2 point",
                          style: TextStyle(
                            fontSize: 17,
                            color: const Color.fromARGB(
                              255,
                              253,
                              253,
                              253,
                            ), // color of text
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 50),
                          // fixedSize: Size.fromHeight(40),
                          backgroundColor: Colors.orange,
                          shape: LinearBorder.bottom(),
                        ),
                        onPressed: () {
                          setState(() {
                            // update the UI
                            teamfakhr += 3;
                          });
                        },
                        child: Text(
                          "Add 3 point",
                          style: TextStyle(
                            fontSize: 17,
                            color: const Color.fromARGB(
                              255,
                              255,
                              255,
                              255,
                            ), // color of text
                          ),
                        ),
                      ),
                      const SizedBox(height: 10), // space between buttons
                    ],
                  ),
                  // vertical line between the two columns
                  SizedBox(
                    height: 350,
                    child: VerticalDivider(
                      color: const Color.fromARGB(255, 75, 72, 72),
                      thickness: 1,
                      width: 5,
                    ),
                  ), // vertical line between the two columns

                  Column(
                    children: [
                      // add text \
                      Text(
                        "Team R",
                        style: TextStyle(fontSize: 30, color: const Color.fromARGB(255, 248, 248, 248)),
                      ),
                      Text(
                        "$teamRofy",
                        style: TextStyle(fontSize: 150, color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      // buttons
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 50),
                          // fixedSize: Size.fromHeight(40),
                          backgroundColor: Colors.orange,
                          shape: LinearBorder.bottom(),
                        ),
                        onPressed: () {
                          setState(() {
                            // update the UI
                            teamRofy += 1;
                          });
                        },
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(
                            fontSize: 17,
                            color: const Color.fromARGB(
                              255,
                              255,
                              255,
                              255,
                            ), // color of text
                          ),
                        ),
                      ),
                      const SizedBox(height: 10), // space between buttons
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 50),
                          // fixedSize: Size.fromHeight(40),
                          backgroundColor: Colors.orange,
                          shape: LinearBorder.bottom(),
                        ),
                        onPressed: () {
                          setState(() {
                            // update the UI
                            teamRofy += 2;
                          });
                        },
                        child: Text(
                          "Add 2 point",
                          style: TextStyle(
                            fontSize: 17,
                            color: const Color.fromARGB(
                              255,
                              255,
                              255,
                              255,
                            ), // color of text
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 50),
                          // fixedSize: Size.fromHeight(40),
                          backgroundColor: Colors.orange,
                          shape: LinearBorder.bottom(),
                        ),
                        onPressed: () {
                          setState(() {
                            // update the UI
                            teamRofy += 3;
                          });
                        },
                        child: Text(
                          "Add 3 point",
                          style: TextStyle(
                            fontSize: 17,
                            color: const Color.fromARGB(
                              255,
                              255,
                              255,
                              255,
                            ), // color of text
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 50,
              ), // space between the two columns and the reset button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: Size(150, 50),
                  // fixedSize: Size.fromHeight(40),
                  shape: LinearBorder.bottom(),
                ),
                onPressed: () {
                  setState(() {
                    // update the UI
                    teamfakhr = 0;
                    teamRofy = 0;
                  });
                },
                child: Text(
                  "Reset",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
