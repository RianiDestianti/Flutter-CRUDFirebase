import 'package:crud/service/database.dart';
import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';

class Employee extends StatefulWidget {
  const Employee({super.key});

  @override
  State<Employee> createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController ageController = new TextEditingController();
  TextEditingController locationController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Employee",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 5), // Jarak antara dua teks
            Text(
              "Form",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Biar teks rata kiri
          children: [
            Text(
              "Name",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              "Age",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: ageController,
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            Text(
              "Location",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: locationController,
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            SizedBox(height: 30.0),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  String Id = randomAlphaNumeric(10);
                  Map<String, dynamic> employeeInfoMap = {
                    "Name": nameController.text,
                    "Age": ageController.text,
                    "Id": Id,
                    "Location": locationController.text,
                  };
                  await DatabaseMethods().addEmployeeDetails(
                    employeeInfoMap,
                    Id,
                  );
                },

                child: Text(
                  "Add",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    ); // Scaffold
  }
}
