import 'package:flutter/material.dart';
import 'package:flutter_todo_ui/Homepage.dart';

void main() {
  runApp(Mainpage());
}

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            floatingActionButton: FloatingActionButton(onPressed: () {},child: Icon(Icons.add),backgroundColor: Color.fromARGB(255, 218, 105, 14),),
            bottomNavigationBar: bottommenu(),
            body: Homepage(),
            appBar: topmenu()),
      ),
    );
  }

  AppBar topmenu() {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 218, 105, 14),
      actions: [
        PopupMenuButton(
          initialValue: 1,
          // Callback that sets the selected popup menu item.
          onSelected: (item) {},
          itemBuilder: (BuildContext context) => <PopupMenuEntry>[
            const PopupMenuItem(
              value: "",
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.view_array,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("View"),
                    ],
                  ),
                  Divider()
                ],
              ),
            ),
            const PopupMenuItem(
              value: "",
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.analytics,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Activity Log'),
                    ],
                  ),
                  Divider()
                ],
              ),
            ),
          ],
        ),
      ],
      title: Text("Today"),
      titleTextStyle: TextStyle(),
    );
  }

  BottomNavigationBar bottommenu() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: 'Today',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.inbox),
          label: 'Inbox',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: 'Browser',
        ),
      ],
      currentIndex: 2,
      selectedItemColor: Color.fromARGB(255, 218, 105, 14),
      unselectedItemColor: Colors.black,
      // onTap: 1,
    );
  }
}
