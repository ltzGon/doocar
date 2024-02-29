import 'dart:convert';
import 'package:doocar/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  Future signup() async {
    String url = "http://127.0.0.1/API/register.php";
    //อ่าน//
    //อันเเรกคือรันบนเว็บ//

    final response = await http.post(Uri.parse(url), body: {
      'name': name.text,
      'email': email.text,
      'password': password.text,
    });
    var data = json.decode(response.body);
    if (data == "Error") {
      Navigator.pushNamed(context, 'signup_screen');
    } else {
      Navigator.pushNamed(context, 'login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/3.png',
                        width: 250,
                        height: 150,
                      ),
                      const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 350,
                        child: TextFormField(
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: "Username",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none),
                            fillColor: const Color.fromARGB(255, 218, 199, 221)
                                .withOpacity(0.1),
                            filled: true,
                            prefixIcon: const Icon(Icons.person),
                            labelText: 'Your name',
                          ),
                          controller: name,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 350,
                        child: TextFormField(
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: "UserEmail",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none),
                            fillColor: const Color.fromARGB(255, 218, 199, 221)
                                .withOpacity(0.1),
                            filled: true,
                            prefixIcon: const Icon(Icons.email),
                            labelText: 'Your E-Mail',
                          ),
                          controller: email,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 350,
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none),
                            fillColor: const Color.fromARGB(255, 218, 199, 221)
                                .withOpacity(0.1),
                            filled: true,
                            prefixIcon: const Icon(Icons.key),
                            labelText: 'Create your Password',
                          ),
                          controller: password,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 350,
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none),
                            fillColor: const Color.fromARGB(255, 218, 199, 221)
                                .withOpacity(0.1),
                            filled: true,
                            prefixIcon: const Icon(Icons.password),
                            labelText: 'Re-Type your Password',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 350,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            signup();
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            backgroundColor:
                                const Color.fromARGB(255, 215, 177, 222),
                          ),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginApp(),
                            ),
                          );
                        },
                        child: const Text(
                          "Have a member ?",
                          style: TextStyle(color: Colors.purple),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
