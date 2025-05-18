import 'package:flutter/material.dart';

class PerkuliahanPage extends StatelessWidget {
  const PerkuliahanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(8, 255, 255, 255),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, bottom: 10, top: 15),
                  child: const Row(
                    children: [
                      Text(
                        'Mata Kuliah',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        'Jumlah Kehadiran',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        'Persentase',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 650,
                  child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (context, index) => const TampilanPresensi(
                        jumlahabsensi: '14 / 14',
                        persen: '100%',
                        namamatkul: 'Kalkulus Informatika 2',
                        kodematkul: '098ASEE',
                        kelas: 'Kelas A'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TampilanPresensi extends StatelessWidget {
  const TampilanPresensi({
    required this.jumlahabsensi,
    required this.persen,
    required this.namamatkul,
    required this.kodematkul,
    required this.kelas,
    super.key,
  });

  final String namamatkul;
  final String kodematkul;
  final String kelas;
  final String jumlahabsensi;
  final String persen;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2, right: 10, left: 10, top: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      height: 75,
      // decoration: const BoxDecoration(
      //   boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(3, 3))]),
      child: Column(
        children: [
          Row(
            children: [
              Text(namamatkul,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
            ],
          ),
          Row(
            children: [
              Text(
                kodematkul,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black87),
              ),
              SizedBox(
                width: 5,
              ),
              Text('|',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blueGrey)),
              SizedBox(
                width: 5,
              ),
              Text(
                kelas,
                style: TextStyle(fontSize: 12),
              ),
              Spacer(),
              Text(
                jumlahabsensi,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text('|',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blueGrey)),
              SizedBox(width: 5),
              SizedBox(width: 6),
              Text(
                persen,
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}
