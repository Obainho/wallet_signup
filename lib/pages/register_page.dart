import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_design/pages/finish_page.dart';
import 'package:wallet_design/widgets/widgets.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController fullname = TextEditingController();
  TextEditingController email = TextEditingController();
  bool _value = false;
  String fullnameText = 'None yet';

  @override
  void initState() {
    super.initState();
    email;
  }

  @override
  void dispose() {
    super.dispose();
    email.dispose();
  }

  var snackRegister = const SnackBar(
    content: Text('Registration Successful'),
    backgroundColor: Color.fromARGB(255, 58, 63, 66),
    duration: Duration(seconds: 3),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 30, right: 30),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Text(
                      'Register',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 140,
                      child: MaterialButton(
                        color: const Color.fromARGB(255, 232, 233, 233),
                        onPressed: () {},
                        child: const Text(
                          'GOOGLE',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    SizedBox(
                      width: 140,
                      child: MaterialButton(
                        color: const Color.fromARGB(255, 232, 233, 233),
                        onPressed: () {},
                        child: const Text(
                          'FACEBOOK',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text('or'),
                const SizedBox(height: 20),
                InputTextField(
                  controller: fullname,
                  inputHint: 'Full name',
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 10),
                InputTextField(
                  controller: email,
                  inputHint: 'Enter Email Address',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 10),
                PasswordField(
                  obscureText: true,
                  inputHint: 'Password',
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 10),
                PasswordField(
                  obscureText: true,
                  inputHint: 'Confirm Password',
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                      child: Checkbox(
                        value: _value,
                        onChanged: (bool? value) {
                          setState(() {
                            _value = value!;
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "I've read and agreed to the ",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text: "terms",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(163, 21, 97, 197),
                            ),
                          ),
                          TextSpan(
                            text: " of ",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text: "privacy policy",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(163, 21, 97, 197),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(163, 21, 97, 197),
                  ),
                  onPressed: () {
                    setState(() {
                      fullnameText = fullname.text;
                    });
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Confirm registration'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                fullnameText,
                                style: GoogleFonts.sanchez(
                                  fontSize: 15,
                                  color: const Color.fromARGB(255, 2, 6, 255),
                                ),
                              ),
                              Text(
                                'Would you like to continue?',
                                style: GoogleFonts.sanchez(fontSize: 15),
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('No'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => FinishPage(
                                      email: email.text,
                                    ),
                                  ),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackRegister);
                              },
                              child: const Text('Confirm'),
                            )
                          ],
                        );
                      },
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Register',
                        style: GoogleFonts.mochiyPopPOne(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  children: const [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => FinishPage(email: "Enter Email Address"),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'LOGIN',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(163, 21, 97, 197),
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_forward,
                            size: 17,
                            color: Color.fromARGB(163, 21, 97, 197),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
