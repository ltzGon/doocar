import 'package:doocar/screen/login.dart';
import 'package:doocar/widget/mySetting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'signup_screen.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});
  Future<bool> isLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    return isLoggedIn;
  }

  Future Edit_Profile() async {
    return;
  }

  Future Edit_Picture() async {
    return;
  }

  Future Setting() async {
    return;
  }

  ElevatedButton? Login_Logout() {
    var stage = isLoggedIn();
    if (stage == true) {
      return null;
    }
    return ElevatedButton(
      onPressed: () {
        MaterialPageRoute(
          builder: (context) => const LoginApp(),
        );
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor:
            const Color.fromARGB(255, 2, 2, 2), // สีของตัวอักษรภายในปุ่ม
        elevation: 5, // ความสูงของเงา
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // การกำหนดรูปร่างของปุ่ม
        ),
      ),
      child: const Text(
        "Register?",
        style: TextStyle(fontSize: 25),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Surachai"),
            accountEmail: const Text("surachaikai2545@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset("assets/images/bmw.png"),
              ),
            ),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 0, 0, 0),
              image: DecorationImage(
                image: AssetImage("assets/images/2.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Edit_Profile();
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromARGB(
                            255, 2, 2, 2), // สีของตัวอักษรภายในปุ่ม
                        elevation: 5, // ความสูงของเงา
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20), // การกำหนดรูปร่างของปุ่ม
                        ),
                      ),
                      child: const Text(
                        "Edit Profile",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Edit_Picture();
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromARGB(
                            255, 2, 2, 2), // สีของตัวอักษรภายในปุ่ม
                        elevation: 5, // ความสูงของเงา
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20), // การกำหนดรูปร่างของปุ่ม
                        ),
                      ),
                      child: const Text(
                        "Edit Picture",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Setting();
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromARGB(
                            255, 2, 2, 2), // สีของตัวอักษรภายในปุ่ม
                        elevation: 5, // ความสูงของเงา
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20), // การกำหนดรูปร่างของปุ่ม
                        ),
                      ),
                      child: const Text(
                        "Setting",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Container(
                child: Login_Logout(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
