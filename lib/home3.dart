import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:visibility_detector/visibility_detector.dart';
class Home3 extends StatelessWidget {
  const Home3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      width: double.infinity,
      child: Column(
        children: [
          const Text(
            "We Work For Client Around The World",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "Our global footprint is a testament to our unwavering dedication to providing exceptional services and innovative solutions to businesses, irrespective of geographical boundaries.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const SizedBox(height: 30),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 30,
            runSpacing: 20,
            children: const [
              AnimatedCounter(title: "International Clients", count: 600),
              AnimatedCounter(title: "Offices Worldwide", count: 40),
              AnimatedCounter(title: "Projects Delivered", count: 1200),
              AnimatedCounter(title: "Years of Experience", count: 10),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Text("Get Started", style: TextStyle(color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}




class AnimatedCounter extends StatefulWidget {
  final int count;
  final String title;

  const AnimatedCounter({
    super.key,
    required this.count,
    required this.title,
  });

  @override
  State<AnimatedCounter> createState() => _AnimatedCounterState();
}

class _AnimatedCounterState extends State<AnimatedCounter> {
  bool _isVisible = false;

  String _formatNumber(int value) {
    final formatter = NumberFormat.decimalPattern();
    return formatter.format(value);
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.title), // Unique key for each counter
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.5 && !_isVisible) {
          setState(() {
            _isVisible = true;
          });
        }
      },
      child: Column(
        children: [
          _isVisible
              ? TweenAnimationBuilder<int>(
            tween: IntTween(begin: 0, end: widget.count),
            duration: const Duration(seconds: 3),
            builder: (context, value, child) => Text(
              _formatNumber(value),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
              : Text(
            "0",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            widget.title,
            style: const TextStyle(color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
