import 'package:ams_v1/res/color.dart';
import 'package:flutter/material.dart';

import '../widgets/ShrinkButton.dart';

class CreateUserScreen extends StatefulWidget {
  const CreateUserScreen({Key? key}) : super(key: key);

  @override
  State<CreateUserScreen> createState() => _CreateUserScreenState();
}

class _CreateUserScreenState extends State<CreateUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.bodyColor,
          title: Text(("Create User")),
          centerTitle: true,
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.bodyColor,
        body: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(


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
                            leading: Icon(Icons.numbers), // Set the header icon
                            title: Center(
                                child: Text(
                              "A1 Owner Info",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20),
                            )),
                            // Set the header title
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Name:"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.15,
                            ),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: 'Enter Name',
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set border radius as needed
                                    borderSide: BorderSide(
                                        color: Colors
                                            .blue), // Set border color for focused state
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set border radius as needed
                                    borderSide: BorderSide(
                                        color: Colors
                                            .grey), // Set border color for normal state
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Mobile:"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.14,
                            ),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon:
                                      Icon(Icons.mobile_friendly_outlined),
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: 'Enter Mobile',
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set border radius as needed
                                    borderSide: BorderSide(
                                        color: Colors
                                            .blue), // Set border color for focused state
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set border radius as needed
                                    borderSide: BorderSide(
                                        color: Colors
                                            .grey), // Set border color for normal state
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Address:"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.12,
                            ),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.home_sharp),
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: 'Enter Address',
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set border radius as needed
                                    borderSide: BorderSide(
                                        color: Colors
                                            .blue), // Set border color for focused state
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set border radius as needed
                                    borderSide: BorderSide(
                                        color: Colors
                                            .grey), // Set border color for normal state
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Password:"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.1,
                            ),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.password_sharp),
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: 'Enter Password',
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set border radius as needed
                                    borderSide: BorderSide(
                                        color: Colors
                                            .blue), // Set border color for focused state
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set border radius as needed
                                    borderSide: BorderSide(
                                        color: Colors
                                            .grey), // Set border color for normal state
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 16),
                            ShrinkButton(
                              child: Text('Save '),
                              shrinkScale: 0.7,
                              onPressed: () {
                                // Your desired action here
                              },
                            )
                            // ShrinkButton(
                            //   onTap: () {
                            //     setState(() {
                            //       isButtonPressed = !isButtonPressed;
                            //       if (isButtonPressed) {
                            //         _animationController.forward();
                            //       } else {
                            //         _animationController.reverse();
                            //       }
                            //     });
                            //     // Handle button press
                            //   },
                            //   animation: _animation,
                            //   child: Container(
                            //     padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                            //     decoration: BoxDecoration(
                            //       color: Colors.blue,
                            //       borderRadius: BorderRadius.circular(10),
                            //       boxShadow: [
                            //         BoxShadow(
                            //           color: isButtonPressed ? Colors.red : Colors.blue,
                            //           spreadRadius: isButtonPressed ? 5 : 2,
                            //           blurRadius: isButtonPressed ? 10 : 5,
                            //           offset: Offset(0, 3),
                            //         ),
                            //       ],
                            //     ),
                            //     child: Text(
                            //       'Submit',
                            //       style: TextStyle(color: Colors.white),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
