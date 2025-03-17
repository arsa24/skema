import 'package:flutter/material.dart';

class HomeGuru extends StatefulWidget {
  const HomeGuru({super.key});

  @override
  State<HomeGuru> createState() => _HomeGuruState();
}

class _HomeGuruState extends State<HomeGuru> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {});
        },
        child: Center(child: Text("Guru")),
      ),
    );
  }
}
