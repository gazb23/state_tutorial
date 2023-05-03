// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:state_tutorial/widgets/counter.dart';

class Screen2 extends StatefulWidget {
  final VoidCallback? onPressed;
  const Screen2({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Counter(
                onPressed: () => setState(() {
                  widget.onPressed!();
                }),
              )
            ],
          ),
        ],
      ),
    );
  }
}
