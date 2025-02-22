import 'package:flutter/material.dart';

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
        title: Text("Second Activity"),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        titleSpacing: 10,
        toolbarHeight: 59,
        backgroundColor: Colors.green,
        elevation: 6,
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mySnackBar("This is a floating button", context);
        },
        backgroundColor: Colors.green,
        elevation: 5,
        child: Icon(Icons.add),
      ),
      body: null,
      drawer: null,
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
    );
  }
}
