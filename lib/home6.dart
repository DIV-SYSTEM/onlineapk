import 'package:flutter/material.dart';

class Home6 extends StatefulWidget {
  const Home6({super.key});

  @override
  State<Home6> createState() => _Home6State();
}

class _Home6State extends State<Home6> with TickerProviderStateMixin {
  late final AnimationController _controller1 = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  )..forward();
  late final AnimationController _controller2 = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  )..forward();
  late final AnimationController _controller3 = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  )..forward();
  late final AnimationController _controller4 = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  )..forward();

  late final Animation<int> _animation1 = IntTween(begin: 0, end: 400).animate(_controller1);
  late final Animation<int> _animation2 = IntTween(begin: 0, end: 3000000).animate(_controller2);
  late final Animation<int> _animation3 = IntTween(begin: 0, end: 60).animate(_controller3);
  late final Animation<int> _animation4 = IntTween(begin: 0, end: 40).animate(_controller4);

  Widget buildCounterCard(Animation<int> animation, String suffix, String label) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Container(
          width: MediaQuery.of(context).size.width < 600
              ? MediaQuery.of(context).size.width * 0.42
              : 200,
          height: 120,
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(color: Colors.grey.shade300, blurRadius: 6, offset: const Offset(2, 2)),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${animation.value}$suffix',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return Container(
      color: Colors.pink.shade100,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: 'Turning Bold Product Dreams ',
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: 'into Market Readiness ',
                  style: TextStyle(color: Colors.red),
                ),
                TextSpan(
                  text: 'With Enterprise AI Development Services',
                  style: TextStyle(color: Colors.black),
),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Delivering innovative solutions with cutting-edge technology since 2009",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(height: 30),

          // Counters in 2x2 Grid
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              buildCounterCard(_animation1, "+", "Pro Engineers"),
              buildCounterCard(_animation2, "", "Man Hours"),
              buildCounterCard(_animation3, "+", "Product Lifecycle Delivered"),
              buildCounterCard(_animation4, "+", "Live Projects"),
            ],
          ),

          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              // navigation logic
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
            ),
            child: const Text(
              "Get Launch Ready | Talk to Expert",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}