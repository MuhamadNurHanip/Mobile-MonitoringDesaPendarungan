import 'package:flutter/material.dart';
import 'package:monitoringdesa_app/Widgets/AppHeader.dart';

class Proker extends StatefulWidget {
  Proker({Key? key}) : super(key: key);

  @override
  State<Proker> createState() => _ProkerState();
}

class _ProkerState extends State<Proker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(),
              child: tittle(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Text(
                'Selamat pagi, @admin!',
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
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: [
                    DataColumn(
                      label: Text(  
                        'No',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Nama',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Tanggal Kegiatan',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Sumber Dana',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Aksi',
                        style: TextStyle(fontWeight: FontWeight.bold),
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
                          child: Text('Hanif'),
                        )),
                        DataCell(Container(
                          width: 150,
                          child: Text('2023-12-11'),
                        )),
                        DataCell(Container(
                          width: 100,
                          child: Text('Dana APBN'),
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
                          child: Text('3'),
                        )),
                        DataCell(Container(
                          width: 100,
                          child: Text('Pemberdayaan Perempuan'),
                        )),
                        DataCell(Container(
                          width: 150,
                          child: Text('2023-12-10'),
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
                    DataRow(
                      cells: [
                        DataCell(Container(
                          width: 50,
                          child: Text('4'),
                        )),
                        DataCell(Container(
                          width: 100,
                          child: Text('Desa Pintar'),
                        )),
                        DataCell(Container(
                          width: 150,
                          child: Text('2023-12-09'),
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
                    DataRow(
                      cells: [
                        DataCell(Container(
                          width: 50,
                          child: Text('5'),
                        )),
                        DataCell(Container(
                          width: 100,
                          child: Text('Pencegahan Stunting'),
                        )),
                        DataCell(Container(
                          width: 150,
                          child: Text('2023-12-08'),
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
                    DataRow(
                      cells: [
                        DataCell(Container(
                          width: 50,
                          child: Text('6'),
                        )),
                        DataCell(Container(
                          width: 100,
                          child: Text('Smart Kampung'),
                        )),
                        DataCell(Container(
                          width: 150,
                          child: Text('2023-12-01'),
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
                    // Tambahkan baris data lain sesuai kebutuhan
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Proker(),
  ));
}
