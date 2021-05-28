import 'dart:io';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tlwc_app/hompage.dart';
import 'package:tlwc_app/screen/connect.dart';
import 'package:tlwc_app/screen/donate.dart';
import 'package:tlwc_app/screen/media.dart';
import 'package:tlwc_app/screen/web_view.dart';
import 'package:tlwc_app/screen/web_view_r.dart';
import 'package:tlwc_app/screen/webview_plug.dart';
import 'package:tlwc_app/widgets/drawer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'gridDashboard.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // int _page = 0;
  // GlobalKey _bottomNavigationKey = GlobalKey();
  int selectedIndex = 0;

  Future _launchInBrowser() async {
  const url = "https://www.google.com";
    if (await canLaunch(url)) {
      await launch(
        url,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
//   _launchURL() async {
//   if (Platform.isIOS) {
//     if (await canLaunch('youtube://www.youtube.com/channel/UCwXdFgeE9KYzlDdR7TG9cMw')) {
//       await launch('youtube://www.youtube.com/channel/UCwXdFgeE9KYzlDdR7TG9cMw', forceSafariVC: false);
//     } else {
//       if (await canLaunch('https://www.youtube.com/channel/UCwXdFgeE9KYzlDdR7TG9cMw')) {
//         await launch('https://www.youtube.com/channel/UCwXdFgeE9KYzlDdR7TG9cMw');
//       } else {
//         throw 'Could not launch https://www.youtube.com/channel/UCwXdFgeE9KYzlDdR7TG9cMw';
//       }
//     }
//   } else {
//     const url = 'https://www.youtube.com/channel/UCwXdFgeE9KYzlDdR7TG9cMw';
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
// }
   List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
   ConnectScreen(),
    VWeb(),
    WebViewPlug(),
        // Text('Search Page',
        // style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    MoreScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NaviationDrawer(),
      endDrawerEnableOpenDragGesture: false,
      key: _scaffoldKey,

      // bottomNavigationBar: CurvedNavigationBar(
      //   key: _bottomNavigationKey,
      //   index: 0,
      //   height: 50.0,   https://tlwc.faithpays.org/donations/together-it-is-possible-we-can-and-are-making-a-difference-4-2/?customize_changeset_uuid=cb67539b-1ff1-4938-b915-7df65f5cec94&customize_autosaved=on
      //   items: <Widget>[
      //     Icon(Icons.add, size: 30),
      //     Icon(Icons.list, size: 30),
      //     Icon(Icons.compare_arrows, size: 30),
      //     Icon(Icons.call_split, size: 30),
      //     Icon(Icons.perm_identity, size: 30),
      //   ],
      //   color: Colors.white,
      //   buttonBackgroundColor: Colors.white,
      //   backgroundColor: Colors.blueAccent,
      //   animationCurve: Curves.easeInOut,
      //   animationDuration: Duration(milliseconds: 600),
      //   onTap: (index) {
      //     setState(() {
      //       _page = index;
      //     });
      //   },
      //   letIndexChange: (index) => true,
      // ),
      // body: Container(
      //   color: Colors.blueAccent,
      //   child: Center(
      //     child: Column(
      //       children: <Widget>[
      //         Text(_page.toString(), textScaleFactor: 10.0),
      //         RaisedButton(
      //           child: Text('Go To Page of index 1'),
      //           onPressed: () {
      //             final CurvedNavigationBarState navBarState =
      //                 _bottomNavigationKey.currentState;
      //             navBarState.setPage(1);
      //           },
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      //appBar: AppBar(title: Text("TLWC"),),
      //  drawer: NaviationDrawer(),

      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white,
          selectedItemBorderColor: Colors.transparent,
          selectedItemBackgroundColor: Colors.green,
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.black,
          showSelectedItemShadow: false,
          itemWidth: 50,
          barHeight: 65,
        ),
        selectedIndex: selectedIndex,
        onSelectTab: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.home,
            label: 'Home',
          ),
          FFNavigationBarItem(
            iconData: Icons.people,
            label: 'Connect',
            selectedBackgroundColor: Colors.orange,
          ),
          FFNavigationBarItem(
            iconData: Icons.money,
            label: 'Donate',
            selectedBackgroundColor: Colors.purple,
          ),
          FFNavigationBarItem(
            iconData: Icons.perm_media,
            label: 'LiveStream',
            selectedBackgroundColor: Colors.blue,
          ),
          FFNavigationBarItem(
            iconData: Icons.menu,
            label: 'More',
            selectedBackgroundColor: Colors.red,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body:  _widgetOptions.elementAt(selectedIndex),  
      
   
    );
  }
}
