import 'package:flutter/material.dart';

class JadwalKuliah extends StatelessWidget {
  const JadwalKuliah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: const Color.fromARGB(0, 166, 163, 163),
          child: ListView.builder(
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              width: 460,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: const Color.fromARGB(255, 239, 232, 232),
                boxShadow: [
                  BoxShadow(
                    color: Colors.indigo,
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(10),
                    width: 450,
                    height: 40,
                    child: Row(
                      children: [
                        Text(
                          'Senin',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '30/4/2025',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.indigo),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    padding: EdgeInsets.all(12),
                    width: 450,
                    height: 70,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Kalkulus Informatika 2',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '0923',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('|'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Kelas A',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text(
                              '11.00 - 01.00',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    padding: EdgeInsets.all(12),
                    width: 450,
                    height: 70,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Matematika Informatika',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '0923',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('|'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Kelas A',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text(
                              '08.00 - 10.00',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
