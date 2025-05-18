import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:p6siakad/page/absensipage/absensihomepage.dart';
import 'package:p6siakad/page/homepage.dart';
import 'package:p6siakad/page/jadwalpage/jadwalhomepage.dart';
import 'package:p6siakad/page/krspage/krshomepage.dart';
import 'package:p6siakad/page/pembayaranpage/pembayaranhomepage.dart';
import 'package:p6siakad/page/pencapaiankuliahpage/pencapainkuliahhomepage.dart';
import 'package:p6siakad/page/pengumumanpage/pengumumanhomepage.dart';
import 'package:p6siakad/page/profil/profilhomepage.dart';
import 'package:p6siakad/page/sertifikasipage/sertifikasihomepage.dart';
import 'package:p6siakad/page/wisudapage/wisudahomepage.dart';
import 'page/nilaipage/nilaihomepage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(onGenerateRoute: (seting) {
      return MaterialPageRoute(
          settings: seting,
          builder: (context) {
            if (seting.name == 'nilai')
              return NilaiPage();
            else if (seting.name == 'absensi')
              return AbsensiPage();
            else if (seting.name == 'jadwal')
              return JadwalPage();
            else if (seting.name == 'pembayaran')
              return PembayaranPage();
            else if (seting.name == 'pencapainkuliah')
              return PencapainKuliahPage();
            else if (seting.name == 'pengumuman')
              return PengumumanPage();
            else if (seting.name == 'sertifikasi')
              return SertifikasiPage();
            else if (seting.name == 'wisuda')
              return WisudaPage();
            else if (seting.name == 'profil')
              return ProfilPage();
            else if (seting.name == 'krs')
              return KrsPage();
            else
              return HomePage();
          });
    });
  }
}
