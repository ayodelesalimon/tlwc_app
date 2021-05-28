import 'package:flutter/material.dart';
import 'package:tlwc_app/screen/web_view.dart';
import 'package:tlwc_app/util/style.dart';

class ContentScreen extends StatefulWidget {
  final String url;
  final String imgUrl;
  final String substitle;
  final String urlTitle;
  final String titleName;

  const ContentScreen({Key key, this.url, this.imgUrl, this.substitle, this.urlTitle, this.titleName}) : super(key: key);
  @override
  _ContentScreenState createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("TLWC"),
        ),
        body: Column(
          children: [
            Container(
              height: height / 4,
              width: width,

              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(widget.imgUrl), fit: BoxFit.cover),
                //border: Border.all(color: Colors.blueAccent)
              ),
              // child: Text("My Awesome Border"),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.titleName,
              style: kHeadingText1,
            ),
            SizedBox(height: 10),
            Text(
              widget.substitle,
              style: kHeadingText3,
            ),
            SizedBox(height: 20),
            CardContainer(
              color: Colors.deepPurpleAccent,
              title: widget.urlTitle,
              url: widget.url,
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class CardContainer extends StatelessWidget {
  const CardContainer({
    Key key,
    this.title,
    this.url,
    this.color,
  }) : super(key: key);

  final String title, url;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => ViewWeb(
                      url: url,
                      title: title,
                    )));
      },
      child: Container(
          width: 300,
          height: 100,
          decoration: BoxDecoration(
            color: color,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite_border_outlined),
              SizedBox(
                width: 5,
              ),
              Text(
                title,
                style: kButtonTextStyle,
              ),
            ],
          )),
    );
  }
}
