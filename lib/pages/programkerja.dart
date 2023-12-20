import 'package:flutter/material.dart';
import 'package:monitoringdesa_app/Widgets/AppHeader.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Proker extends StatefulWidget {
  Proker({Key? key}) : super(key: key);

  @override
  State<Proker> createState() => _ProkerState();
}

class _ProkerState extends State<Proker> {
  String selectedYear = "2023";
  String searchText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(),
            child:
                tittle(), // Assuming tittle() is defined and returns the appropriate widget
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 20,
            ),
            child: Text(
              'selamat pagi, @admin!',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 16),
            child: Text(
              '| Program Kerja',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                alignment: Alignment.centerLeft,
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
                  padding: const EdgeInsets.only(left: 15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      'Tahun',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w200),
                                    ),
                                    SizedBox(
                                        width:
                                            10), // Add some space between text and dropdown
                                    // Dropdown button
                                    Container(
                                      // width: double.infinity,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(),
                                      ),
                                      child: DropdownButton<String>(
                                        dropdownColor: Colors.black,
                                        value: selectedYear,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selectedYear = newValue!;
                                          });
                                        },
                                        underline: Container(),
                                        icon: Image.asset(
                                          'lib/assets/images/down-arrow.png', // Gantilah dengan nama dan ekstensi gambar yang sesuai
                                          width: 30,
                                          height: 24,
                                          color: Colors.white,
                                        ),
                                        // alignment: Alignment.bottomCenter,
                                        items: <String>[
                                          '2023',
                                          '2022',
                                          '2021',
                                          '2020',
                                          '2019',
                                          '2018',
                                          '2017',
                                          '2016',
                                          '2015',
                                          '2014',
                                          '2013',
                                          '2012',
                                          '2011',
                                          '2010',
                                          /* Add more years as needed */
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(
                                              value,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: Row(
                                  children: [
                                    SizedBox(width: 10),
                                    Container(
                                      width: 260,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Colors.black),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SvgPicture.asset(
                                              'lib/assets/search.svg',
                                              width: 18,
                                              height: 18,
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: TextField(
                                                cursorWidth: 2,
                                                style: TextStyle(
                                                    color: Colors.black),
                                                decoration: InputDecoration(
                                                  hintText:
                                                      'Cari program kerja',
                                                  hintStyle: TextStyle(
                                                      color: Colors.grey),
                                                  border: InputBorder.none,
                                                ),
                                                onChanged: (value) {
                                                  setState(() {
                                                    searchText = value;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              DataTable(
                                columns: [
                                  DataColumn(
                                    label: Text(
                                      'No',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  DataColumn(
                                    label: Text(
                                      'Nama',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  DataColumn(
                                    label: Text(
                                      'Tanggal Kegiatan',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  DataColumn(
                                    label: Text(
                                      'Sumber Dana',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  DataColumn(
                                    label: Text(
                                      'Aksi',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                                rows: [
                                  DataRow(
                                    cells: [
                                      DataCell(Container(
                                        width: 50,
                                        child: Text('1'),
                                      )),
                                      DataCell(Container(
                                        width: 100,
                                        child: Text('John Doe'),
                                      )),
                                      DataCell(Container(
                                        width: 150,
                                        child: Text('2023-12-12'),
                                      )),
                                      DataCell(Container(
                                        width: 100,
                                        child: Text('Dana Umum'),
                                      )),
                                      DataCell(Container(
                                        width: 100,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Aksi yang dijalankan saat tombol di-klik
                                          },
                                          child: Text('Lihat'),
                                        ),
                                      )),
                                    ],
                                  ),
                                  DataRow(
                                    cells: [
                                      DataCell(Container(
                                        width: 50,
                                        child: Text('2'),
                                      )),
                                      DataCell(Container(
                                        width: 100,
                                        child: Text('PP'),
                                      )),
                                      DataCell(Container(
                                        width: 150,
                                        child: Text('2023-12-12'),
                                      )),
                                      DataCell(Container(
                                        width: 100,
                                        child: Text('APBN'),
                                      )),
                                      DataCell(Container(
                                        width: 100,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Aksi yang dijalankan saat tombol di-klik
                                          },
                                          child: Text('Lihat'),
                                        ),
                                      )),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Proker(),
  ));
}
