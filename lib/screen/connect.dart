import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tlwc_app/util/style.dart';
import 'package:tlwc_app/widgets/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class ConnectScreen extends StatefulWidget {
  @override
  _ConnectScreenState createState() => _ConnectScreenState();
}

class _ConnectScreenState extends State<ConnectScreen> {
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
 final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
 
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
         drawer: NaviationDrawer(),
        endDrawerEnableOpenDragGesture: false,
        key: _scaffoldKey,
      //  appBar: AppBar(),
        body: Column(
          children: [
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
            // Container(
            //   height: height / 4,
            //   width: width /2,

            //   decoration: BoxDecoration(
            //     // borderRadius: BorderRadius.circular(10),
            //     image: DecorationImage(
            //         image: AssetImage("images/home.jpeg"), fit: BoxFit.cover),
            //     //border: Border.all(color: Colors.blueAccent)
            //   ),
            //   // child: Text("My Awesome Border"),
            // ),

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
            SizedBox(
              height: 10,
            ),
            Text(
              "Connect With Us",
              style: kHeadingText1,
            ),
            SizedBox(height: 10),
            CardContainer(
              onTap: () {
                _launchInBrowser('https://www.facebook.com/groups/185831016795/?ref=br_tf');
              },
              color: Colors.deepOrangeAccent,
              title: "FACEBOOK",
              width: width,
            ),
            SizedBox(height: 10),
            CardContainer(
              onTap: () {
                _launchInBrowser('http://instagram.com/tlwcca');
              },
              color: Colors.blueGrey,
              title: "INSTAGRAM",
              width: width,
            ),
            SizedBox(height: 10),
            CardContainer(
              onTap: () {
                _launchInBrowser('https://twitter.com/TLWCCA');
              },
              color: Colors.deepOrangeAccent,
              title: "TWITTER",
              width: width,
            ),
            SizedBox(height: 10),
            CardContainer(
              onTap: () {
                _launchInBrowser("");
              },
              color: Colors.blueGrey,
              title: "ABOUT US",
              width: width,
            )
          ],
        ),
      ),
    );
  }
}

class CardContainer extends StatelessWidget {
  const CardContainer({
    Key key,
    @required this.width,
    this.title,
    this.color,
    this.onTap,
  }) : super(key: key);

  final double width;
  final String title;
  final Color color;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: width,
          height: 50,
          decoration: BoxDecoration(
            color: color,
          ),
          child: Center(
              child: Text(
            title,
            style: kButtonTextStyle,
          ))),
    );
  }
}
