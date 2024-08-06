import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tugas_login_register_layout/sign_up.dart';
import 'package:tugas_login_register_layout/widgets/email_text_field.dart';

class SignUpEmail extends StatefulWidget {
  const SignUpEmail({super.key});

  @override
  State<SignUpEmail> createState() => _SignUpEmailState();
}

class _SignUpEmailState extends State<SignUpEmail> with SingleTickerProviderStateMixin {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _birthDayController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _firstNameController.addListener(_checkFormValidity);
  }

  @override
  void _checkFormValidity() {
    _isButtonEnabled =
        _firstNameController.text.isNotEmpty &&
        _lastNameController.text.isNotEmpty &&
        _birthDayController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55.0),
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 7.0,
                spreadRadius: 2.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              "Sign Up",
              style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: CupertinoColors.activeBlue,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
              },
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text(
                 "CREATE",
                 style: TextStyle(
                   fontFamily: 'Lato',
                   fontSize: 18.0,
                   color: CupertinoColors.activeBlue
                 ),
                )
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 30.0),
            Text(
              "Tell us a little bit about yourself to create your account",
              style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 25),
            SignUpTextField(hintText: "First name", controller: _firstNameController, hasObsecure: false),

            SizedBox(height: 25),
            SignUpTextField(hintText: "Last name", controller: _lastNameController, hasObsecure: false),

            SizedBox(height: 25),


            SizedBox(height: 25),
            SignUpTextField(hintText: "Email address", controller: _emailController, hasObsecure: false),

            SizedBox(height: 25),
            SignUpTextField(hintText: "Password", controller: _passwordController, hasObsecure: true),
          ],
        ),
      )
    );
  }
}
