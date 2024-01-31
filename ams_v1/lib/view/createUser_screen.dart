import 'package:ams_v1/res/color.dart';
import 'package:ams_v1/view/home_screen.dart';
import 'package:flutter/material.dart';

import '../utils/routes/routes_name.dart';
import '../widgets/ShrinkButton.dart';

class CreateUserScreen extends StatefulWidget {
  const CreateUserScreen({Key? key}) : super(key: key);

  @override
  State<CreateUserScreen> createState() => _CreateUserScreenState();
}

class _CreateUserScreenState extends State<CreateUserScreen> {
  void _navigateToOtherPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfffbf8d3),
          // backgroundColor: Colors.greenAccent,
          title: Center(
            child: Text(
              "Create User",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                height: 15,
                color: Color(0xff000000),
              ),
            ),
          ),
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
          ),
          elevation: 4.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Handle menu icon press
              },
            ),
          ], // Set the elevation to add a shadow
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.bodyColor,
        body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height* 0.01,),
            Container(
              // height: MediaQuery.of(context).size.height * 0.8,
              // width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Container(

                    child: Stack(
                      fit: StackFit.passthrough,
                      children: [
                        Container(
                          margin: EdgeInsets.all(25),
                          child: Card(
                            elevation: 50,
                            shadowColor: Colors.black,
                            color: Colors.white60,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(
                                    child: ListTile(
                                      leading: Icon(
                                          Icons.numbers), // Set the header icon
                                      title: Center(
                                          child: Text(
                                            "A1 Owner Info",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 20),
                                          )),
                                      // Set the header title
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: constraints.maxWidth * 0.3,
                                              child:
                                              Center(child: Text("Name:"))),
                                          // Use Expanded to allow the TextFormField to take available space
                                          Container(
                                            width: constraints.maxWidth * 0.7,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                prefixIcon: Icon(Icons.person),
                                                filled: true,
                                                fillColor: Colors.white,
                                                labelText: 'Enter Name',
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: constraints.maxWidth * 0.3,
                                              child:
                                              Center(child: Text("Mobile:"))),

                                          // Use Expanded to allow the TextFormField to take available space
                                          Container(
                                            width: constraints.maxWidth * 0.7,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                prefixIcon:
                                                Icon(Icons.phone_android),
                                                filled: true,
                                                fillColor: Colors.white,
                                                labelText: 'Enter Mobile',
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: constraints.maxWidth * 0.3,
                                              child: Center(
                                                  child: Text("Address:"))),

                                          // Use Expanded to allow the TextFormField to take available space
                                          Container(
                                            width: constraints.maxWidth * 0.7,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                prefixIcon:
                                                Icon(Icons.phone_android),
                                                filled: true,
                                                fillColor: Colors.white,
                                                labelText: 'Enter Address',
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: constraints.maxWidth * 0.3,
                                              child: Center(
                                                  child: Text("Password:"))),

                                          // Use Expanded to allow the TextFormField to take available space
                                          Container(
                                            width: constraints.maxWidth * 0.7,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                prefixIcon:
                                                Icon(Icons.phone_android),
                                                filled: true,
                                                fillColor: Colors.white,
                                                labelText: 'Enter Password',
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox( height: 20),
                                  LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: constraints.maxWidth * 0.5,
                                              child: ShrinkButton(
                                                child: Text('Save '),
                                                shrinkScale: 0.7,
                                                onPressed: () {
                                                  // Your desired action here
                                                },
                                              )),

                                          // Use Expanded to allow the TextFormField to take available space
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height * 0.02,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(

                    child: Stack(
                      fit: StackFit.passthrough,
                      children: [
                        Container(
                          margin: EdgeInsets.all(25),
                          child: Card(
                            elevation: 50,
                            shadowColor: Colors.black,
                            color: Colors.white60,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(
                                    child: ListTile(
                                      leading: Icon(
                                          Icons.numbers), // Set the header icon
                                      title: Center(
                                          child: Text(
                                            "A2 Owner Info",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 20),
                                          )),
                                      // Set the header title
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: constraints.maxWidth * 0.3,
                                              child:
                                              Center(child: Text("Name:"))),
                                          // Use Expanded to allow the TextFormField to take available space
                                          Container(
                                            width: constraints.maxWidth * 0.7,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                prefixIcon: Icon(Icons.person),
                                                filled: true,
                                                fillColor: Colors.white,
                                                labelText: 'Enter Name',
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: constraints.maxWidth * 0.3,
                                              child:
                                              Center(child: Text("Mobile:"))),

                                          // Use Expanded to allow the TextFormField to take available space
                                          Container(
                                            width: constraints.maxWidth * 0.7,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                prefixIcon:
                                                Icon(Icons.phone_android),
                                                filled: true,
                                                fillColor: Colors.white,
                                                labelText: 'Enter Mobile',
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: constraints.maxWidth * 0.3,
                                              child: Center(
                                                  child: Text("Address:"))),

                                          // Use Expanded to allow the TextFormField to take available space
                                          Container(
                                            width: constraints.maxWidth * 0.7,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                prefixIcon:
                                                Icon(Icons.phone_android),
                                                filled: true,
                                                fillColor: Colors.white,
                                                labelText: 'Enter Address',
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: constraints.maxWidth * 0.3,
                                              child: Center(
                                                  child: Text("Password:"))),

                                          // Use Expanded to allow the TextFormField to take available space
                                          Container(
                                            width: constraints.maxWidth * 0.7,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                prefixIcon:
                                                Icon(Icons.phone_android),
                                                filled: true,
                                                fillColor: Colors.white,
                                                labelText: 'Enter Password',
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox( height: MediaQuery.of(context).size.height * 0.03,),
                                  LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: constraints.maxWidth * 0.5,
                                              child: ShrinkButton(
                                                child: Text('Save '),
                                                shrinkScale: 0.7,
                                                onPressed: () {
                                                  // Your desired action here
                                                },
                                              )),

                                          // Use Expanded to allow the TextFormField to take available space
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height * 0.02,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(

                    child: Stack(
                      fit: StackFit.passthrough,
                      children: [
                        Container(
                          margin: EdgeInsets.all(25),
                          child: Card(
                            elevation: 50,
                            shadowColor: Colors.black,
                            color: Colors.white60,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(
                                    child: ListTile(
                                      leading: Icon(
                                          Icons.numbers), // Set the header icon
                                      title: Center(
                                          child: Text(
                                            "A3 Owner Info",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 20),
                                          )),
                                      // Set the header title
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: constraints.maxWidth * 0.3,
                                              child:
                                              Center(child: Text("Name:"))),
                                          // Use Expanded to allow the TextFormField to take available space
                                          Container(
                                            width: constraints.maxWidth * 0.7,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                prefixIcon: Icon(Icons.person),
                                                filled: true,
                                                fillColor: Colors.white,
                                                labelText: 'Enter Name',
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: constraints.maxWidth * 0.3,
                                              child:
                                              Center(child: Text("Mobile:"))),

                                          // Use Expanded to allow the TextFormField to take available space
                                          Container(
                                            width: constraints.maxWidth * 0.7,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                prefixIcon:
                                                Icon(Icons.phone_android),
                                                filled: true,
                                                fillColor: Colors.white,
                                                labelText: 'Enter Mobile',
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: constraints.maxWidth * 0.3,
                                              child: Center(
                                                  child: Text("Address:"))),

                                          // Use Expanded to allow the TextFormField to take available space
                                          Container(
                                            width: constraints.maxWidth * 0.7,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                prefixIcon:
                                                Icon(Icons.phone_android),
                                                filled: true,
                                                fillColor: Colors.white,
                                                labelText: 'Enter Address',
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: constraints.maxWidth * 0.3,
                                              child: Center(
                                                  child: Text("Password:"))),

                                          // Use Expanded to allow the TextFormField to take available space
                                          Container(
                                            width: constraints.maxWidth * 0.7,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                prefixIcon:
                                                Icon(Icons.phone_android),
                                                filled: true,
                                                fillColor: Colors.white,
                                                labelText: 'Enter Password',
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox( height: MediaQuery.of(context).size.height * 0.03,),
                                  LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: constraints.maxWidth * 0.5,
                                              child: ShrinkButton(
                                                child: Text('Save '),
                                                shrinkScale: 0.7,
                                                onPressed: () {
                                                  // Your desired action here
                                                },
                                              )),

                                          // Use Expanded to allow the TextFormField to take available space
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height * 0.02,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ////////////////////////////////////////new Card
                ],
              ),
            ),
          ],
        ),
        ));
  }
}

// import 'package:ams_v1/res/color.dart';
// import 'package:flutter/material.dart';
//
// class CreateUserScreen extends StatefulWidget {
//   const CreateUserScreen({Key? key}) : super(key: key);
//
//   @override
//   State<CreateUserScreen> createState() => _CreateUserScreenState();
// }
//
// class _CreateUserScreenState extends State<CreateUserScreen> {
//
//   final appbar = AppBar(
//     backgroundColor: Color(0xfffbf8d3),
//     title: Center(
//       child: Text(
//         "Create User",
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           fontSize: 15,
//           fontWeight: FontWeight.w400,
//           height: 15,
//           color: Color(0xff000000),
//         ),
//       ),
//     ),
//   );
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: appbar,
//       resizeToAvoidBottomInset: false,
//       body: Container(
//         padding: EdgeInsets.all(16.0),
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         decoration: BoxDecoration(
//           color: Color(0xfffbf8d3),
//         ),
//         child: Card(
//           elevation: 0, // You can adjust the elevation as needed
//           margin: EdgeInsets.all(10), // You can adjust the margin as needed
//           child: Padding(
//
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height: MediaQuery.of(context).size.height * 0.6,
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Container(
//                         child: Text("Number of Flat:"),
//                       ),
//                       SizedBox(
//                         width: 20,
//                       ),
//                       Container(
//                         width: 180,
//                         height: 35,
//                         child: TextFormField(),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Container(
//                         child: Text("Owner Name:"),
//                       ),
//                       SizedBox(
//                         width: 20,
//                       ),
//                       Container(
//                         width: 180,
//                         height: 35,
//                         child: TextFormField(),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Container(
//                         child: Text("Owner Mobile :"),
//                       ),
//                       SizedBox(
//                         width: 20,
//                       ),
//                       Container(
//                         width: 180,
//                         height: 35,
//                         child: TextFormField(),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Container(
//                         child: Text("Owner Address:"),
//                       ),
//                       SizedBox(
//                         width: 20,
//                       ),
//                       Container(
//                         width: 180,
//                         height: 35,
//                         child: TextFormField(),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Text("Password:"),
//                       SizedBox(
//                         width: 20,
//                       ),
//                       Expanded(
//                         child: TextFormField(
//                           decoration: const InputDecoration(
//                             border: UnderlineInputBorder(),
//                             labelText: 'Enter Password',
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       ElevatedButton.icon(
//                         onPressed: () {},
//                         label: Text("Create List"),
//                         icon: Icon(Icons.list),
//                         style: ButtonStyle(
//                           backgroundColor: MaterialStateProperty.all<Color>(
//                               Colors.greenAccent), // Change Colors.blue to the color you want
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//
//       ),
//     );
//   }
// }

// import 'package:ams_v1/res/color.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:dropdown_button2/dropdown_button2.dart';
//
// class CreateUserScreen extends StatefulWidget {
//   const CreateUserScreen({Key? key}) : super(key: key);
//
//   @override
//   State<CreateUserScreen> createState() => _CreateUserScreenState();
// }
//
// class _CreateUserScreenState extends State<CreateUserScreen> {
//   final List<String> items = ['A1', 'A2', 'A3', 'A4'];
//   String? selectedValue;
//   TextEditingController mobileNumberController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColors.appBarColor,
//         title: Text("Create User"),
//         centerTitle: true,
//       ),
//       backgroundColor: AppColors.bodyColor,
//       body: Container(
//         padding: EdgeInsets.all(16.0),
//         child: Center(
//           child: Column(
//                  children: [
//               DropdownButtonHideUnderline(
//                 child: DropdownButton2<String>(
//                   isExpanded: true,
//                   hint: Text(
//                     'Flat Number',
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: Theme.of(context).hintColor,
//                     ),
//                   ),
//                   items: items
//                       .map((String item) => DropdownMenuItem<String>(
//                     value: item,
//                     child: Text(
//                       item,
//                       style: const TextStyle(
//                         fontSize: 14,
//                       ),
//                     ),
//                   ))
//                       .toList(),
//                   value: selectedValue,
//                   onChanged: (String? value) {
//                     setState(() {
//                       selectedValue = value;
//                     });
//                   },
//                   buttonStyleData: const ButtonStyleData(
//                     padding: EdgeInsets.symmetric(horizontal: 16),
//                     height: 40,
//                     width: 140,
//                   ),
//                   menuItemStyleData: const MenuItemStyleData(
//                     height: 40,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 16),
//               if (selectedValue != null) ...[
//                 TextFormField(
//                   controller: mobileNumberController,
//                   decoration: InputDecoration(
//                     labelText: 'Mobile Number',
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//                 SizedBox(height: 16),
//                 TextFormField(
//                   controller: passwordController,
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     labelText: 'Password',
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//                 SizedBox(height: 16),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.green,
//                       ),
//                       onPressed: () {
//                         // Implement your submit logic here
//                       },
//                       child: Text('Submit'),
//                     ),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.red,
//                       ),
//                       onPressed: () {
//                         // Implement your reset logic here
//                         setState(() {
//                           mobileNumberController.text = '';
//                           passwordController.text = '';
//                           selectedValue = null;
//                         });
//                       },
//                       child: Text('Reset'),
//                     ),
//                   ],
//                 ),
//               ],
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
