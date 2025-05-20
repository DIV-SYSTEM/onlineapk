import 'package:flutter/material.dart';
import 'gd1.dart';
import 'gd2.dart';
import 'gd3.dart';
import 'gd4.dart';
import 'gd5.dart';
import 'gd6.dart';
import 'gd7.dart';
import 'gd8.dart';
import 'gd9.dart';
import "gd10.dart";
import "gd11.dart";
import "gd12.dart";
import "gd13.dart";
import "gd14.dart";
class ContainGD extends StatelessWidget {
  const ContainGD({super.key});

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

                AmTcSection(),
                Cloud4(),
                Cloud5(),
                ContactInfoSection(),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
