import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tugas_login_register_layout/sign_in.dart';
import 'package:tugas_login_register_layout/sign_up_email.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.light(),
        useMaterial3: true,
      ),
      home: const RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
              "Welcome",
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
              onPressed: () {},
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 22.0, horizontal: 16.0),
          child: Column(
            children: [
              Text(
                "A world class education for anyone, anywhere, 100% free.",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 22.0
                ),
                textAlign: TextAlign.center
              ),
              SizedBox(height: 8.0),
              Text(
                "We'll keep your progress in sync no matter what phone, device, or computer you're using.",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16.0,
                  color: Colors.grey
                ),
                textAlign: TextAlign.center
              ),
              SizedBox(height: 20.0),
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
                                "Continue with Google",
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
                                "Continue with Facebook",
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
                                "Continue with Apple",
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
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpEmail()));
                        },
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.mail,
                              color: CupertinoColors.activeBlue,
                            ),
                            Spacer(),
                            Text(
                                "Sign up with email",
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
              SizedBox(height: 32.0),
              Text(
                  "Already a user?",
                  style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 16.0,
                      color: Colors.grey
                  ),
                  textAlign: TextAlign.center
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Expanded(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                            side: BorderSide(color: Colors.grey),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),

                            )
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage(title: "meh")));
                        },
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: CupertinoColors.activeBlue
                          ),
                        ),
                      )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
