import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../res/components/round_button.dart';
import '../utils/routes/routes_name.dart';
import '../utils/utils.dart';
import '../view_model/auth_view_model.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);

  TextEditingController _nameController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _customerIdController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  FocusNode nameFocusNode = FocusNode();
  FocusNode addressFocusNode = FocusNode();
  FocusNode phoneFocusNode = FocusNode();
  FocusNode customerIdFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();

    _nameController.dispose();
    _addressController.dispose();
    _phoneController.dispose();
    _customerIdController.dispose();
    _emailController.dispose();
    _passwordController.dispose();

    nameFocusNode.dispose();
    addressFocusNode.dispose();
    phoneFocusNode.dispose();
    customerIdFocusNode.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();

    _obsecurePassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);

    final height = MediaQuery.of(context).size.height * 1;

    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _nameController,
                  focusNode: nameFocusNode,
                  decoration: const InputDecoration(
                    hintText: 'Name',
                    labelText: 'Name',
                    prefixIcon: Icon(Icons.person),
                  ),
                  onFieldSubmitted: (_) {
                    Utils.fieldFocusChange(context, nameFocusNode, addressFocusNode);
                  },
                ),
                TextFormField(
                  controller: _addressController,
                  focusNode: addressFocusNode,
                  decoration: const InputDecoration(
                    hintText: 'Address',
                    labelText: 'Address',
                    prefixIcon: Icon(Icons.location_on),
                  ),
                  onFieldSubmitted: (_) {
                    Utils.fieldFocusChange(context, addressFocusNode, phoneFocusNode);
                  },
                ),
                TextFormField(
                  controller: _phoneController,
                  focusNode: phoneFocusNode,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    hintText: 'Phone',
                    labelText: 'Phone',
                    prefixIcon: Icon(Icons.phone),
                  ),
                  onFieldSubmitted: (_) {
                    Utils.fieldFocusChange(context, phoneFocusNode, customerIdFocusNode);
                  },
                ),
                TextFormField(
                  controller: _customerIdController,
                  focusNode: customerIdFocusNode,
                  decoration: const InputDecoration(
                    hintText: 'Customer ID',
                    labelText: 'Customer ID',
                    prefixIcon: Icon(Icons.credit_card),
                  ),
                  onFieldSubmitted: (_) {
                    Utils.fieldFocusChange(context, customerIdFocusNode, emailFocusNode);
                  },
                ),
                TextFormField(
                  controller: _emailController,
                  focusNode: emailFocusNode,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.alternate_email),
                  ),
                  onFieldSubmitted: (_) {
                    Utils.fieldFocusChange(context, emailFocusNode, passwordFocusNode);
                  },
                ),
                ValueListenableBuilder(
                  valueListenable: _obsecurePassword,
                  builder: (context, value, child) {
                    return TextFormField(
                      controller: _passwordController,
                      obscureText: _obsecurePassword.value,
                      focusNode: passwordFocusNode,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        hintText: 'Password',
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock_open_rounded),
                        suffixIcon: InkWell(
                          onTap: () {
                            _obsecurePassword.value = !_obsecurePassword.value;
                          },
                          child: Icon(
                            _obsecurePassword.value ? Icons.visibility_off_outlined : Icons.visibility,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: height * .085),
                RoundButton(
                  title: 'Sign Up',
                  loading: authViewModel.signUpLoading,
                  onPress: () {
                    if (_nameController.text.isEmpty) {
                      Utils.flushBarErrorMessage('Please enter name', context);
                    } else if (_addressController.text.isEmpty) {
                      Utils.flushBarErrorMessage('Please enter address', context);
                    } else if (_phoneController.text.isEmpty) {
                      Utils.flushBarErrorMessage('Please enter phone', context);
                    } else if (_customerIdController.text.isEmpty) {
                      Utils.flushBarErrorMessage('Please enter customer ID', context);
                    } else if (_emailController.text.isEmpty) {
                      Utils.flushBarErrorMessage('Please enter email', context);
                    } else if (_passwordController.text.isEmpty) {
                      Utils.flushBarErrorMessage('Please enter password', context);
                    } else if (_passwordController.text.length < 6) {
                      Utils.flushBarErrorMessage('Please enter 6 digit password', context);
                    } else {
                      Map data = {
                        'name': _nameController.text.toString(),
                        'address': _addressController.text.toString(),
                        'phone': _phoneController.text.toString(),
                        'customer_id': _customerIdController.text.toString(),
                        'email': _emailController.text.toString(),
                        'password': _passwordController.text.toString(),
                      };

                      authViewModel.signUpApi(data, context);
                      print('api hit');
                    }
                  },
                ),
                SizedBox(height: height * .02),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RoutesName.login);
                  },
                  child: Text("Already have an account? Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
