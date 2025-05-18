import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:p6siakad/page/nilaipage/khs/model/khs.dart';

class KhsPage extends StatefulWidget {
  const KhsPage({super.key});

  @override
  State<KhsPage> createState() => _KhsPageState();
}

class _KhsPageState extends State<KhsPage> {
  var dio = Dio();

  late Khs khs;
  bool isloading = true;

  void getData() async {
    var res = await dio.get('https://idris.zaka.my.id/siakad/me/khs');

    setState(() {
      khs = Khs.fromJson(res.data);
      isloading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isloading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                Container(
                  color: const Color.fromARGB(8, 255, 255, 255),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(22),
                        height: 80,
                        width: 400,
                        decoration: const BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey, offset: Offset(5, 5)),
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('IP Semester : ${khs.ips}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white)),
                            Container(
                              height: 70,
                              width: 7,
                              color: const Color.fromARGB(255, 151, 148, 148),
                            ),
                            Text('SKS : ${khs.sks}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white)),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 5),
                        child: const Row(
                          children: [
                            Text(
                              'Mata Kuliah',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text(
                              'Nilai',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 550,
                        child: ListView.builder(
                          itemCount: khs.matakuliahs.length,
                          itemBuilder: (context, index) => ViewNilaiTranskip(
                            jumlahnilai: khs.matakuliahs[index].nilaiRataRata,
                            kodematkul: "Reguler C",
                            namamatkul: khs.matakuliahs[index].matakuliah,
                            nilai: khs.matakuliahs[index].nilaiHuruf,
                            sks: khs.matakuliahs[index].sks + ' sks',
                            warna: Colors.green,
                          ),
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

class ViewNilaiTranskip extends StatelessWidget {
  const ViewNilaiTranskip({
    required this.namamatkul,
    required this.kodematkul,
    required this.sks,
    required this.warna,
    required this.nilai,
    required this.jumlahnilai,
    super.key,
  });

  final String namamatkul;
  final String kodematkul;
  final String sks;
  final String nilai;
  final String jumlahnilai;
  final Color warna;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5, right: 5, left: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
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
                    color: Colors.green),
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
                sks,
                style: const TextStyle(fontSize: 12),
              ),
              const Spacer(),
              const Text('|',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blueGrey)),
              const SizedBox(width: 5),
              CircleAvatar(
                radius: 12,
                backgroundColor: warna,
                child: Text(nilai),
              ),
              const SizedBox(width: 6),
              Text(jumlahnilai)
            ],
          )
        ],
      ),
    );
  }
}
