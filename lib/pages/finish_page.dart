import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_design/pages/register_page.dart';
//import 'package:wallet_design/routes.dart';
import '../widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class FinishPage extends StatefulWidget {
  FinishPage({
    Key? key,
    required this.email,
  }) : super(key: key);

  String email;

  @override
  State<FinishPage> createState() => _FinishPageState();
}

class _FinishPageState extends State<FinishPage> {
  TextEditingController email = TextEditingController();

  bool _value = false;

  var snackLogin = SnackBar(
    content: const Text('Login Successful'),
    backgroundColor: const Color.fromARGB(255, 58, 63, 66),
    duration: const Duration(seconds: 3),
    action: SnackBarAction(
      textColor: Colors.white,
      onPressed: () {},
      label: 'Undo',
    ),
  );

  _launchURL(String url) async {
    final Uri urlink = Uri.parse(url);
    if (!await canLaunchUrl(urlink)) {
      await launchUrl(urlink, mode: LaunchMode.inAppWebView);
    } else {
      throw 'Could not launch $urlink';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 30, right: 30),
            child: Column(
              children: [
                const SizedBox(height: 60),
                Row(
                  children: const [
                    Text(
                      'Login to Account',
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
                      width: 130,
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
                      width: 130,
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
                  controller: email,
                  inputHint: widget.email,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 10),
                PasswordField(
                  obscureText: true,
                  inputHint: "Password",
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 10),
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
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Confirm login'),
                          content: Text(
                            'Would you like to continue?',
                            style: GoogleFonts.sanchez(fontSize: 15),
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
                                const url = 'https://github.com';

                                _launchURL(url);
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
                        'Login',
                        style: GoogleFonts.mochiyPopPOne(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 90),
                Row(
                  children: const [
                    Text(
                      'Do not have an account?',
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
                            builder: (context) => const RegisterPage(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'SIGNUP',
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
