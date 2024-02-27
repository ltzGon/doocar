import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BuyMycar extends StatelessWidget {
  const BuyMycar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
        ),
        leading: Image.asset(
          color: const Color.fromARGB(179, 255, 0, 0),
          "assets/images/3.png",
          width: 200,
          height: 200,
        ),
        leadingWidth: 100,
        title: const Text('สินค้าที่เลือก'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(20)),
        ],
      ),
    );
  }
}
