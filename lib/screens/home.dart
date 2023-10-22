import 'package:flutter/material.dart';
import 'package:quotes_model/utils/global.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffe70073),
        title: const Text(
          "Quotas",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 35,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('favorite_quotes');
            },
            icon: const Icon(Icons.book_outlined),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.theater_comedy_rounded,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: Global.quotes.map((e) {
              return (e.id % 2 == 0)
                  ? Container(
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
                                  '${e.id}',
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
                              e.quote,
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
                                  "- ${e.author}",
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
                    )
                  : Container(
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
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.all(10),
                            child: Row(
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
    );
  }
}
