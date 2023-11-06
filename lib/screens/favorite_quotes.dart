// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quotes_model/utils/global.dart';

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
            alignment: Alignment.center,
            child: Column(
              children: Global.favoriteQuotes.map((e) {
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color(0xffeeaed7),
                    border: Border(
                      left: BorderSide(
                        width: 10,
                        color: Color(0xff00987c),
                      ),
                      right: BorderSide(
                        width: 10,
                        color: Color(0xff0a7db0),
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        color: const Color(0xff000000),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${e.id}',
                              style: const TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          e.quote,
                          style: const TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF021F3F),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          "- ${e.author}",
                          style: const TextStyle(
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
