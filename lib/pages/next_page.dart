import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_design/routes.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(163, 21, 97, 197),
        elevation: 20,
        onPressed: () {
          Navigator.of(context).pushNamed(RouteManager.registerPage);
        },
        child: const Text('NEXT'),
      ),
      body: Stack(
        children: [
          const Positioned(
            top: 80,
            right: 30,
            child: Text(
              'SKIP',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          const Positioned(
            bottom: 35,
            left: 30,
            child: Text(
              '1/3',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                const Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Image(
                    image: AssetImage('assets/hand.JPG'),
                  ),
                ),
                Text(
                  'Take hold of \nyour finances',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.mochiyPopPOne(
                      fontSize: 30, fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Running your finances is easier with xyz',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
