import 'package:doocar/Login_logout.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  Future Edit_Profile() async {
    return;
  }

  Future Edit_Picture() async {
    return;
  }

  Future Setting() async {
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              "Surachai",
              style: TextStyle(
                fontFamily: 'CustomFont',
                fontSize: 16,
                fontWeight: FontWeight
                    .normal, // This can be FontWeight.bold for the bold version
              ),
            ),
            accountEmail: const Text(
              "surachaikai2545@gmail.com",
              style: TextStyle(
                fontFamily: 'CustomFont',
                fontSize: 16,
                fontWeight: FontWeight
                    .normal, // This can be FontWeight.bold for the bold version
              ),
            ),
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
                padding: const EdgeInsets.fromLTRB(5, 20, 70, 20),
                child: Column(
                  children: [
                    TextButton.icon(
                      onPressed: () {
                        Edit_Profile();
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                        backgroundColor: Colors.white, // สีของตัวอักษรภายในปุ่ม
                        elevation: 5, // ความสูงของเงา
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            20,
                          ), // การกำหนดรูปร่างของปุ่ม
                        ),
                      ),
                      icon: const Icon(
                        Icons.person_3_outlined,
                        color: Color.fromARGB(255, 26, 25, 25),
                      ),
                      label: const Text(
                        '\t\t\t\t\tEdit Profile\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t',
                        style: TextStyle(
                          fontFamily: 'CustomFont',
                          fontSize: 16,
                          fontWeight: FontWeight
                              .normal, // This can be FontWeight.bold for the bold version
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextButton.icon(
                      onPressed: () {
                        Edit_Picture();
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                        backgroundColor: Colors.white, // สีของตัวอักษรภายในปุ่ม
                        elevation: 5, // ความสูงของเงา
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20), // การกำหนดรูปร่างของปุ่ม
                        ),
                      ),
                      icon: const Icon(Icons.picture_as_pdf),
                      label: const Text(
                        "\t\t\t\t\tEdit Picture\t\t\t\t\t\t\t\t\t\t\t\t\t",
                        style: TextStyle(
                          fontFamily: 'CustomFont',
                          fontSize: 16,
                          fontWeight: FontWeight
                              .normal, // This can be FontWeight.bold for the bold version
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextButton.icon(
                      onPressed: () {
                        Setting();
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                        backgroundColor: Colors.white, // สีของตัวอักษรภายในปุ่ม
                        elevation: 5, // ความสูงของเงา
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10), // การกำหนดรูปร่างของปุ่ม
                        ),
                      ),
                      icon: const Icon(Icons.settings),
                      label: const Text(
                        "\t\t\t\tSetting\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                        style: TextStyle(
                          fontFamily: 'CustomFont',
                          fontSize: 16,
                          fontWeight: FontWeight
                              .normal, // This can be FontWeight.bold for the bold version
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Login_logout_(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
