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
import 'gd10.dart';
import 'gd11.dart';
import 'gd12.dart';
import 'gd13.dart';
import 'gd14.dart';
import '../Screen/screen.dart'; // Import GenericScreen from Screen folder

class ContainGD extends StatelessWidget {
  const ContainGD({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericScreen(
      title: 'Government and Defense Services', // Set the title for the AppBar
      maxWidth: 600.0, // Match ContainGD's maxWidth
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
        ContactInfoSection(),
        ContactForm(),
      ],
    );
  }
}
