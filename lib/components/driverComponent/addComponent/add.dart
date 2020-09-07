import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sajeda_app/classes/driver.dart';
import 'package:sajeda_app/components/pages/drawer.dart';
import 'package:sajeda_app/services/driverServices.dart';

class AddDriver extends StatefulWidget {
  @override
  _AddDriverState createState() => _AddDriverState();
}

class _AddDriverState extends State<AddDriver> {
  String dropdownValue = 'One';
  final _formKey = GlobalKey<FormState>();

  String name;
  String type = 'سائق خاص';
  String email;
  String phoneNumber;
  String passowrd;
  String addressDD;
  String address = 'One';
  String line = 'One';


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('إضافة سائق'),
        centerTitle: true,
        backgroundColor: Color(0xff316686),
      ),
      endDrawer: Directionality(textDirection: TextDirection.rtl, child: AdminDrawer()),
      backgroundColor: Colors.white,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          padding: EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
          child: StreamBuilder<Driver>(
              stream: DriverService().driverData,
              builder: (context, snapshot) {
                Driver driverData = snapshot.data;
                return Form(
                  key: _formKey,
                  child: ListView(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image.asset('assets/oie_transparent (20).png'),
                        height: 150.0,
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        child: TextFormField(
                          onChanged: (val) => setState(() => name = val),
                          decoration: InputDecoration(
                            labelText: 'الإسم',
                            labelStyle: TextStyle(
                                fontFamily: 'Amiri', fontSize: 18.0, color: Color(0xff316686)),
                            contentPadding: EdgeInsets.only(right: 20.0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                width: 1.0,
                                color: Color(0xff636363),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                width: 2.0,
                                color: Color(0xff73a16a),
                              ),
                              //Change color to Color(0xff73a16a)
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        child: DropdownButtonFormField(
                          value: type ?? driverData.type,
                          onChanged: (val) => setState(() => type = val),
                          items: <String>['سائق خاص', 'سائق شركة']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  value,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontFamily: 'Amiri', fontSize: 16.0),
                                ),
                              ),
                            );
                          }).toList(),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xff636363),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  width: 2.0,
                                  color: Color(0xff73a16a),
                                ),
                                //Change color to Color(0xff73a16a)
                              ),
                              contentPadding: EdgeInsets.only(right: 20.0, left: 10.0),
                              labelText: "نوع السائق",
                              labelStyle: TextStyle(
                                  fontFamily: 'Amiri', fontSize: 18.0, color: Color(0xff316686))),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        child: TextFormField(
                          onChanged: (val) => setState(() => email = val),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'البريد الإلكتروني',
                            labelStyle: TextStyle(
                                fontFamily: 'Amiri', fontSize: 18.0, color: Color(0xff316686)),
                            contentPadding: EdgeInsets.only(right: 20.0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                width: 1.0,
                                color: Color(0xff636363),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                width: 2.0,
                                color: Color(0xff73a16a),
                              ),
                              //Change color to Color(0xff73a16a)
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        child: TextFormField(
                          onChanged: (val) => setState(() => phoneNumber = val),
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            labelText: 'رقم الجوال',
                            labelStyle: TextStyle(
                                fontFamily: 'Amiri', fontSize: 18.0, color: Color(0xff316686)),
                            contentPadding: EdgeInsets.only(right: 20.0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                width: 1.0,
                                color: Color(0xff636363),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                width: 2.0,
                                color: Color(0xff73a16a),
                              ),
                              //Change color to Color(0xff73a16a)
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        child: DropdownButtonFormField(
                          value: address ?? driverData.address,
                          onChanged: (val) => setState(() => address = val),
                          items: <String>['One', 'Two', 'Free', 'Four']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  value,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontFamily: 'Amiri', fontSize: 16.0),
                                ),
                              ),
                            );
                          }).toList(),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xff636363),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  width: 2.0,
                                  color: Color(0xff73a16a),
                                ),
                                //Change color to Color(0xff73a16a)
                              ),
                              contentPadding: EdgeInsets.only(right: 20.0, left: 10.0),
                              labelText: "المدينة",
                              labelStyle: TextStyle(
                                  fontFamily: 'Amiri', fontSize: 18.0, color: Color(0xff316686))),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        child: TextFormField(
                          onChanged: (val) => setState(() => addressDD = val),
                          decoration: InputDecoration(
                            labelText: 'العنوان',
                            labelStyle: TextStyle(
                                fontFamily: 'Amiri', fontSize: 18.0, color: Color(0xff316686)),
                            contentPadding: EdgeInsets.only(right: 20.0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                width: 1.0,
                                color: Color(0xff636363),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                width: 2.0,
                                color: Color(0xff73a16a),
                              ),
                              //Change color to Color(0xff73a16a)
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        child: TextFormField(
                          onChanged: (val) => setState(() => passowrd = val),
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'كلمة المرور',
                            labelStyle: TextStyle(
                              fontFamily: 'Amiri',
                              fontSize: 18.0,
                              color: Color(0xff316686),
                            ),
                            contentPadding: EdgeInsets.only(right: 20.0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                width: 1.0,
                                color: Color(0xff636363),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                width: 2.0,
                                color: Color(0xff73a16a),
                              ),
                              //Change color to Color(0xff73a16a)
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        child: DropdownButtonFormField(
                          value: line ?? driverData.line,
                          onChanged: (val) => setState(() => line = val),
                          items: <String>['One', 'Two', 'Free', 'Four']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  value,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontFamily: 'Amiri', fontSize: 16.0),
                                ),
                              ),
                            );
                          }).toList(),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xff636363),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  width: 2.0,
                                  color: Color(0xff73a16a),
                                ),
                                //Change color to Color(0xff73a16a)
                              ),
                              contentPadding: EdgeInsets.only(right: 20.0, left: 10.0),
                              labelText: "خط التوصيل",
                              labelStyle: TextStyle(
                                  fontFamily: 'Amiri', fontSize: 18.0, color: Color(0xff316686))),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(40.0),
                        child: RaisedButton(
                          padding: EdgeInsets.all(10.0),
                          shape:
                              RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                              await DriverService().addDriverData(
                                name ?? snapshot.data.name,
                                type ?? snapshot.data.type,
                                email ?? snapshot.data.email,
                                phoneNumber ?? snapshot.data.phoneNumber,
                                passowrd ?? snapshot.data.passowrd,
                                address ?? snapshot.data.address,
                                addressDD ?? snapshot.data.addressDD,
                                line ?? snapshot.data.line,
                              );
                              Navigator.pop(context);
                            }
                          },
                          color: Color(0xff73a16a),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'إضافة',
                                style: TextStyle(
                                    color: Colors.white, fontFamily: 'Amiri', fontSize: 24.0),
                              ),
                              SizedBox(
                                width: 40.0,
                              ),
                              Icon(
                                Icons.add_circle,
                                color: Colors.white,
                                size: 32.0,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
