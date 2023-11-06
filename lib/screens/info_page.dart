// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Info_Page extends StatefulWidget {
  const Info_Page({super.key});

  @override
  State<Info_Page> createState() => _Info_PageState();
}

class _Info_PageState extends State<Info_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info Pages'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(25),
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('quate_page');
                },
                child: Card(
                  elevation: 15,
                  child: Container(
                    alignment: const Alignment(0, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    child: const Text(
                      'Quote Page',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('festival');
                },
                child: Card(
                  elevation: 8,
                  child: Container(
                    alignment: const Alignment(0, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    child: const Text(
                      'Festival',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
