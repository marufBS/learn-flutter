import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => HomeActivity()},
    );
  }
}

//Home Activity
class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  myAppButton(message, context) {
    return IconButton(
      onPressed: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(message)));
      },
      icon: Icon(Icons.search),
    );
  }

  test(context) {
    return [
      IconButton(
        onPressed: () {
          mySnackBar("This is Comment", context);
        },
        icon: Icon(Icons.comment),
        color: Colors.amber,
      ),
      IconButton(
        onPressed: () {
          mySnackBar("This is search", context);
        },
        icon: Icon(Icons.search),
      ),
      IconButton(
        onPressed: () {
          mySnackBar("This is settings", context);
        },
        icon: Icon(Icons.settings),
      ),
      IconButton(
        onPressed: () {
          mySnackBar("This is email", context);
        },
        icon: Icon(Icons.email),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maruf"),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        titleSpacing: 10,
        toolbarHeight: 59,
        backgroundColor: Colors.green,
        elevation: 6,
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar("This is Comment", context);
            },
            icon: Icon(Icons.comment),
            color: Colors.amber,
          ),
          IconButton(
            onPressed: () {
              mySnackBar("This is search", context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("This is settings", context);
            },
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("This is email", context);
            },
            icon: Icon(Icons.email),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mySnackBar("This is a floating button", context);
        },
        backgroundColor: Colors.green,
        elevation: 5,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "User"),
        ],
        onTap: (int index) {
          if (index == 0) {
            mySnackBar("I am Home Bottom Menu", context);
          }
          if (index == 1) {
            mySnackBar("I am Contact Bottom Menu", context);
          }
          if (index == 2) {
            mySnackBar("I am User Bottom Menu", context);
          }
        },
      ),
      body: Column(
        children: [
          Container(
            width: 412,
            height: 270,
            decoration: BoxDecoration(color: Colors.blue),
          ),
          Container(
            width: 412,
            height: 270,
            decoration: BoxDecoration(color: Colors.red),
          ),
          Placeholder(
            color: Colors.white,
            fallbackHeight: 100,
            child: Container(
              height: 30,
              color: Colors.black45,
              child: Text("data"),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              // child: Container(
              //   decoration: BoxDecoration(color: Colors.amber),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.all(18),
              //         child: CircleAvatar(
              //           backgroundImage: NetworkImage(
              //             "https://avatars.githubusercontent.com/u/83445698?v=4",
              //           ),
              //         ),
              //       ),
              //       SizedBox(width: 16),
              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             "Maruf Bin Solaiman",
              //             style: TextStyle(color: Colors.black, fontSize: 20),
              //           ),
              //           Text("0909maruf@gmail.com"),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                        "https://avatars.githubusercontent.com/u/83445698?v=4",
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Maruf Bin Solaiman",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("0909maruf@gmail.com", style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.folder),
              title: Text("My Files"),
              onTap: () {
                mySnackBar("Home from drawer", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle_outlined),
              title: Text("Shared with me"),
              onTap: () {
                mySnackBar("Contact from drawer", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Starred"),
              onTap: () {
                mySnackBar("Profile from drawer", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.watch_later_outlined),
              title: Text("Recent"),
              onTap: () {
                mySnackBar("Email from drawer", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.offline_pin),
              title: Text("Offline"),
              onTap: () {
                mySnackBar("Phone from drawer", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.upload),
              title: Text("Uploads"),
              onTap: () {
                mySnackBar("Phone from drawer", context);
              },
            ),
          ],
        ),
      ),
      // endDrawer: Drawer(),
    );
  }
}

//Second Activity
class SecondActivity extends StatelessWidget {
  const SecondActivity({super.key});

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Actifi"),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        titleSpacing: 10,
        toolbarHeight: 59,
        backgroundColor: Colors.green,
        elevation: 6,
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar("This is Comment", context);
            },
            icon: Icon(Icons.comment),
            color: Colors.amber,
          ),
          IconButton(
            onPressed: () {
              mySnackBar("This is search", context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("This is settings", context);
            },
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("This is email", context);
            },
            icon: Icon(Icons.email),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mySnackBar("This is a floating button", context);
        },
        backgroundColor: Colors.green,
        elevation: 5,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "User"),
        ],
        onTap: (int index) {
          if (index == 0) {
            mySnackBar("I am Home Bottom Menu", context);
          }
          if (index == 1) {
            mySnackBar("I am Contact Bottom Menu", context);
          }
          if (index == 2) {
            mySnackBar("I am User Bottom Menu", context);
          }
        },
      ),
      body: null,
      drawer: null,
    );
  }
}
