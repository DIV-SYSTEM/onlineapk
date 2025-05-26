
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Contact/containmain.dart';
import 'Service/containcloud.dart';
import 'Web_Service/containweb.dart';
import 'AI_Service/containai.dart';
import 'DM_Service/containdm.dart';
import 'Automobile/containam.dart';
import 'Healthcare/containhc.dart';
import 'Education/contained.dart';
import 'Ecom/containec.dart';
import 'Fin_Bank/containfb.dart';
import 'Govt_Defense/containgd.dart';
import 'Telecomm/containtl.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final drawerWidth = screenWidth * 0.75;

    return Drawer(
      width: drawerWidth,
      backgroundColor: Colors.transparent,
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  color: const Color(0xFF0D2239),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'OneAim',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.white),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      ExpansionTile(
                        title: const Text('Services'),
                        children: [
                          _drawerTile(context, 'Cloud Services', const ContainCloud()),
                          _drawerTile(context, 'Web Development', const ContainWeb()),
                          _drawerTile(context, 'AI & ML Solutions', const ContainAI()),
                          _drawerTile(context, 'Digital Marketing', const ContainDM()),
                        ],
                      ),
                      ExpansionTile(
                        title: const Text('Industries'),
                        children: [
                          _drawerTile(context, 'Healthcare', const ContainHC()),
                          _drawerTile(context, 'Automobile', const ContainAM()),
                          _drawerTile(context, 'Telecommunication', const ContainTL()),
                          _drawerTile(context, 'E-Commerce', const ContainEC()),
                          _drawerTile(context, 'Education', const ContainED()),
                          _drawerTile(context, 'Finance and Banking', const ContainFB()),
                          _drawerTile(context, 'Government and Defense', const ContainGD()),
                        ],
                      ),
                      const ExpansionTile(
                        title: Text('Projects'),
                        children: [],
                      ),
                      const ExpansionTile(
                        title: Text('Payment'),
                        children: [],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.auto_awesome),
                        label: const Text("Let's Talk AI"),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          side: const BorderSide(color: Colors.black),
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => const ContainMain()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        child: const Text(
                          'Contact Us',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _drawerTile(BuildContext context, String title, Widget page) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).pop();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => page),
        );
      },
    );
  }
}
