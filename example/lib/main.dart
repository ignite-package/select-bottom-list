import 'package:flutter/material.dart';
import 'package:select_bottom_list/select_bottom_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Select Bottom List Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Select Bottom List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedId = '';
  String selectedTitle = '';

  final List<SelectItem> fruitData = const [
    SelectItem(id: '1', title: 'Bananas'),
    SelectItem(id: '2', title: 'Orange'),
    SelectItem(id: '3', title: 'Apple'),
    SelectItem(id: '4', title: 'Kiwi'),
    SelectItem(id: '5', title: 'Pear'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Select fruit",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 4),
            SelectBottomList(
              data: fruitData,
              selectedId: selectedId,
              selectedTitle: selectedTitle.isNotEmpty ? selectedTitle : 'Fruit',
              isDisable: false,
              onChange: (id, title) {
                setState(() {
                  selectedId = id;
                  selectedTitle = title;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
