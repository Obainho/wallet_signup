import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../routes.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(163, 21, 97, 197),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage(
                  'assets/wallet.JPG',
                ),
              ),
              Text(
                'Wallet',
                style: GoogleFonts.mochiyPopPOne(
                  fontSize: 50,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              Text(
                'Money Transfer, Wallet & \nFinance UI Kit',
                textAlign: TextAlign.center,
                style: GoogleFonts.sanchez(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteManager.nextPage);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Get Started Now',
                      style: GoogleFonts.mochiyPopPOne(
                        fontWeight: FontWeight.w300,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
