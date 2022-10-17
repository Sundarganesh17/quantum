import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children:[ Container(
          margin: EdgeInsets.all(25),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1,
                    spreadRadius: 2,
                    offset: Offset(1.5, 1.5))
              ]),
          child:Card(
            elevation:0 ,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 110,
                    width: 250,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text.rich(TextSpan(
                              text: ' 2hours ago',
                              style: TextStyle(color: Colors.grey, fontSize: 10),
                              children: [
                                TextSpan(
                                    text: 'BBC News',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12))
                              ])),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                'Signin into your Account nahtev fgiuadgfkjadbf',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: 30,width: double.infinity,
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'Signin into your Account ',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.lightBlue,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 80,width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 41, 66, 204)),
                  ),
                )
              ],
            ),
          ),
        ),]
      ),
    );
  }
}
