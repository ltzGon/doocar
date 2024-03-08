import 'package:flutter/material.dart';

import 'screen/signup_screen.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Login_logout_ extends StatefulWidget {
  const Login_logout_({super.key});

  @override
  State<Login_logout_> createState() => _Login_logout_State();
}

class _Login_logout_State extends State<Login_logout_> {
  Future<bool> isLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    return isLoggedIn;
  }

  login() {
    if (isLoggedIn() == true) {
      return TextButton.icon(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignUpScreen(),
            ),
          );
        },
        style: TextButton.styleFrom(
          foregroundColor: const Color.fromARGB(255, 0, 0, 0),
          backgroundColor: Colors.white, // สีของตัวอักษรภายในปุ่ม
          elevation: 5, // ความสูงของเงา
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // การกำหนดรูปร่างของปุ่ม
          ),
        ),
        icon: const Icon(Icons.login),
        label: const Text(
          "\t\t\t\t\tLogout\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
          style: TextStyle(
            fontFamily: 'CustomFont',
            fontSize: 16,
            fontWeight: FontWeight
                .normal, // This can be FontWeight.bold for the bold version
          ),
        ),
      );
    }
    return TextButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SignUpScreen(),
          ),
        );
      },
      style: TextButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
        backgroundColor: Colors.white, // สีของตัวอักษรภายในปุ่ม
        elevation: 5, // ความสูงของเงา
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // การกำหนดรูปร่างของปุ่ม
        ),
      ),
      icon: const Icon(Icons.login),
      label: const Text(
        "\t\t\t\t\tLogin\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
        style: TextStyle(
          fontFamily: 'CustomFont',
          fontSize: 16,
          fontWeight: FontWeight
              .normal, // This can be FontWeight.bold for the bold version
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: login(),
    );
  }
}
