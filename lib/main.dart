import 'package:flutter/material.dart';
import 'package:shopping_design/pages/tabs.page.dart';
import 'package:shopping_design/themes/dark.theme.dart';
import 'package:shopping_design/themes/light.theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: darkTheme(),
      home: DefaultTabController(
        length: 3,
        child: TabsPage(),
      ),
    );
  }
}
