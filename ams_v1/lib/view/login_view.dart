// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../res/color.dart';
// import '../res/components/round_button.dart';
// import '../utils/routes/routes_name.dart';
// import '../utils/utils.dart';
// import '../view_model/auth_view_model.dart';
//
// class LoginView extends StatefulWidget {
//   const LoginView({Key? key}) : super(key: key);
//
//   @override
//   _LoginViewState createState() => _LoginViewState();
// }
//
// class _LoginViewState extends State<LoginView> {
//   ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);
//   TextEditingController _emailController = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();
//   FocusNode emailFocusNode = FocusNode();
//   FocusNode passwordFocusNode = FocusNode();
//   String _selectedLoginType = 'Customer Login'; // Default value
//   String _selectedLoginType2 = 'User Login'; // Default value
//
//   @override
//   void dispose() {
//     super.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//     emailFocusNode.dispose();
//     passwordFocusNode.dispose();
//     _obscurePassword.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final authViewModel = Provider.of<AuthViewModel>(context);
//     final height = MediaQuery.of(context).size.height * 1;
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColors.bodyColor,
//         title: Text('Login'),
//         centerTitle: true,
//       ),
//       body: Container(
//         color: AppColors.bodyColor,
//         child: SafeArea(
//           child: Column(
//             children: [
//               Image.asset(
//                 'assets/images/img_pngtree_house_logo.png',
//                 width: 240,
//                 height: 193,
//               ),
//               DropdownButton<String>(
//                 value: _selectedLoginType,
//                 items: ['Customer Login', 'User Login'].map((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 }).toList(),
//                 onChanged: (String? newValue) {
//                   setState(() {
//                     _selectedLoginType = newValue!;
//                   });
//                 },
//               ),
//               TextFormField(
//                 controller: _emailController,
//                 keyboardType: TextInputType.emailAddress,
//                 focusNode: emailFocusNode,
//                 decoration: const InputDecoration(
//                   hintText: 'Customer ID',
//                   labelText: 'Customer ID',
//                   prefixIcon: Icon(Icons.perm_identity_sharp),
//                 ),
//                 onFieldSubmitted: (value) {
//                   Utils.fieldFocusChange(
//                       context, emailFocusNode, passwordFocusNode);
//                 },
//               ),
//               TextFormField(
//                 controller: _emailController,
//                 keyboardType: TextInputType.emailAddress,
//                 focusNode: emailFocusNode,
//                 decoration: const InputDecoration(
//                   hintText: 'Mobile Number',
//                   labelText: 'Mobile Number',
//                   prefixIcon: Icon(Icons.phone_android_rounded),
//                 ),
//                 onFieldSubmitted: (value) {
//                   Utils.fieldFocusChange(
//                       context, emailFocusNode, passwordFocusNode);
//                 },
//               ),
//               ValueListenableBuilder(
//                 valueListenable: _obscurePassword,
//                 builder: (context, value, child) {
//                   return TextFormField(
//                     controller: _passwordController,
//                     obscureText: _obscurePassword.value,
//                     focusNode: passwordFocusNode,
//                     obscuringCharacter: "*",
//                     decoration: InputDecoration(
//                       hintText: 'Password',
//                       labelText: 'Password',
//                       prefixIcon: Icon(Icons.lock_open_rounded),
//                       suffixIcon: InkWell(
//                         onTap: () {
//                           _obscurePassword.value = !_obscurePassword.value;
//                         },
//                         child: Icon(_obscurePassword.value
//                             ? Icons.visibility_off_outlined
//                             : Icons.visibility),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//               SizedBox(height: height * 0.085),
//               RoundButton(
//                 title: 'Login',
//                 loading: authViewModel.loading,
//                 onPress: () {
//                   if (_emailController.text.isEmpty) {
//                     Utils.flushBarErrorMessage('Please enter email', context);
//                   } else if (_passwordController.text.isEmpty) {
//                     Utils.flushBarErrorMessage('Please enter password', context);
//                   } else if (_passwordController.text.length < 6) {
//                     Utils.flushBarErrorMessage('Please enter 6 digit password', context);
//                   } else {
//                     // Uncomment the following section when you have the login API implementation
//                     // Map<String, String> data = {
//                     //   'email': _emailController.text.toString(),
//                     //   'password': _passwordController.text.toString(),
//                     // };
//                     // authViewModel.loginApi(data, context);
//
//                     // Based on the selected login type, navigate to the corresponding screen
//                     if (_selectedLoginType == 'Customer Login') {
//                       Navigator.pushNamed(context, RoutesName.login);
//                     } else if (_selectedLoginType == 'User Login') {
//                       Navigator.pushNamed(context, RoutesName.userLogin);
//                     }
//                   }
//                 },
//               ),
//
//               SizedBox(height: height * 0.02),
//               InkWell(
//                 onTap: () {
//                   Navigator.pushNamed(context, RoutesName.signUp);
//                 },
//                 child: Text("Don't have an account? Sign Up"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../res/color.dart';
import '../res/components/round_button.dart';
import '../utils/routes/routes_name.dart';
import '../utils/utils.dart';
import '../view_model/auth_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);

  TextEditingController _customerController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  FocusNode customerFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();

    _customerController.dispose();
    _emailController.dispose();
    _passwordController.dispose();

    customerFocusNode.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();

    _obscurePassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);


    final appbar =  AppBar(
      backgroundColor: AppColors.bodyColor,
      title: Text('Customer Login'),
      centerTitle: true,
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:appbar,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: (MediaQuery.of(context).size.height - appbar.preferredSize.height),
        color: AppColors.bodyColor, // Replace with your desired body color
        child: SafeArea(
          child: Column(
            children: [
              Image.asset(
                'assets/images/img_pngtree_house_logo.png',
                width: 240,
                height: 193,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, RoutesName.userLogin);
                          },
                          child: Text("User Login",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black87,fontSize: 15),),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, RoutesName.login);
                          },
                          child: Text("Customer Login",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black87,fontSize: 15),),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                focusNode: emailFocusNode,
                decoration: const InputDecoration(
                  hintText: 'Email Address',
                  labelText: 'Email Address',
                  prefixIcon: Icon(Icons.email),
                ),
                onFieldSubmitted: (value) {
                  Utils.fieldFocusChange(
                      context, emailFocusNode, passwordFocusNode);
                },
              ),
              ValueListenableBuilder(
                valueListenable: _obscurePassword,
                builder: (context, value, child) {
                  return TextFormField(
                    controller: _passwordController,
                    obscureText: _obscurePassword.value,
                    focusNode: passwordFocusNode,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock_open_rounded),
                      suffixIcon: InkWell(
                        onTap: () {
                          _obscurePassword.value = !_obscurePassword.value;
                        },
                        child: Icon(_obscurePassword.value
                            ? Icons.visibility_off_outlined
                            : Icons.visibility),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              // height * 0.085
              RoundButton(
                title: 'Login',
                loading: authViewModel.loading,
                onPress: () {
                  // Navigator.pushNamed(context, RoutesName.home);
                  if (_emailController.text.isEmpty) {
                    Utils.flushBarErrorMessage(
                        'Please enter email', context);
                  } else if (_passwordController.text.isEmpty) {
                    Utils.flushBarErrorMessage(
                        'Please enter password', context);
                  } else if (_passwordController.text.length < 6) {
                    Utils.flushBarErrorMessage(
                        'Please enter 6 digit password', context);
                  } else {
                    Map<String, String> data = {
                      'email': _emailController.text.toString(),
                      'password': _passwordController.text.toString(),
                    };

                    authViewModel.loginApi(data, context);
                  }

                },
              ),
              SizedBox(height: 20),
              // height * 0.02
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.signUp);
                },
                child: Text("Don't have an account? Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../res/components/round_button.dart';
// import '../utils/routes/routes_name.dart';
// import '../utils/utils.dart';
// import '../view_model/auth_view_model.dart';
// class LoginView extends StatefulWidget {
//   const LoginView({Key? key}) : super(key: key);
//
//   @override
//   _LoginViewState createState() => _LoginViewState();
// }
//
// class _LoginViewState extends State<LoginView> {
//
//   ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);
//
//   TextEditingController _emailController = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();
//
//   FocusNode emailFocusNode = FocusNode();
//   FocusNode passwordFocusNode = FocusNode();
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//
//     _emailController.dispose();
//     _passwordController.dispose();
//
//     emailFocusNode.dispose();
//     passwordFocusNode.dispose();
//
//     _obsecurePassword.dispose();
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final authViewMode = Provider.of<AuthViewModel>(context);
//
//     final height  = MediaQuery.of(context).size.height * 1 ;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             TextFormField(
//               controller: _emailController,
//               keyboardType: TextInputType.emailAddress,
//               focusNode: emailFocusNode,
//               decoration: const InputDecoration(
//                 hintText: 'Email',
//                 labelText: 'Email',
//                 prefixIcon: Icon(Icons.alternate_email)
//               ),
//               onFieldSubmitted: (valu){
//                 Utils.fieldFocusChange(context, emailFocusNode, passwordFocusNode);
//               },
//             ),
//             ValueListenableBuilder(
//                 valueListenable: _obsecurePassword,
//                 builder: (context , value, child){
//                   return TextFormField(
//                     controller: _passwordController,
//                     obscureText: _obsecurePassword.value,
//                     focusNode: passwordFocusNode,
//
//                     obscuringCharacter: "*",
//                     decoration: InputDecoration(
//                       hintText: 'Password',
//                       labelText: 'Password',
//                       prefixIcon: Icon(Icons.lock_open_rounded),
//                       suffixIcon: InkWell(
//                           onTap: (){
//                             _obsecurePassword.value = !_obsecurePassword.value ;
//                           },
//                           child: Icon(
//                               _obsecurePassword.value ?  Icons.visibility_off_outlined :
//                               Icons.visibility
//                           )),
//                     ),
//                   );
//
//                 }
//             ),
//             SizedBox(height: height * .085,),
//             RoundButton(
//               title: 'Login',
//               loading: authViewMode.loading,
//               onPress: (){
//                 if(_emailController.text.isEmpty){
//
//                   Utils.flushBarErrorMessage('Please enter email', context);
//                 }else if(_passwordController.text.isEmpty){
//                   Utils.flushBarErrorMessage('Please enter password', context);
//
//                 }else if(_passwordController.text.length < 6){
//                   Utils.flushBarErrorMessage('Please enter 6 digit password', context);
//
//                 }else {
//
//
//                   Map data = {
//                     'email' : _emailController.text.toString(),
//                     'password' : _passwordController.text.toString(),
//                   };
//
//                   // Map data = {
//                   //   'email' : 'eve.holt@reqres.in',
//                   //   'password' : 'cityslicka',
//                   // };
//
//                   authViewMode.loginApi(data , context);
//                   print('api hit');
//                 }
//               },
//             ),
//             SizedBox(height: height * .02,),
//             InkWell(
//               onTap: (){
//                 Navigator.pushNamed(context, RoutesName.signUp);
//               },
//                 child: Text("Don't have an accont? Sign Up"))
//
//           ],
//         ),
//       ),
//     );
//   }
//
// }
