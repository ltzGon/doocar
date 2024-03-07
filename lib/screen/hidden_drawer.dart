import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});
  Future<void> Setting() async {
    return print("long pass");
  }

  Future<void> EditProfile() async {
    return print("EditProfile");
  }

  Future<void> EditPicture() async {
    return print("EditPicture");
  }

  Future<void> Login_logout() async {
    return print("Login_logout");
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
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
              color: Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(
                image: AssetImage("assets/images/2.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const ListTile(
              leading: Icon(Icons.file_upload),
              title: Text("upload"),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const ListTile(
              leading: Icon(Icons.file_upload),
              title: Text("upload"),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const ListTile(
              leading: Icon(Icons.file_upload),
              title: Text("upload"),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const ListTile(
              leading: Icon(Icons.file_upload),
              title: Text("upload"),
            ),
          ),
        ],
      ),
    );
  }
}
