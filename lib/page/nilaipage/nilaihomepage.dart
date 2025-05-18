import 'package:p6siakad/page/nilaipage/khs/khspage.dart';

import 'transkip/transkippage.dart';
import 'package:flutter/material.dart';

class NilaiPage extends StatelessWidget {
  const NilaiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(
                child: Text(
                  'KHS',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  'Aktifitas',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  'transkip',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ]),
            title: const Text(
              'Nilai',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.indigo,
          ),
          body: TabBarView(children: [
            const KhsPage(),
            Container(
              color: const Color.fromARGB(255, 134, 212, 250),
              child: const Center(child: Text('aktifitas masih kosong')),
            ),
            TranskipPage(),
          ]),
        ));
  }
}
