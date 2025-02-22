import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  HomeActivityState createState() => HomeActivityState();
}

class HomeActivityState extends State<HomeActivity> {
  // const HomeActivity({super.key});
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Center(child: Text("Counter", style: TextStyle(fontSize: 35))),
        // titleSpacing: 10,
        toolbarHeight: 0,
        // backgroundColor: Colors.green,
        // elevation: 6,
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       setState(() {
        //         count = 0;
        //       });
        //     },
        //     icon: Icon(Icons.reset_tv),
        //   ),
        // ],
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                child: Text("Counter", style: GoogleFonts.roboto(fontSize: 35)),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(150),
                  ),

                  child: Align(
                    alignment: Alignment.center,
                    child: Text("$count", style: TextStyle(fontSize: 120)),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 180,
                    width: 100,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top: -20,
                          child: Text("+", style: TextStyle(fontSize: 35)),
                        ),
                        Positioned(
                          top: 30,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                count++;
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color(0xFF9BDEFE),
                              ),
                              fixedSize: MaterialStateProperty.all<Size>(
                                Size(100, 100),
                              ),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 50,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Text(
                            "Increment",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 180,
                    width: 100,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top: -30,
                          // right: 0,
                          child: Text("-", style: TextStyle(fontSize: 55)),
                        ),
                        Positioned(
                          top: 30,
                          child: ElevatedButton(
                            onPressed: () {
                              if (count > 0) {
                                setState(() {
                                  count--;
                                });
                              }
                            },
                            style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all(
                                Size(100, 100),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                Color(0xFFEBF0F3),
                              ),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 50,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Text(
                            "Decrement",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count = 0;
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF9BDEFE)),
                  fixedSize: MaterialStateProperty.all(Size(300, 70)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                child: Text(
                  "Reset",
                  style: GoogleFonts.roboto(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // endDrawer: Drawer(),
    );
  }
}
