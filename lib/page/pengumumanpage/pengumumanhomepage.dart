import 'package:flutter/material.dart';

class PengumumanPage extends StatelessWidget {
  const PengumumanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pengumuman'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        color: const Color.fromARGB(126, 237, 216, 216),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(13),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.indigo,
                        blurRadius: 3,
                        spreadRadius: 4,
                        offset: Offset(0, 0))
                  ]),
              width: 500,
              height: 730,
              child: Column(
                children: [
                  Text('PENGUMUMAN!!!'),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                      'Semua mahasiswa yang tidak bisa membayar uang kuliah di DO (DROPOUT)!'),
                ],
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
