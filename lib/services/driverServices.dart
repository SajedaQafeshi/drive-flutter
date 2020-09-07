import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sajeda_app/classes/driver.dart';


class DriverService {
  
  final CollectionReference deiverCollection = Firestore.instance.collection('drivers');

  
  Future<void> addDriverData(String name,String type,String email,String phoneNumber,String passowrd,String address,String line,String addressDD) async {
    return await deiverCollection.document().setData({
      'name': name,
      'type': type,
      'email': email,
      'phoneNumber': phoneNumber,
      'line': line,
      'addressDD': addressDD,
      'passowrd': passowrd,
      'address': address
    });
  }

  Driver _driverDataFromSnapshot(DocumentSnapshot snapshot) {
    return Driver(
      name:snapshot.data['name'],
      type:snapshot.data['type'],
      email:snapshot.data['email'],
      line:snapshot.data['line'],
      phoneNumber:snapshot.data['phoneNumber'],
      passowrd:snapshot.data['passowrd'],
      address:snapshot.data['address'],
    );
  }


  Stream<Driver> get driverData {
    return deiverCollection.document().snapshots()
      .map(_driverDataFromSnapshot);
  }
}