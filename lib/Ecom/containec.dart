import 'package:flutter/material.dart';
import 'ec1.dart';
import 'ec2.dart';
import 'ec3.dart';
import 'ec4.dart';
import 'ec5.dart';
import 'ec6.dart';
import 'ec7.dart';
import 'ec8.dart';
import 'ec9.dart';
import 'ec10.dart';
import 'ec11.dart';
import 'ec12.dart';
import 'ec13.dart';
import 'ec14.dart';
import '../Screen/screen.dart'; // Import GenericScreen from Screen folder

class ContainEC extends StatelessWidget {
  const ContainEC({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericScreen(
      title: 'E-Commerce Services', // Set the title for the AppBar
      maxWidth: 600.0, // Match ContainEC's maxWidth
      contentSections: const [
        AM1(),
        AM2Section(),
        AM3(),
        Am4(),
        AM5(),
        Am6(),
        Am7(),
        AM8(),
        //AM9(),
        AmTcSection(),
        ECommerce4(),
        Cloud5(),
        ContactInfoSection(),
        ContactForm(),
      ],
    );
  }
}
