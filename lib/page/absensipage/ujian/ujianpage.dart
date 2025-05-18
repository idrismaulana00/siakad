import 'package:flutter/material.dart';

class UjianPage extends StatelessWidget {
  const UjianPage({super.key});

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
                        'Kehadiran UTS',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        'Kehadiran UAS',
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
                        uts: '0 / 1',
                        uas: '1 / 1',
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
    required this.uts,
    required this.uas,
    required this.namamatkul,
    required this.kodematkul,
    required this.kelas,
    super.key,
  });

  final String namamatkul;
  final String kodematkul;
  final String kelas;
  final String uts;
  final String uas;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2, right: 10, left: 10, top: 5),
      padding: const EdgeInsets.all(5),
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
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 13)),
            ],
          ),
          Row(
            children: [
              Text(
                kodematkul,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black87),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text('|',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blueGrey)),
              const SizedBox(
                width: 5,
              ),
              Text(
                kelas,
                style: TextStyle(fontSize: 12),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 207, 234, 248)),
                padding: EdgeInsets.all(7),
                child: Text(
                  uts,
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 207, 234, 248)),
                padding: EdgeInsets.all(7),
                child: Text(
                  uas,
                  style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
