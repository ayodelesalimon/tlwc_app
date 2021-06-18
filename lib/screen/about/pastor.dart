import 'package:flutter/material.dart';
import 'package:tlwc_app/util/style.dart';

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    "images/pastor.jpeg",
                  ),
                )),
                child: Stack(
                  children: [
                    Positioned(
                        top: 40,
                        left: 10,
                        child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            })),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 350.0,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // CircleAvatar(
                            //   backgroundImage: AssetImage(
                            //     "images/pastor.jpeg",
                            //   ),
                            //   radius: 50.0,
                            // ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Pastor Calvert Layne",
                              style: TextStyle(
                                fontSize: 22.0,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Bio:",
                      style: kHeadingText2,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                        'Pastor Calvert Layne was born on the beautiful island of St.Vincent and the Grenadines. He is the second of seven children of Pastor Samuel and Ursula Layne. From his formative years, he has been very involved in the life of the church and people could see the call of God on his life.\n\n'
                        'He attended the New Testament Church of God in Kingstown St. Vincent and was very active in all areas of the church.\n\n'
                        'He served as Youth leader, Choir director, musician, Sunday school teacher and preacher.\n\n'
                        'In High school, he was the president of the Inter-School Christian Fellowship and after graduating high school became the director of the St. Vincent and the Grenadines Youth for Christ.\n\n'
                        'He immigrated to Canada in 1981 to marry his Fiancée Sylvonne, with whom he had worked for many years in Inter- School Christian Fellowship and Youth for Christ. They are the parents of three adult children who are all serving the Lord in various areas of the ministry.\n\n'
                        'Pastor Calvert attended Faith Temple in Winnipeg, Manitoba for thirteen years and served there as a Deacon, Elder, Sunday school teacher, Choir director and musician. During his tenure there he also taught and preached the word. In 1994, he left Faith Temple with his family to respond to the call of God to assume the role of Assistant Pastor at the Bible Church of God. He served in that capacity for nine years and then God called him to serve as Pastor of Pathway Community Church in 2003.\n\n'
                        'After five years at Pathway, in 2008, God called him again; this time to amalgamate his current church (Pathway Community Church) with his former church (Bible Church of God) and to be the Lead Pastor there. The name of this new amalgamated church is Truth and Life Worship Centre. This is a thriving and vibrant church in St. Vital in the south of the city of Winnipeg, Manitoba.\n\n'
                        'Pastor Layne is a passionate and dedicated minister who believes that God has called us to model the highest standards of Christian conduct and discipline. His vision is that Truth and Life Worship Centre will strive to excel in all areas of the ministry and make the Lord proud in doing so.',
                        style: kBodyText3),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 300.00,
              // ignore: deprecated_member_use
              child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  elevation: 0.0,
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [Colors.redAccent, Colors.pinkAccent]),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.email),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Contact me",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26.0,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
