import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.white10),
        child: ListView.separated(
            itemCount: 100,
            // itemExtent: 50.0,
            itemBuilder: (BuildContext context, int index) {
              return Wrap(
                direction: Axis.horizontal,
                spacing: 16,
                children: [
                  HomeCell(index: index)
                ],
              );
            }, separatorBuilder: (BuildContext context, int index) {
              return Text('xxx');
        },),
      ),
    );
  }
}

class HomeCell extends StatelessWidget {
  const HomeCell({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: const BoxDecoration(color: Colors.orange),
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          '$index',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
