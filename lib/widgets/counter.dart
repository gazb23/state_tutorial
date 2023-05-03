import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/counter_model.dart';
import '../screens/home.dart';

class Counter extends StatefulWidget {
  final VoidCallback? onPressed;
  const Counter({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterModel>(context, listen: true);
    return Material(
      color: Colors.grey[100],
      elevation: 2,
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            const Text(
              'COUNT:',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              counterProvider.counter.toString(),
              style: const TextStyle(fontSize: 60.0),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilledButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                      counterProvider.counter++;
                    });
                    widget.onPressed!();
                  },
                  child: const Icon(
                    Icons.add,
                  ),
                ),
                FilledButton(
                  onPressed: () {
                    setState(() {
                      counterProvider.counter--;
                      counter--;
                    });
                    widget.onPressed!();
                  },
                  child: const Icon(
                    Icons.remove,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
