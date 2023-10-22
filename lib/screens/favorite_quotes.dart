// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../utils/global.dart';

class Favorite_Quotes extends StatefulWidget {
  const Favorite_Quotes({super.key});

  @override
  State<Favorite_Quotes> createState() => _Favorite_QuotesState();
}

class _Favorite_QuotesState extends State<Favorite_Quotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff003b54),
        title: const Text(
          "Favorite Quotas",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 35,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.all(20),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color(0xffeeaed7),
              border: Border(
                left: BorderSide(
                  width: 10,
                  color: Color(0xff0a7db0),
                ),
                right: BorderSide(
                  width: 10,
                  color: Color(0xff00987c),
                ),
              ),
            ),
            child: Column(
              children: [
                Container(
                  color: const Color(0xffa11723),
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        '1',
                        style: const TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffffffff),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Where flowers bloom, so does hope.',
                    style: const TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffa11723),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  alignment: Alignment.bottomRight,
                  child: Row(
                    children: [
                      Text(
                        "- Unknown",
                        style: const TextStyle(
                          fontSize: 20,
                          decoration: TextDecoration.none,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
