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
import 'ed10.dart';
import 'ed11.dart';
//import 'ed12.dart';
import 'ed13.dart';
import 'ed14.dart';
import '../Service/cloud6.dart';
import '../Screen/screen.dart'; // Import GenericScreen from Screen folder

class ContainED extends StatelessWidget {
  const ContainED({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericScreen(
      title: 'Edu-Tech Services', // Set the title for the AppBar
      maxWidth: 600.0, // Match ContainED's maxWidth
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
