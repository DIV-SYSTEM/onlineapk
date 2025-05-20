import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pie_chart/pie_chart.dart';

class MarketingSection extends StatelessWidget {
  const MarketingSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    return Container(
      width: double.infinity,
      color: Colors.grey[100],
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            color: Colors.blueGrey[900],
            width: double.infinity,
            child: Column(
              children: const [
                Text(
                  "Data-Driven, Open, and Effective Marketing",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "We demonstrate our accomplishments rather than only promising them. With real-time data and clear statistics, you'll have total visibility into your marketing performance, from clicks to conversions.",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // Metrics Row
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 6),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              children: [
                Wrap(
                  spacing: 20,
                  runSpacing: 10,
                  alignment: WrapAlignment.center,
                  children: const [
                    MetricBox(title: "Active Campaigns", value: "12"),
                    MetricBox(title: "Impressions (M)", value: "5.6"),
                    MetricBox(title: "Clicks (K)", value: "340"),
                    MetricBox(title: "Conversions (K)", value: "89"),
                  ],
                ),

                const SizedBox(height: 30),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Campaign Performance",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                LinearProgressBar(title: "Google Ads", percent: 0.88, color: Colors.blue),
                LinearProgressBar(title: "Meta Ads", percent: 0.65, color: Colors.pink),
                LinearProgressBar(title: "SEO", percent: 0.82, color: Colors.green),
                LinearProgressBar(title: "Social Media", percent: 0.71, color: Colors.orange),

                const SizedBox(height: 30),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Traffic Sources",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),

                PieChart(
                  dataMap: const {
                    "Paid Search": 42,
                    "Organic Search": 28,
                    "Social Media": 18,
                    "Direct": 12,
                  },
                  animationDuration: const Duration(seconds: 2),
                  chartLegendSpacing: 32,
                  chartRadius: isMobile ? 150 : 200,
                  colorList: [
                    Colors.blue,
                    Colors.green,
                    Colors.orange,
                    Colors.red,
                  ],
                  initialAngleInDegree: 0,
                  chartType: ChartType.ring,
                  ringStrokeWidth: 32,
                  legendOptions: const LegendOptions(
                    showLegendsInRow: false,
                    legendPosition: LegendPosition.right,
                    showLegends: true,
                    legendTextStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  chartValuesOptions: const ChartValuesOptions(
                    showChartValueBackground: false,
                    showChartValues: true,
                    showChartValuesInPercentage: true,
                    showChartValuesOutside: false,
                    decimalPlaces: 0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MetricBox extends StatelessWidget {
  final String title;
  final String value;
  const MetricBox({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(fontSize: 12, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class LinearProgressBar extends StatelessWidget {
  final String title;
  final double percent;
  final Color color;

  const LinearProgressBar({
    required this.title,
    required this.percent,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const SizedBox(height: 4),
          LinearPercentIndicator(
            animation: true,
            lineHeight: 8,
            animationDuration: 1000,
            percent: percent,
            barRadius: const Radius.circular(10),
            progressColor: color,
            backgroundColor: Colors.grey[300],
          ),
        ],
      ),
    );
  }
}