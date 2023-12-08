import 'package:flutter/material.dart';
import 'package:provvapp/prov.dart';
import 'package:provvapp/screens/loginScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<prov1>(
        create: (context) => prov1(),
        child: MaterialApp(
          home: const login(),
        ));
  }
}
