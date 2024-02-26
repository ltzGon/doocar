import 'package:flutter/material.dart';

class Pay_in_installments extends StatelessWidget {
  const Pay_in_installments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        leading: Image.asset(
          "assets/images/3.png",
          width: 200,
          height: 200,
        ),
        leadingWidth: 100,
        title: const Text('คำนวณค่างวดผ่อน'),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
