import 'package:flutter/material.dart';
import 'package:quantum/homepage.dart';
import 'package:quantum/login.dart';
import 'package:quantum/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  int? tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Builder(builder: (BuildContext context) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              backgroundColor: Colors.red,
              title: Row(
                children: const [
                  Text(
                    'Social',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'X',
                    style: TextStyle(fontSize: 36),
                  )
                ],
              ),
            ),
            body: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.grey),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.red, width: 1.5),
                        borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(25))),
                    child: TabBar(
                        //controller: _tabController,
                        indicatorColor: Colors.blue,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.grey,
                        onTap: (val) {
                          setState(() {
                            tabIndex = DefaultTabController.of(context)?.index;
                          });
                          print(
                              'current Index : ${DefaultTabController.of(context)?.index}');
                        },
                        indicator: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(23)),
                        ),
                        tabs: // _myTabs,
                            const [
                          Tab(
                            text: 'LOGIN',
                          ),
                          Tab(
                            text: 'SIGN UP',
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 475,
                    child: const TabBarView(
                        // controller: _tabController,
                        children: <Widget>[
                          Login(),
                          SignUp(),
                        ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (tabIndex == 0)
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(30)),
                          ),
                          child: const Center(
                              child: Text('LOGIN',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white))),
                        ),
                      ),
                    ),
                  if (tabIndex == 1)
                    Expanded(
                      child: InkWell(
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(30)),
                          ),
                          child: const Center(
                            child: Text('REGISTER',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white)),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        }));
  }
}
