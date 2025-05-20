import 'package:flutter/material.dart';
import 'header.dart';
import 'slider_drawer.dart';
import 'home1.dart';
import 'home2.dart';
import 'home3.dart';
import 'home4.dart';
import 'home5.dart';
import 'home6.dart';
import 'home7.dart';
import 'home8.dart';
import 'home9.dart';
import 'home10.dart';
import 'home11.dart';
import 'footer.dart';

class ContainMain extends StatelessWidget {
  const ContainMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      endDrawer: const CustomDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Demo1(),
              ServiceCardsSection(),
              Home3(),
              Home4(),
              Home5(),
              Home6(),
              Home7(),
              Home8(),
              Home9(),
              Home10(),
              Home11(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}