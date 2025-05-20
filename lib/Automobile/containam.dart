import 'package:flutter/material.dart';
import 'am1.dart';
import 'am2.dart';
import 'am3.dart';
import 'am4.dart';
import 'am5.dart';
import 'am6.dart';
import 'am7.dart';
import 'am8.dart';
import 'am9.dart';
import "am10.dart";
import "a11.dart";
//import "am12.dart";
import "amtc.dart";
import "am14.dart";

import 'package:flutter_app/Service/cloud6.dart';

class ContainAM extends StatelessWidget {
  const ContainAM({super.key});

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
                ContactForm(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}