import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future addEmployeeDetails(
    Map<String, dynamic> employeeInfoMap, String id) async {
    return await FirebaseFirestore.instance
      .collection("Employee")
      .doc(id)
      .set(employeeInfoMap);
  }
}
