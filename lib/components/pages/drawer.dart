import 'package:flutter/material.dart';

class AdminDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xff363636),
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "ساجدة قفيشة",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Amiri',
                  fontSize: 20.0,
                ),
              ),
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person),
                backgroundColor: Color(0xff316686),
              ),
              decoration: BoxDecoration(
                color: Color(0xff316686),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
              child: Card(
                color: Color(0xff464646),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  title: Text(
                    'الشركات والتجار',
                    style: TextStyle(
                        color: Colors.white, fontSize: 18.0, fontFamily: 'Amiri'),
                  ),
                  leading: Image.asset('assets/user-group.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
              child: Card(
                color: Color(0xff464646),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  title: Text(
                    'الطرود',
                    style: TextStyle(
                        color: Colors.white, fontSize: 18.0, fontFamily: 'Amiri'),
                  ),
                  leading: Image.asset('assets/box.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
              child: Card(
                color: Color(0xff464646),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  title: Text(
                    'السائقين',
                    style: TextStyle(
                        color: Colors.white, fontSize: 18.0, fontFamily: 'Amiri'),
                  ),
                  leading: Image.asset('assets/delivery.png'),
                  selected: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
              child: Card(
                color: Color(0xff464646),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  title: Text(
                    'خطوط التوصيل',
                    style: TextStyle(
                        color: Colors.white, fontSize: 18.0, fontFamily: 'Amiri'),
                  ),
                  leading: Image.asset('assets/track-order.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
              child: Card(
                color: Color(0xff464646),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  title: Text(
                    'المصروفات',
                    style: TextStyle(
                        color: Colors.white, fontSize: 18.0, fontFamily: 'Amiri'),
                  ),
                  leading: Image.asset('assets/invoice.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
              child: Card(
                color: Color(0xff464646),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  title: Text(
                    'تسجيل خروج',
                    style: TextStyle(
                        color: Colors.white, fontSize: 18.0, fontFamily: 'Amiri'),
                  ),
                  leading: Image.asset('assets/logout.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
