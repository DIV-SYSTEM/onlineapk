import 'package:flutter/material.dart';
import 'ed1.dart';
import 'ed2.dart';
import 'ed3.dart';
import 'ed4.dart';
import 'ed5.dart';
import 'ed6.dart';
import 'ed7.dart';
import 'ed8.dart';
import 'ed9.dart';
import "ed10.dart";
import "ed11.dart";
import "ed12.dart";
import "ed13.dart";
import "ed14.dart";
class ContainED extends StatelessWidget {
  const ContainED({super.key});

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