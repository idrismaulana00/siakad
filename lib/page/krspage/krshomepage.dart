import 'package:flutter/material.dart';

class KrsPage extends StatelessWidget {
  const KrsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('KRS'),
          centerTitle: true,
          backgroundColor: Colors.indigo),
      body: Container(
        color: const Color.fromARGB(0, 248, 238, 238),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Color.fromARGB(70, 225, 23, 9),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: const Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              height: 200,
              width: 500,
              child: Column(
                children: [
                  Text('Keterangan:'),
                  SizedBox(height: 10),
                  Text(
                      'Fasilitas KRS Online ini hanya dapat digunakan pada saat masa KRS atau masa revisi KRS. Mahasiswa dapat memilih matakuliah yang ingin diambil bersesuaian dengan jatah sks yang dimiliki dan matakuliah yang ditawarkan.'),
                  SizedBox(height: 10),
                  Text('Maximum SKS : 24')
                ],
              ),
            ),
            SizedBox(
              height: 560,
              child: ListView.builder(
                itemBuilder: (context, index) => TampilanKrs(
                  namamatkul: 'Flutter & Dart',
                  sks: '2 SKS',
                  kelas: 'Kelas B',
                  namadosen: 'Idris Maulana, S.Kom.',
                  waktu: 'Rabu 07.00 - 09.00',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TampilanKrs extends StatelessWidget {
  const TampilanKrs({
    required this.kelas,
    required this.namadosen,
    required this.namamatkul,
    required this.sks,
    required this.waktu,
    super.key,
  });

  final String namamatkul;
  final String namadosen;
  final String sks;
  final String kelas;
  final String waktu;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 500,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(0, 0), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: Colors.white),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                namamatkul,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 15),
              Text(
                sks,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                kelas,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(namadosen),
              Spacer(),
              Text(waktu),
            ],
          )
        ],
      ),
    );
  }
}
