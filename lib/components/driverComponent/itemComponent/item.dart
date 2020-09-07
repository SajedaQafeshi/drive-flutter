import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 150.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Icon(
                      Icons.person,
                      color: Color(0xff316686),
                      size: 32.0,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'إسم السائق',
                      style: TextStyle(
                          fontFamily: 'Amiri',
                          fontSize: 18.0),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      print("ss sssss");
                    },
                    icon: Icon(
                      Icons.create,
                      color: Colors.green,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      print("ss sssddd");
                    },
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}