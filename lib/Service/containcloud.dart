import 'package:flutter/material.dart';
import 'cloud1.dart';
import 'cloud2.dart';
import 'cloud3.dart';
import 'cloud4.dart';
import 'cloud5.dart';
import 'cloud6.dart';
import 'cloud7.dart';
class ContainCloud extends StatelessWidget {
  const ContainCloud({super.key});

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
                Cloud1(),
                SizedBox(height: 24),
                Web2(),
                SizedBox(height: 24),
                Cloud3(),
                SizedBox(height: 24),
                Cloud4(),
                SizedBox(height: 24),
                Cloud5(),
                SizedBox(height: 24),
                Cloud6(),
                SizedBox(height: 24),
                ContactForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}