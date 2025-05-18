import 'package:flutter/material.dart';

class PembayaranPage extends StatelessWidget {
  const PembayaranPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pembayaran'),
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
                  Text(
                      'Tagihan Biaya Kuliah dapat dibayarkan melalui, klik untuk melihat cara bayar'),
                  Text('Teller'),
                  Text(
                      '1. Konfirmasi pembayaran atas nama Mahasiswa Universitas Ahmad Dahlan (UAD) ke security, petugas, atau teller'),
                  Text(
                      '2. Isikan formulir pembayaran dengan NAMA, NIM, PRODI, No. HP yang bisa dihubungi'),
                  Text(
                      '3. Isikan Jenis pembayaran yang akan dilakukan Daftar PMB, registrasi MABA, uang kuliah, ujian ulang, TBQ. KKN,'),
                  Text('4. Tuliskan nominal sesuai tagihan'),
                  Text('5. Setor ke teller untuk proses pembayaran'),
                  Text(
                      '6. Cek apakah sudah sesuai dengan pembayaran dan tagihan yang diinginkan'),
                  Text('7. Simpan slip pembayaran'),
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
