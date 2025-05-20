import 'package:flutter/material.dart';
import 'dart:async';

class AM9 extends StatefulWidget {
  const AM9({super.key});

  @override
  State<AM9> createState() => _AM9State();
}

class _AM9State extends State<AM9> {
  bool showPartners = false;

  final List<Map<String, dynamic>> partners = [
    {
      "domain": "Payment Gateways",
      "companies": ["Stripe", "PayPal", "Adyen", "Worldpay", "Braintree"],
    },
    {
      "domain": "Core Banking Systems",
      "companies": ["Temenos", "Finastra", "FIS", "Mambu", "Fiserv"],
    },
    {
      "domain": "KYC/AML Providers",
      "companies": ["Jumio", "Onfido", "ComplyAdvantage", "Trulioo", "LexisNexis"],
    },
    {
      "domain": "Data & Analytics",
      "companies": ["Tableau", "Power BI", "Looker", "Snowflake", "Databricks"],
    },
    {
      "domain": "Fraud Prevention",
      "companies": ["Feedzai", "NICE Actimize", "Forter", "Sift", "Kount"],
    },
    {
      "domain": "Wealth Management",
      "companies": ["Refinitiv", "BlackRock Aladdin", "Morningstar", "SS&C Advent", "Envestnet"],
    },
    {
      "domain": "Regulatory Reporting",
      "companies": ["AxiomSL", "Wolters Kluwer", "Moody's Analytics", "Bloomberg", "Confluence"],
    },
    {
      "domain": "Open Banking",
      "companies": ["Plaid", "Tink", "TrueLayer", "Yapily", "Token"],
    },
  ];

  final List<ScrollController> _controllers = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < partners.length; i++) {
      final controller = ScrollController();
      _controllers.add(controller);
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _startAutoScroll(controller, isLTR: i % 2 == 0);
      });
    }
  }

  void _startAutoScroll(ScrollController controller, {required bool isLTR}) {
    const double step = 1.5;
    const duration = Duration(milliseconds: 40);

    Timer.periodic(duration, (timer) {
      if (!controller.hasClients) return;

      final max = controller.position.maxScrollExtent;
      final min = controller.position.minScrollExtent;
      double offset = controller.offset + (isLTR ? step : -step);

      if (offset >= max) offset = min;
      if (offset <= min) offset = max;

      controller.jumpTo(offset);
    });
  }

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Text(
            "Our Financial Integration Partners",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "We integrate with leading financial services and platforms to provide comprehensive solutions for your institution.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              setState(() => showPartners = !showPartners);
            },
            child: const Text("Our Partners"),
          ),
          const SizedBox(height: 16),
          if (showPartners)
            ...partners.asMap().entries.map((entry) {
              final index = entry.key;
              final partner = entry.value;
              final controller = _controllers[index];
              final isEven = index % 2 == 0;

              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,

                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      partner["domain"],
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 6),
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                        controller: controller,
                        scrollDirection: Axis.horizontal,
                        itemCount: 100,
                        itemBuilder: (context, i) {
                          final names = partner["companies"] as List<String>;
                          final name = names[i % names.length];
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Chip(
                              label: Text(
                                name,
                                style: const TextStyle(fontSize: 16),
                              ),
                              backgroundColor: Colors.blue.shade100,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
        ],
      ),
    );
  }
}
