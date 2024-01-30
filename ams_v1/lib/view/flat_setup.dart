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
        backgroundColor: AppColors.appBarColor,
        title: Center(child: Text("Flat Setup")),
      ),
      backgroundColor: AppColors.bodyColor,
      body: Container(

        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
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
              SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter the number of units',
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter the Flat Sequence',
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed: () {
                  // Handle button press
                },
                child: Center(
                  child: Text(
                    'Create',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 16),
              // Add the Card widget here
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1.0), // Adjust color and width as needed
                  borderRadius: BorderRadius.all(Radius.circular(8.0)), // Adjust radius as needed
                ),
                child: Card(
                  color: AppColors.bodyColor,
                  child: Column(
                    children: [
                      ListTile(
                        title: Center(child: Text('Flat ID',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700))),
          
                      ),
                      Divider(),
                      TextFormField(
                        style: TextStyle(color: Colors.green),
                        decoration: const InputDecoration(
                          filled: true, // Enable filling
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
          
                          ),
                          labelText: 'Enter the Flat Owner Name',
          
          
                        ),
                        cursorColor: Colors.deepOrange,
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: const InputDecoration(
                          filled: true, // Enable filling
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: 'Enter the Flat Owner phone Number',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: const InputDecoration(
                          filled: true, // Enable filling
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: 'Enter the Flat Owner NID number',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: const InputDecoration(
                          filled: true, // Enable filling
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: 'Enter the Flat Owner Address',
                        ),
                      ),
          
                    ],
                  ),
          
                ),
          
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
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
              )
            ],
          
          ),
        ),
      ),
    );
  }
}


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
