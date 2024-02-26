import 'package:doocar/screen/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';

import 'screen/Pay_screen.dart';
import 'screen/buycar_screen.dart';
import 'screen/home_screen.dart';

void main() => runApp(NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  NavigationBarApp({super.key});
  final _pageControlller = PageController();
  @override
  void dispose() {
    _pageControlller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          controller: _pageControlller,
          children: const <Widget>[
            Homescreen(),
            BuyMycar(),
            Pay_in_installments(),
            SettingProfile(),
          ],
        ),
        extendBody: true,
        bottomNavigationBar: RollingBottomBar(
          color: Color.fromARGB(160, 195, 230, 119),
          controller: _pageControlller,
          flat: true,
          useActiveColorByDefault: false,
          items: const [
            RollingBottomBarItem(Icons.home,
                label: 'Shop', activeColor: Colors.redAccent),
            RollingBottomBarItem(Icons.car_rental,
                label: 'Mycar', activeColor: Colors.blueAccent),
            RollingBottomBarItem(Icons.person,
                label: 'Pay', activeColor: Colors.green),
            RollingBottomBarItem(Icons.settings,
                label: 'Setting', activeColor: Color.fromARGB(255, 10, 10, 10)),
          ],
          enableIconRotation: true,
          onTap: (index) {
            _pageControlller.animateToPage(
              index,
              duration: const Duration(milliseconds: 400),
              curve: Curves.fastOutSlowIn,
            );
          },
        ),
      ),
    );
  }
}
