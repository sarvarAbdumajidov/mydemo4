import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class DetailPage extends StatefulWidget {
  final String name;
  final int age;
  static const String id = 'detail_page';

  const DetailPage({super.key, required this.name, required this.age});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('name: ${widget.name}, age: ${widget.age}'),
          const SizedBox(height: 40),
          CupertinoButton(
              color: Colors.red,
              onPressed: () {
                Navigator.of(context).pop({'data': 'okay'});
              },
              child: const Text('back'))
        ],
      )),
    );
  }
}
