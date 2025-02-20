import 'package:flutter/material.dart';

// class MyStatefulCounterWidget extends StatefulWidget{
//   @override
//   HomeActivity createState() => HomeActivity();
// }

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  HomeActivityState createState() => HomeActivityState();
}

class HomeActivityState extends State<HomeActivity> {
  // const HomeActivity({super.key});
  int count = 0;

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Apple $count",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        titleSpacing: 10,
        toolbarHeight: 59,
        // backgroundColor: Colors.green,
        elevation: 6,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                count=0;
              });
            },
            icon: Icon(Icons.reset_tv),
          ),
        ],
      ),
      body: null,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
          ;
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
        ],
        onTap: (int index) {
          if (index == 0) {
            Navigator.pushNamed(context, "/");
          }
          if (index == 1) {
            Navigator.pushNamed(context, '/second');
          }
        },
      ),
      // endDrawer: Drawer(),
    );
  }
}
