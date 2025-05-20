import 'package:flutter/material.dart';
import 'tl1.dart';
import 'tl2.dart';
import 'tl3.dart';
import 'tl4.dart';
import 'tl5.dart';
import 'tl6.dart';
import 'tl7.dart';
import 'tl8.dart';
import 'tl9.dart';
import "tl10.dart";
import "tl11.dart";
import "tl12.dart";
import "tl13.dart";
import "tl14.dart";
class ContainTL extends StatelessWidget {
  const ContainTL({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width < 700 ? double.infinity : 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AM1(),
                AM2Section(),
                AM3(),
                Am4(),
                AM5(),
                Am6(),
                Am7(),
                AM8(),
                AM9(),
                AmTcSection(),
                Cloud4(),
                Cloud5(),
                Cloud6(),
                Cloud7(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}