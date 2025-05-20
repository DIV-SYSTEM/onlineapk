import 'package:flutter/material.dart';
import "hc1.dart";
import "hc2.dart";
import "hc3.dart";
import "hc4.dart";
import "hc5.dart";
import "hc6.dart";
import "hc7.dart";
import "hc8.dart";
import "hc9.dart";
import "hc10.dart";
import "hc11.dart";
//import "hc12.dart";
import "hc13.dart";
import "hc14.dart";
import '../Service/cloud6.dart';
import '../Screen/screen.dart'; // Import GenericScreen from Screen folder

class ContainHC extends StatelessWidget {
  const ContainHC({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericScreen(
      title: 'Healthcare Services', // Set the title for the AppBar
      maxWidth: 600.0, // Match ContainHC's maxWidth
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
        Cloud4(),
        Cloud5(),
        Cloud6(),
        AmTcSection(),
        ContactForm(),
      ],
    );
  }
}
