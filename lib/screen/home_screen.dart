import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../component/Shoes.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

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
        title: const Text('ร้านค้า'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeInUp(
                          duration: const Duration(milliseconds: 1000),
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                              child: Text(
                                "All",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          )),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeInUp(
                          duration: const Duration(milliseconds: 1100),
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: const Center(
                              child: Text(
                                "Sedan",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                          )),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeInUp(
                          duration: const Duration(milliseconds: 1200),
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: const Center(
                              child: Text(
                                "Hatchback",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          )),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeInUp(
                          duration: const Duration(milliseconds: 1300),
                          child: Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: const Center(
                              child: Text(
                                "Station Wagon",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          )),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: FadeInUp(
                          duration: const Duration(milliseconds: 1400),
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: const Center(
                              child: Text(
                                "Coupe",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              FadeInUp(
                duration: const Duration(milliseconds: 1500),
                child: makeItem(
                    image: 'assets/images/one.jpg',
                    tag: 'red',
                    context: context),
              ),
              FadeInUp(
                duration: const Duration(milliseconds: 1600),
                child: makeItem(
                    image: 'assets/images/two.jpg',
                    tag: 'blue',
                    context: context),
              ),
              FadeInUp(
                duration: const Duration(milliseconds: 1700),
                child: makeItem(
                    image: 'assets/images/three.jpg',
                    tag: 'white',
                    context: context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({image, tag, context}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Shoes(
                        image: image,
                        tag: tag,
                      )));
        },
        child: Container(
          height: 250,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 10,
                    offset: const Offset(0, 10))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeInUp(
                          duration: const Duration(milliseconds: 1000),
                          child: const Text(
                            "Sneakers",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FadeInUp(
                          duration: const Duration(milliseconds: 1100),
                          child: const Text(
                            "Nike",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1200),
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: const Center(
                        child: Icon(
                          Icons.favorite_border,
                          size: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              FadeInUp(
                duration: const Duration(milliseconds: 1200),
                child: const Text(
                  "100\$",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
