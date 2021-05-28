import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tlwc_app/gridDashboard.dart';
import 'package:tlwc_app/widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NaviationDrawer(),
        endDrawerEnableOpenDragGesture: false,
        key: _scaffoldKey,
        body: Column(
          children: <Widget>[
            //SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "TLWC",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Changing Life and Attitude",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Color(0xffa29aac),
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState.openDrawer();
                    },
                    alignment: Alignment.topCenter,
                    icon: Image.asset("images/menu.png", width: 24),
                  )
                ],
              ),
            ),
            Container(
              height: 200,
              width: 360,
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage("images/home.jpeg"), fit: BoxFit.cover),
                //border: Border.all(color: Colors.blueAccent)
              ),
              // child: Text("My Awesome Border"),
            ),
            SizedBox(height: 10),
            //TODO Grid Dashboard
            GridDashboard()
          ],
        ),
      ),
    );
  }
}
