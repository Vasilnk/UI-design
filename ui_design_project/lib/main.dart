import 'package:flutter/material.dart';
import 'package:ui_design_project/catalogue.dart';
import 'package:ui_design_project/dukan_premium.dart';
import 'package:ui_design_project/firstPage.dart';
import 'package:ui_design_project/ordes.dart';
import 'package:ui_design_project/payment.dart';
import 'package:ui_design_project/secondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Design',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          useMaterial3: true,
          appBarTheme: AppBarTheme(
            backgroundColor: const Color.fromARGB(255, 42, 89, 143),
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
            centerTitle: true,
          )),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<dynamic> screens = [
    FirstPage(),
    SecondPage(),
    CataloguePage(),
    OrderPage(),
    PaymentPage(),
    DukanPremium()
  ];
  List<String> names = [
    'Additional information',
    'Manage Store',
    'Catalogue',
    'Order Page',
    'Payment Page',
    'Dukan Page',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'main page',
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(names[index]),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => screens[index])),
          );
        },
        itemCount: 6,
        separatorBuilder: (context, index) => Divider(),
      ),
    );
  }
}
