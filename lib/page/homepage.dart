import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  get theme => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 100,
            decoration: const BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50)),
                boxShadow: [
                  BoxShadow(color: Colors.grey, offset: Offset(1, 1))
                ]),
            child: const Column(
              children: [
                SizedBox(height: 10),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 50),
                  title: Text(
                    'Idris Maulana',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    's1 informatika',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/image/akun.jpeg'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(25),
            height: 90,
            width: 100,
            decoration: const BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(color: Colors.grey, offset: Offset(2, 3))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('IPK : 3.80',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white)),
                Container(
                  height: 80,
                  width: 5,
                  color: Colors.grey,
                ),
                const Text('SKS : 49',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white)),
              ],
            ),
          ),
          SizedBox(
            height: 500,
            child: GridView.count(
              padding: const EdgeInsets.all(1),
              crossAxisCount: 3,
              children: [
                InkWell(
                  onTap: () => Navigator.pushNamed(context, 'nilai'),
                  child: const MenuHomePage(
                    namaicon: "Nilai",
                    warnaicon: Color.fromARGB(255, 247, 193, 231),
                    iconsaya: Icon(
                      Icons.auto_stories,
                      color: Colors.pink,
                      size: 70,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, 'absensi'),
                  child: const MenuHomePage(
                    namaicon: "Absensi",
                    warnaicon: Color.fromARGB(255, 247, 193, 193),
                    iconsaya: Icon(
                      Icons.checklist,
                      color: Colors.red,
                      size: 70,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, 'krs'),
                  child: const MenuHomePage(
                    namaicon: "KRS",
                    warnaicon: Color.fromARGB(255, 193, 247, 196),
                    iconsaya: Icon(
                      Icons.list_rounded,
                      color: Colors.green,
                      size: 70,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, 'jadwal'),
                  child: const MenuHomePage(
                    namaicon: "Jadwal",
                    warnaicon: Color.fromARGB(255, 238, 193, 247),
                    iconsaya: Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.purple,
                      size: 70,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, 'wisuda'),
                  child: const MenuHomePage(
                    namaicon: "Wisuda",
                    warnaicon: Color.fromARGB(255, 193, 222, 247),
                    iconsaya: Icon(
                      Icons.school,
                      color: Colors.indigo,
                      size: 70,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, 'pengumuman'),
                  child: const MenuHomePage(
                    namaicon: "Pengumuman",
                    warnaicon: Color.fromARGB(255, 243, 247, 193),
                    iconsaya: Icon(
                      Icons.announcement,
                      color: Colors.orange,
                      size: 70,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, 'pembayaran'),
                  child: const MenuHomePage(
                    namaicon: "Pembayaran",
                    warnaicon: Color.fromARGB(255, 211, 247, 193),
                    iconsaya: Icon(
                      Icons.payments,
                      color: Colors.green,
                      size: 70,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, 'pencapainkuliah'),
                  child: const MenuHomePage(
                    namaicon: "Pencapain Kuliah",
                    warnaicon: Color.fromARGB(255, 200, 193, 247),
                    iconsaya: Icon(
                      Icons.bar_chart,
                      color: Colors.yellow,
                      size: 70,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, 'sertifikasi'),
                  child: const MenuHomePage(
                    namaicon: "Sertifikasi",
                    warnaicon: Color.fromARGB(255, 247, 209, 193),
                    iconsaya: Icon(
                      Icons.menu_book,
                      color: Colors.brown,
                      size: 70,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.indigo,
          iconSize: 35,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  color: Colors.white,
                ),
                label: 'beranda'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notification_add_sharp,
                  color: Colors.white,
                ),
                label: 'Notifikasi'),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                label: 'Profil'),
          ]),
    );
  }
}

class MenuHomePage extends StatelessWidget {
  const MenuHomePage({
    required this.namaicon,
    required this.warnaicon,
    required this.iconsaya,
    super.key,
  });

  final String namaicon;
  final Color warnaicon;
  final Icon iconsaya;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: warnaicon,
              boxShadow: const [
                BoxShadow(color: Colors.grey, offset: Offset(3, 3))
              ]),
          child: iconsaya,
        ),
        Text(namaicon)
      ],
    );
  }
}
