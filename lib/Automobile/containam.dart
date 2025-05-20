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
import 'am10.dart';
import 'a11.dart';
//import 'am12.dart';
import 'amtc.dart';
import 'am14.dart';
import '../Service/cloud6.dart';
import '../Screen/screen.dart'; // Import GenericScreen from Screen folder

class ContainAM extends StatelessWidget {
  const ContainAM({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericScreen(
      title: 'Automotive Services', // Set the title for the AppBar
      maxWidth: 600.0, // Match ContainAM's maxWidth
      contentSections: const [
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
    );
  }
}
