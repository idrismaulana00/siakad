import 'package:flutter/material.dart';
import 'package:p6siakad/page/absensipage/ujian/ujianpage.dart';
import './perkuliahan/perkuliahanpage.dart';

class AbsensiPage extends StatelessWidget {
  const AbsensiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(
                child: Text(
                  'Perkuliahan',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  'Ujian',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ]),
            title: const Text('Presensi'),
            centerTitle: true,
            backgroundColor: Colors.indigo,
          ),
          body: TabBarView(children: [
            PerkuliahanPage(),
            UjianPage(),
          ]),
        ));
  }
}
