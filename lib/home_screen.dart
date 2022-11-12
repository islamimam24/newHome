// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, file_names, prefer_final_fields, unused_import

// import 'package:coworking_space/constants.dart';
// import 'package:coworking_space/home_screen/chat_sdk/chat_src_sdk.dart';
// import 'package:coworking_space/home_screen/home_tab/home_tabb.dart';

// import 'package:coworking_space/home_screen/map_tab/map_tab.dart';

// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:home_page/home_tab/home_tabb.dart';

List<Widget> finalUserStream = [];

// late User loggedInUser;
// FirebaseAuth _auth = FirebaseAuth.instance;
bool isOfferAtProfile = false;

class HomeScreen extends StatefulWidget {
  static String homeScreenId = "home_screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // Firebase.initializeApp();
    _onItemTapped(_selectedIndex);

    super.initState();
  }

  static List<Widget> _widgetOptions = <Widget>[
    HomeTabb(),
    SizedBox.shrink(),
    SizedBox.shrink(),
    SizedBox.shrink(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          selectedFontSize: 12,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),

        // child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        //   Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Hero(
        //         tag: 'logo',
        //         child: SizedBox(
        //           height: 60,
        //           child: Image.asset('images/logo.png'),
        //         ),
        //       ),
        //     ],
        //   )
        // ]),
      ),
    );
  }
}
