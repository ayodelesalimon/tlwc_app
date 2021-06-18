import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tlwc_app/screen/about/pastor.dart';
import 'package:tlwc_app/screen/about/prayer.dart';
import 'package:tlwc_app/util/style.dart';
import 'package:tlwc_app/widgets/drawer.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
 
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
         drawer: NaviationDrawer(),
        endDrawerEnableOpenDragGesture: false,
        key: _scaffoldKey,
        // appBar: AppBar(
        //   title: Text("TLWC"),
        // ),
        body: Column(
          children: [
            // Container(
            //   height: height / 4,
            //   width: width,

            //   decoration: BoxDecoration(
            //     // borderRadius: BorderRadius.circular(10),
            //     image: DecorationImage(
            //         image: AssetImage("images/home.jpeg"), fit: BoxFit.cover),
            //     //border: Border.all(color: Colors.blueAccent)
            //   ),
            //   // child: Text("My Awesome Border"),
            // ),

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
            SizedBox(
              height: 10,
            ),
            Text(
              "ABOUT US",
              style: kHeadingText1,
            ),
            SizedBox(height: 10),
            CardContainer(
              // onTap: () {
              //   Navigator.push(
              //       context, MaterialPageRoute(builder: (_) => WebViewPlug(url: "https://tlwc.faithpays.org/our-mission/", title: "Our Learship",)));
              // },
              color: Colors.deepOrangeAccent,
              title: "OUR BELIEFS",
              // url: "https://tlwc.faithpays.org/our-mission/",
              width: width,
            ),
            SizedBox(height: 10),
            CardContainer(
              color: Colors.blueGrey,
              title: "OUR PASTOR",
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ProfileApp()));
              },
              // url: "https://tlwc.faithpays.org/our-leadership/",
              width: width,
            ),
            SizedBox(height: 10),
            CardContainer(
              color: Colors.deepOrangeAccent,
              title: "OUR HISTORY",
              // url: "https://tlwc.faithpays.org/services/church-history/",
              width: width,
            ),
            SizedBox(height: 10),
            CardContainer(
              color: Colors.blueGrey,
              title: "OUR MINISTRIES",
              // url: "https://tlwc.faithpays.org/ministries/",
              width: width,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ContentScreen(
                              imgUrl: "images/home.jpeg",
                              titleName: "Our Ministries",
                              urlTitle: "Ministries We Support",
                              substitle:
                                  "Are you seeking prayer? Let's pray for you",
                              url: "https://tlwc.faithpays.org/ministries/",
                            )));
              },
            ),
            SizedBox(height: 10),
            CardContainer(
              color: Colors.deepOrangeAccent,
              //url: "https://tlwc.faithpays.org/prayers-request/",
              title: "PRAYER REQUEST",
              width: width,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ContentScreen(
                              imgUrl: "images/home.jpeg",
                              titleName: "Prayer Request",
                              urlTitle: "Submit A Prayer",
                              substitle:
                                  "Are you seeking prayer? Let's pray for you",
                              url: "https://tlwc.faithpays.org/prayers-request/",
                            )));
              },
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
