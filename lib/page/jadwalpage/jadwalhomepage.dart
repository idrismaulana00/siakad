import 'package:flutter/material.dart';
import 'package:p6siakad/page/jadwalpage/jadwalkuliah/jadwalkuliah.dart';
import 'package:p6siakad/page/jadwalpage/jadwaluas/jadwaluas.dart';
import 'package:p6siakad/page/jadwalpage/jadwaluts/jadwaluts.dart';

class JadwalPage extends StatelessWidget {
  const JadwalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(
                child: Text(
                  'Kuliah',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  'UTS',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  'UAS',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ]),
            title: Text('Jadwal'),
            centerTitle: true,
            backgroundColor: Colors.indigo,
          ),
          body: TabBarView(children: [
            JadwalKuliah(),
            JadwalUts(),
            JadwalUas(),
          ]),
        ));
  }
}
