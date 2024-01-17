import 'package:flutter/material.dart';

import '../../constants/connstants.dart';

class Result extends StatelessWidget {
  final int countOfTrue;
  final int countOfFalse;
  final Function() restart;
  const Result({super.key, required this.countOfTrue, required this.countOfFalse, required this.restart});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Savollar Tugadi!", style: TextStyle(fontSize: 20),),
          Text("To'g'ri: $countOfTrue", style: const TextStyle(fontSize: 20),),
          Text("Nato'g'ri: $countOfFalse", style: const TextStyle(fontSize: 20),),
          const SizedBox(height: 20),
          ElevatedButton.icon(onPressed: restart, icon: const Icon(Icons.restart_alt, color: Colors.white,),
            label: const Text("RESTART", style: textStyle,), style: style,),
        ],
      ),
    );
  }
}
