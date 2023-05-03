import 'package:flutter/material.dart';

import 'package:state_tutorial/screens/screen2.dart';
import 'package:state_tutorial/widgets/counter.dart';

int counter = 0;

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Screen2(
              onPressed: () => setState(() {}),
            );
          }));
        },
        child: const Icon(Icons.navigate_next),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Counter(
                onPressed: () => setState(() {}),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
