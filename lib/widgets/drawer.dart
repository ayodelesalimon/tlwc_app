import 'package:flutter/material.dart';
import 'package:tlwc_app/screen/about/pastor.dart';

class NaviationDrawer extends StatelessWidget {
  const NaviationDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 30,
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(
          children: [
            InkWell(
              onTap: () {},
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "images/TLWC_logo.png",
                      ),
                      fit: BoxFit.contain),
                ),
                // currentAccountPicture: CircleAvatar(
                //   backgroundImage: AssetImage('images/map.png'),
                //   // child: Text("LA"),
                // ),
                // accountName: Text(
                //   'TLWC',
                //   style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 25,
                //       fontWeight: FontWeight.bold),
                // ),
                // accountEmail: Text('Changing Life & Attitude'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Text(
                'TLWC',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('Changing Life & Attitude'),
            ),
            // Divider(height: 10, color: Colors.white),
            Card(
              color: Colors.black,
              child: ListTile(
                onTap: () {},
                trailing: Icon(
                  Icons.shopping_basket_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  'Donations',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(height: 1, color: Colors.white),
            Card(
              color: Colors.black,
              child: ListTile(
                onTap: () {},
                trailing: Icon(Icons.chat_bubble_outline_outlined,
                    color: Colors.white),
                title: Text(
                  'Lets Connect',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(height: 1, color: Colors.white),
            Card(
              color: Colors.black,
              child: ListTile(
                onTap: () {},
                trailing: Icon(Icons.book, color: Colors.white),
                title: Text(
                  'Bible',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(height: 1, color: Colors.white),
            Card(
              color: Colors.black,
              child: ListTile(
                onTap: () {},
                trailing: Icon(Icons.link, color: Colors.white),
                title: Text(
                  'Websites',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(height: 1, color: Colors.white),
            Card(
              color: Colors.black,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => ProfileApp()));
                },
                trailing: Icon(Icons.contacts, color: Colors.white),
                title: Text(
                  'Meet Our Pastor',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(height: 1, color: Colors.white),
            // Card(
            //   color: Colors.black,
            //   child: ListTile(
            //     onTap: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => HomePage(),
            //         ),
            //       );
            //     },
            //     trailing:
            //         Icon(Icons.notifications_outlined, color: Colors.white),
            //     title: Text(
            //       'Notifications',
            //       style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 15,
            //           fontWeight: FontWeight.w400),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
