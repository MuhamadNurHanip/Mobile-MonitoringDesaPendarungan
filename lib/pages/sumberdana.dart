import 'package:flutter/material.dart';
import 'package:monitoringdesa_app/Widgets/AppHeader.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class sumberdana extends StatefulWidget {
  const sumberdana({Key? key}) : super(key: key);

  @override
  State<sumberdana> createState() => _sumberdana();
}

class _sumberdana extends State<sumberdana> {
  List<Map<String, dynamic>> _data = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http
        .get(Uri.parse('https://kegiatanpendarungan.id/api/v1/funds'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      setState(() {
        _data = List<Map<String, dynamic>>.from(data['data']);
        _data.sort((a, b) => a['id'].compareTo(b['id']));
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 12,
            ),
            child: tittle(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 15,
              // bottom:
            ),
            child: Text(
              'Selamat pagi, @kepaladesa!',
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 28, right: 0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        for (var item in _data)
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30, right: 30, bottom: 30),
                                  child: Container(
                                    height: 150,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white10),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 8,
                                          offset: Offset(0, 5),
                                          spreadRadius: 0,
                                        ),
                                      ],
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Sumber Dana',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 23,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '${item['id']}.',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                '${item['nama']}',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
