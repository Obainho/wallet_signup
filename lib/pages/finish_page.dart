import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_design/routes.dart';
import '../widgets/widgets.dart';

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
                    Container(
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
                    const Text(
                      "I've read and agreed to the ",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    const Text(
                      "terms",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(163, 21, 97, 197),
                      ),
                    ),
                    const Text(" of "),
                    const Text(
                      "privacy policy",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(163, 21, 97, 197),
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
                    ScaffoldMessenger.of(context).showSnackBar(snackLogin);
                    Navigator.of(context).pushNamed(RouteManager.homePage);
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
