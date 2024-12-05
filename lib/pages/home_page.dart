import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mydemo4/pages/detail_page.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = 'Button one';

  Future _openDetail() async {
    Map result = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return const DetailPage(name: 'Flutter', age: 22);
    }));
    if (result.containsKey('data')) {
      setState(() {
        data = result['data'];
      });
    } else {
      debugPrint('Data kelmadi !!!!!!!!!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoButton(
          onPressed: () {
            _openDetail();
          },
          color: Colors.purpleAccent,
          child: Text(data),
        ),
      ),
    );
  }
}
