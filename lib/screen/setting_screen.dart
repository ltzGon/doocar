import 'package:flutter/material.dart';
import '../widget/Contact.dart';
import '../widget/Profile.dart';
import '../widget/mySetting.dart';
import '../widget/myinformation.dart';

class SettingProfile extends StatelessWidget {
  const SettingProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        leading: Image.asset(
          "assets/images/3.png",
          width: 200,
          height: 100,
        ),
        leadingWidth: 100,
        title: const Text('ตั้งค่าบัญชีผู้ใช้'),
      ),
      body: GridView.extent(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        maxCrossAxisExtent: 200, //ความใหญ่
        mainAxisSpacing: 30, //ระยะซ้ายขวา่
        crossAxisSpacing: 30, //ระยะบนล่าง
        scrollDirection: Axis.vertical,
        children: const [
          Profile(),
          Setting(),
          Information(),
          contact(),
        ],
      ),
    );
  }
}
