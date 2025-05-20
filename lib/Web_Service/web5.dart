import 'package:flutter/material.dart';

class Am7 extends StatefulWidget { const Am7({super.key});

@override State<Am7> createState() => _Am7State(); }

class _Am7State extends State<Am7> { bool showMethods = false;

final List<Map<String, String>> methods = [
  {
    'no': '01',
    'icon': Icons.layers.codePoint.toString(),
    'title': 'Strategy & Discovery',
    'description': 'To build a results-driven project roadmap that meets your goals, we first determine your business objectives, user demands, and technical requirements.',
  },
  {
    'no': '02',
    'icon': Icons.palette.codePoint.toString(),
    'title': 'UX Design',
    'description': 'Before production starts, our creative team creates interactive prototypes and user-friendly wireframes that outline the interface structure and user path.',
  },
  {
    'no': '03',
    'icon': Icons.code.codePoint.toString(),
    'title': 'Tailored Creation',
    'description': 'Our developers turn designs into fully usable websites or web apps that are optimized for speed, efficiency, and scalability using cutting-edge frameworks and best coding methods.',
  },
  {
    'no': '04',
    'icon': Icons.show_chart.codePoint.toString(),
    'title': 'Testing and Quality Assurance',
    'description': 'To ensure that every feature works on all devices, browsers, and screen sizes, we do thorough manual and automated testing.',
  },
  {
    'no': '05',
    'icon': Icons.rocket.codePoint.toString(),
    'title': 'Implementation',
    'description': 'We take care of the deployment procedure, guaranteeing a safe and seamless launch of your online solution on the hosting environment of your choice.',
  },
  {
    'no': '06',
    'icon': Icons.flash_on.codePoint.toString(),
    'title': 'Assistance & Streamlining',
    'description': 'After launch, we continue to work together by providing performance optimization, maintenance, and support.',
  },
];

@override Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width; return Container( color: Colors.transparent, padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24), child: Column( crossAxisAlignment: CrossAxisAlignment.center, children: [ Center( child: ElevatedButton( onPressed: () { setState(() => showMethods = !showMethods); }, style: ElevatedButton.styleFrom( shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(30), ), backgroundColor: Colors.indigo, padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14), ), child: const Text( 'Our Methods of Development', style: TextStyle(fontSize: 16, color: Colors.white), ), ), ), const SizedBox(height: 24), if (showMethods) ...methods.map( (item) => Container( margin: const EdgeInsets.only(bottom: 16), padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20), decoration: BoxDecoration( color: Colors.white, borderRadius: BorderRadius.circular(20), boxShadow: [ BoxShadow( color: Colors.black12, blurRadius: 8, offset: const Offset(0, 4), ), ], ), child: Row( crossAxisAlignment: CrossAxisAlignment.start, children: [ Text( item['no']!, style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 20, color: Colors.indigo), ), const SizedBox(width: 12), Icon( _getIcon(item['icon']!), size: 28, color: Colors.indigoAccent, ), const SizedBox(width: 12), Expanded( child: Column( crossAxisAlignment: CrossAxisAlignment.start, children: [ Text( item['title']!, style: const TextStyle( fontSize: 16, fontWeight: FontWeight.bold), ), const SizedBox(height: 4), Text( item['description']!, style: const TextStyle(fontSize: 14), ), ], ), ) ], ), ), ), ], ), ); }

IconData _getIcon(String iconName) { switch (iconName) { case 'engineering': return Icons.engineering; case 'architecture': return Icons.architecture; case 'integration_instructions': return Icons.integration_instructions; case 'rule_folder': return Icons.rule_folder; case 'rocket_launch': return Icons.rocket_launch; case 'support_agent': return Icons.support_agent; default: return Icons.device_hub; } } }