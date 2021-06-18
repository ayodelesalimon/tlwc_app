import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tlwc_app/screen/input_webview.dart';

// ignore: must_be_immutable
class GridDashboard extends StatelessWidget {
  
  Items item1 = new Items(
      url: "https://tlwc.faithpays.org/",
      title: "Events",
      img: "images/calendar.png");

  Items item3 = new Items(
    url: 'https://www.google.com/maps/dir/51+Richfield+Ave,+Winnipeg,+MB+R2M+2R9,+Canada/51+Richfield+Ave,+Winnipeg,+MB+R2M+2R9,+Canada/@49.8372503,-97.1599737,12z/data=!3m1!4b1!4m14!4m13!1m5!1m1!1s0x52ea76515b5e9ea5:0xada8c08305b2e0ea!2m2!1d-97.0899337!2d49.8371607!1m5!1m1!1s0x52ea76515b5e9ea5:0xada8c08305b2e0ea!2m2!1d-97.0899337!2d49.8371607!3e2',
    title: "Locate Us",
    img: "images/map.png",
  );
  Items item4 = new Items(
    url: 'https://tlwc.faithpays.org/services/church-history/',
    title: "Church Activity",
    img: "images/festival.png",
  );
  Items item5 = new Items(
    url: 'https://tlwc.faithpays.org/ministries/',
    title: "Ministries",
    img: "images/todo.png",
  );

  @override
  Widget build(BuildContext context) {
   // int index = 3;
    List<Items> myList = [
      item1,
      item3,
      item4,
      item5,
    ];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
        
        childAspectRatio: 1.0,
        padding: EdgeInsets.only(left: 16, right: 16),
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: myList.map((data) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => InputWeb(url: data.url,)));

              print(data.title);
              
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color(color),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(data.img, width: 42),
                  SizedBox(height: 14),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  // Text(
                  //   data.subtitle,
                  //   style: GoogleFonts.openSans(
                  //     textStyle: TextStyle(
                  //       color: Colors.white38,
                  //       fontSize: 10,
                  //       fontWeight: FontWeight.w600,
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 14),
                  // Text(
                  //   data.event,
                  //   style: GoogleFonts.openSans(
                  //     textStyle: TextStyle(
                  //       color: Colors.white70,
                  //       fontSize: 11,
                  //       fontWeight: FontWeight.w600,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class GridDashboard2 extends StatelessWidget {
  
  Items item1 = new Items(
      url: "https://tlwc.faithpays.org/",
      title: "Youth Ministries",
      img: "images/calendar.png");

  Items item3 = new Items(
    url: 'https://www.google.com/maps/dir/51+Richfield+Ave,+Winnipeg,+MB+R2M+2R9,+Canada/51+Richfield+Ave,+Winnipeg,+MB+R2M+2R9,+Canada/@49.8372503,-97.1599737,12z/data=!3m1!4b1!4m14!4m13!1m5!1m1!1s0x52ea76515b5e9ea5:0xada8c08305b2e0ea!2m2!1d-97.0899337!2d49.8371607!1m5!1m1!1s0x52ea76515b5e9ea5:0xada8c08305b2e0ea!2m2!1d-97.0899337!2d49.8371607!3e2',
    title: "Women Ministries",
    img: "images/map.png",
  );
  Items item4 = new Items(
    url: 'https://tlwc.faithpays.org/services/church-history/',
    title: "Young Adult",
    img: "images/festival.png",
  );
  Items item5 = new Items(
    url: 'https://tlwc.faithpays.org/ministries/',
    title: "Men Ministries",
    img: "images/todo.png",
  );

  @override
  Widget build(BuildContext context) {
   // int index = 3;
    List<Items> myList = [
      item1,
      item3,
      item4,
      item5,
    ];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
        
        childAspectRatio: 1.0,
        padding: EdgeInsets.only(left: 16, right: 16),
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: myList.map((data) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => InputWeb(url: data.url,)));

              print(data.title);
              
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color(color),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(data.img, width: 42),
                  SizedBox(height: 14),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  // Text(
                  //   data.subtitle,
                  //   style: GoogleFonts.openSans(
                  //     textStyle: TextStyle(
                  //       color: Colors.white38,
                  //       fontSize: 10,
                  //       fontWeight: FontWeight.w600,
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 14),
                  // Text(
                  //   data.event,
                  //   style: GoogleFonts.openSans(
                  //     textStyle: TextStyle(
                  //       color: Colors.white70,
                  //       fontSize: 11,
                  //       fontWeight: FontWeight.w600,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Items {
  String url;
  String title;
  //String subtitle;
  //String event;
  String img;
  Items({this.title, this.img, this.url});
}
