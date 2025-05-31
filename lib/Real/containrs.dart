import 'package:flutter/material.dart';
import 'rs4.dart';
import 'rs10.dart';
import 'rs1.dart';
import 'rs13.dart';
import 'rs14.dart';
import 'rs2.dart';
import 'rs3.dart';
import 'rs6.dart';
import 'rs7.dart';
import 'rs8.dart';
import 'rs11.dart';
import 'rs12.dart';

import '../Screen/screen.dart'; // Import GenericScreen from Screen folder

class ContainRS extends StatelessWidget {
  const ContainRS({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericScreen(
      title: 'Real Estate Services', // Set the title for the AppBar
      maxWidth: 600.0, // Match ContainEC's maxWidth
      contentSections: const [
        AM1(),
        AM2Section(),
        AM3(),
        Am4(),
        Am6(),
        Am7(),
        AM8(),
        RealEstate4(),
        AmTcSection(),
        Cloud5(),
        
        ContactInfoSection(),
        ContactForm(),

      ],
    );
  }
}
