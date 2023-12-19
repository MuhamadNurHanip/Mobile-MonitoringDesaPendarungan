import 'package:flutter/material.dart';
import 'package:monitoringdesa_app/Widgets/AppHeader.dart';

class sumberdana extends StatefulWidget {
  const sumberdana({Key? key}) : super(key: key);

  @override
  State<sumberdana> createState() => _sumberdana();
}

class _sumberdana extends State<sumberdana> {
  // int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(),
            child:
                tittle(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20,),
            child: Text(
              'selamat pagi, @admin!',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 16),
            child: Text(
              '| Master Data Pendanaan Desa',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          
        ],
      ),
    );
  }

}