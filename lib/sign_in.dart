import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tugas_login_register_layout/sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _usernameController.addListener(_checkFormValidity);
    _passwordController.addListener(_checkFormValidity);
  }

  void _checkFormValidity() {
    setState(() {
      _isButtonEnabled = _usernameController.text.isNotEmpty && _passwordController.text.isNotEmpty;
    });
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
              )
            ]
          ),
          child: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              "Sign in",
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontWeight:
                  FontWeight.bold,
                  fontSize: 18.0
              ),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: CupertinoColors.activeBlue,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()));
              },
            ),
          ),
        ),
      ),
      body: SingleChildScrollView (
        child: Padding(
          padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )
                        ),
                        onPressed: () { },
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/google_logo.png',
                              height: 20.0, // Set the height of the logo
                            ),
                            Spacer(),
                            Text(
                                "Sign in with Google",
                                style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Colors.black
                                )
                            ),
                            Spacer()
                          ],
                        ),
                      )
                    )
                  ],
                ),

                SizedBox(height: 14.0),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )
                        ),
                        onPressed: () { },
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/facebook_logo.png',
                              height: 20.0, // Set the height of the logo
                            ),
                            Spacer(),
                            Text(
                                "Sign in with Facebook",
                                style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Colors.black
                                )
                            ),
                            Spacer()
                          ],
                        ),
                      )
                    )
                  ],
                ),

                SizedBox(height: 14.0),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )
                        ),
                        onPressed: () { },
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/apple_logo.png',
                              height: 20.0, // Set the height of the logo
                            ),
                            Spacer(),
                            Text(
                                "Sign in with Apple",
                                style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Colors.black
                                )
                            ),
                            Spacer()
                          ],
                        ),
                      )
                    )
                  ],
                ),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 26.0),
                  child: Text(
                      "OR",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Lato',
                      color: Colors.grey
                    ),
                  ),
                ),

                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5.0),
                          topRight: Radius.circular(5.0)
                      ),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.0
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5.0),
                          topRight: Radius.circular(5.0)
                      ),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.0
                      )
                    ),
                    hintText: "Enter an e-mail address or username",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                      fontFamily: 'Lato'
                    ),
                  ),
                ),

                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0)
                      ),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.0
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0)
                      ),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.0
                      )
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                      fontFamily: 'Lato'
                    ),
                    suffixIcon: TextButton(
                      child: Text(
                        "Forgot?",
                        style: TextStyle(
                          color: CupertinoColors.activeBlue,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      onPressed: () {},
                    )
                  ),
                ),

                SizedBox(height: 14.0,),
                Row ( children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _isButtonEnabled ? () {} : null,
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        backgroundColor:
                          _isButtonEnabled ? CupertinoColors.activeBlue : Colors.grey,
                      ),
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  ]
                )
              ],
          ),
        )
      )
    );
  }
}