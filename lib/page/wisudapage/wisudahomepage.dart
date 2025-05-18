import 'package:flutter/material.dart';

class WisudaPage extends StatelessWidget {
  const WisudaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisuda'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Center(child: Text('ini halaman wisuda')),
    );
  }
}
