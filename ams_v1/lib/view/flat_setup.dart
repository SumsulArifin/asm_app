import 'package:ams_v1/res/color.dart';
import 'package:flutter/material.dart';

class FlatSetup extends StatefulWidget {
  const FlatSetup({Key? key}) : super(key: key);

  @override
  State<FlatSetup> createState() => _FlatSetupState();
}

class _FlatSetupState extends State<FlatSetup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Center(child: Text("Flat Setup")),
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(25),
        //     bottomRight: Radius.circular(25),
        //   ),
        //
        // ),
        //   toolbarHeight:80
      ),
      body: Stack(children: [
        Container(
          color: AppColors.bodyColor,
          padding: EdgeInsets.all(16),
          child: Card(
            elevation: 5, // You can adjust the elevation as needed
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter the number of floor',
                    ),
                  ),
                  SizedBox(
                      height:
                          16), // Add some space between the two text form fields

                  SizedBox(height: 8),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter the number of units',
                    ),
                  ),
                  SizedBox(
                      height:
                          16), // Add some space between the text form fields and the button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Set your desired background color
                    ),
                    onPressed: () {
                      // Handle button press
                    },
                    child: Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
