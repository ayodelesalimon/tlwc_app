import 'package:flutter/material.dart';
import 'package:tlwc_app/screen/web_view.dart';
import 'package:tlwc_app/util/style.dart';
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

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: height / 4,
            width: width,

            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(10),
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
            color: Colors.deepPurpleAccent,
            title: "Facebook",
            width: width,
          ),
          SizedBox(height: 10),
          CardContainer(
            onTap: () {
              _launchInBrowser('http://instagram.com/tlwcca');
            },
            color: Colors.deepPurpleAccent,
            title: "Instagram",
            width: width,
          ),
          SizedBox(height: 10),
          CardContainer(
            onTap: () {
              _launchInBrowser('https://twitter.com/TLWCCA');
            },
            color: Colors.blueGrey,
            title: "Twitter",
            width: width,
          ),
          SizedBox(height: 10),
          CardContainer(
            onTap: () {
              _launchInBrowser("");
            },
            color: Colors.blueGrey,
            title: "About Us",
            width: width,
          )
        ],
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
