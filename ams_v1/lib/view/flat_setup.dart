import 'package:ams_v1/res/color.dart';
import 'package:flutter/material.dart';

import '../widgets/CustomTextFormField.dart';
import '../widgets/ShrinkButton.dart';
import 'home_screen.dart';

class FlatSetup extends StatefulWidget {
  const FlatSetup({Key? key}) : super(key: key);

  @override
  State<FlatSetup> createState() => _FlatSetupState();
}

class _FlatSetupState extends State<FlatSetup> {
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
            "Flat Setup",
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
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextFormField(
                labelText: 'Flat',
                prefixIcon: Icons.person,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              CustomTextFormField(
                labelText: ' Unit',
                prefixIcon: Icons.house_siding_outlined,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              CustomTextFormField(
                labelText: ' Sequence',
                prefixIcon: Icons.insert_invitation,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: ShrinkButton(
                      child: Text('Save'),
                      shrinkScale: 0.7,
                      onPressed: () {
                        // Your desired action here
                      },
                    ),
                  ),
                ],
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.01,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Container(
              //       child: Text("Number of Flat :"),
              //     ),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Container(
              //       width: 180,
              //       height: 35,
              //       child: TextFormField(),
              //     ),
              //   ],
              // ),
              // SizedBox(height: 20),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Container(
              //       child: Text("Number of Unit :"),
              //     ),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Container(
              //       width: 180,
              //       height: 35,
              //       child: TextFormField(),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Container(
              //       child: Text("Flat Sequence :"),
              //     ),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Container(
              //       width: 180,
              //       height: 35,
              //       child: TextFormField(),
              //     ),
              //   ],
              // ),
              // SizedBox(height: 20),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     ElevatedButton.icon(
              //       onPressed: () {},
              //       label: Text("Create List"),
              //       icon: Icon(Icons.list),
              //       style: ButtonStyle(
              //         backgroundColor: MaterialStateProperty.all<Color>(Colors
              //             .greenAccent), // Change Colors.blue to the color you want
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
// import 'package:ams_v1/res/color.dart';
// import 'package:flutter/material.dart';
//
// import 'home_screen.dart';
//
// class FlatSetup extends StatefulWidget {
//   const FlatSetup({Key? key}) : super(key: key);
//
//   @override
//   State<FlatSetup> createState() => _FlatSetupState();
// }
//
// class _FlatSetupState extends State<FlatSetup> {
//
//
//   void _navigateToOtherPage(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => HomeScreen()),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xfffbf8d3),
//         // backgroundColor: Colors.greenAccent,
//         title: Center(
//           child: Text(
//             "Flat Setup",
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: 15,
//               fontWeight: FontWeight.w400,
//               height: 15,
//               color: Color(0xff000000),
//             ),
//           ),
//         ),
//         shape: ContinuousRectangleBorder(
//           borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(35),
//             bottomRight: Radius.circular(35),
//           ),
//         ),
//         elevation: 4.0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => HomeScreen()),
//             );
//           },
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.menu),
//             onPressed: () {
//               // Handle menu icon press
//             },
//           ),
//         ], // Set the elevation to add a shadow
//       ),
//
//       resizeToAvoidBottomInset: false,
//       body: Container(
//         padding: EdgeInsets.all(16.0),
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         decoration: BoxDecoration(
//           color: Color(0xfffbf8d3),
//         ),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Container(
//                   child: Text("Number of Flat :"),
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Container(
//                   width: 180,
//                   height: 35,
//                   child: TextFormField(),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Container(
//                   child: Text("Number of Unit :"),
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Container(
//                   width: 180,
//                   height: 35,
//                   child: TextFormField(),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Container(
//                   child: Text("Flat Sequence :"),
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Container(
//                   width: 180,
//                   height: 35,
//                   child: TextFormField(),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton.icon(
//                   onPressed: () {},
//                   label: Text("Create List"),
//                   icon: Icon(Icons.list),
//                   style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all<Color>(Colors
//                         .greenAccent), // Change Colors.blue to the color you want
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:ams_v1/model/customerUser_model.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../data/response/api_response.dart';
// import '../data/response/status.dart';
// import '../res/color.dart';
// import '../view_model/flatSetup_View.dart';
//
// class FlatSetup extends StatefulWidget {
//   const FlatSetup({Key? key}) : super(key: key);
//
//   @override
//   State<FlatSetup> createState() => _FlatSetupState();
// }
//
// class _FlatSetupState extends State<FlatSetup> {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => FlatSetupView(),
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.orangeAccent,
//           title: Center(child: Text("Flat Setup")),
//         ),
//         body: Stack(
//           children: [
//             Container(
//               color: AppColors.bodyColor,
//               padding: EdgeInsets.all(16),
//               child: Card(
//                 elevation: 5,
//                 child: Padding(
//                   padding: EdgeInsets.all(16),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(height: 8),
//                       TextFormField(
//                         decoration: const InputDecoration(
//                           border: UnderlineInputBorder(),
//                           labelText: 'Enter the number of floor',
//                         ),
//                       ),
//                       SizedBox(height: 16),
//                       TextFormField(
//                         decoration: const InputDecoration(
//                           border: UnderlineInputBorder(),
//                           labelText: 'Enter the number of units',
//                         ),
//                       ),
//                       SizedBox(height: 16),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           primary: Colors.blue,
//                         ),
//                         onPressed: () {
//                           // Handle button press
//                         },
//                         child: Center(
//                           child: Text(
//                             'Submit',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 16),
//                       Consumer<FlatSetupView>(
//                         builder: (context, flatSetupView, child) {
//                           if (flatSetupView.userList.status == Status.LOADING) {
//                             return CircularProgressIndicator();
//                           } else if (flatSetupView.userList.status == Status.COMPLETED) {
//                             return _buildUserCard(flatSetupView.userList.data!.users!.cast<UserListModel>());
//                           } else if (flatSetupView.userList.status == Status.ERROR) {
//                             return Text(
//                               'Error loading user data: ${flatSetupView.userList.message}',
//                               style: TextStyle(color: Colors.red),
//                             );
//                           } else {
//                             return Container(); // Empty container as a placeholder
//                           }
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildUserCard(List<UserListModel> users) {
//     return Column(
//       children: users.map((user) => _buildCardForUser(user as User)).toList(),
//     );
//   }
//
//   Widget _buildCardForUser(User user) {
//     return Card(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('User ID: ${user.userId ?? ""}'),
//             Text('Name: ${user.name ?? ""}'),
//             Text('Phone: ${user.phone ?? ""}'),
//             Text('Email: ${user.email ?? ""}'),
//             // Add more fields as needed
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:ams_v1/res/color.dart';
// import 'package:flutter/material.dart';
//
// class FlatSetup extends StatefulWidget {
//   const FlatSetup({Key? key}) : super(key: key);
//
//   @override
//   State<FlatSetup> createState() => _FlatSetupState();
// }
//
// class _FlatSetupState extends State<FlatSetup> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.orangeAccent,
//         title: Center(child: Text("Flat Setup")),
//         // shape: RoundedRectangleBorder(
//         //   borderRadius: BorderRadius.only(
//         //     bottomLeft: Radius.circular(25),
//         //     bottomRight: Radius.circular(25),
//         //   ),
//         //
//         // ),
//         //   toolbarHeight:80
//       ),
//       body: Stack(children: [
//         Container(
//           color: AppColors.bodyColor,
//           padding: EdgeInsets.all(16),
//           child: Card(
//             elevation: 5, // You can adjust the elevation as needed
//             child: Padding(
//               padding: EdgeInsets.all(16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(height: 8),
//                   TextFormField(
//                     decoration: const InputDecoration(
//                       border: UnderlineInputBorder(),
//                       labelText: 'Enter the number of floor',
//                     ),
//                   ),
//                   SizedBox(
//                       height:
//                           16), // Add some space between the two text form fields
//
//                   SizedBox(height: 8),
//                   TextFormField(
//                     decoration: const InputDecoration(
//                       border: UnderlineInputBorder(),
//                       labelText: 'Enter the number of units',
//                     ),
//                   ),
//                   SizedBox(
//                       height:
//                           16), // Add some space between the text form fields and the button
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.blue, // Set your desired background color
//                     ),
//                     onPressed: () {
//                       // Handle button press
//                     },
//                     child: Center(
//                       child: Text(
//                         'Submit',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ]),
//     );
//   }
// }
