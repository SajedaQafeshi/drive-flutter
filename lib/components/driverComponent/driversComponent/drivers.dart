import 'package:flutter/material.dart';
import 'package:sajeda_app/components/pages/drawer.dart';
import '../itemComponent/item.dart';

class Driver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Directionality(
            textDirection: TextDirection.rtl,
            child: DefaultTabController(
              length: 2,
              child: Scaffold(
                  appBar: AppBar(
                    bottom: TabBar(
                        labelColor: Color(0xff316686),
                        unselectedLabelColor: Colors.white,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                            color: Colors.white),
                        tabs: [
                          Tab(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "سائقين الشركة",
                                style: TextStyle(fontSize: 18.0, fontFamily: 'Amiri'),
                              ),
                            ),
                          ),
                          Tab(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "سائقين خصوصي",
                                style: TextStyle(fontSize: 18.0, fontFamily: 'Amiri'),
                              ),
                            ),
                          ),
                        ]),
                    title: Text('السائقين',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Amiri',
                        )),
                    centerTitle: true,
                    backgroundColor: Color(0xff316686),
                    actions: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/add');
                        },
                        icon: Icon(Icons.person_add),
                        color: Colors.white,
                      )
                    ],
                  ),
                  drawer: AdminDrawer(),
                  body: TabBarView(children: [
                    ListView(
                      children: <Widget>[
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                      ],
                    ),
                    ListView(
                      children: <Widget>[
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                      ],
                    ),
                  ])),
            )));
  }
}
