import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Cloud7 extends StatefulWidget {
  const Cloud7({super.key});

  @override
  State<Cloud7> createState() => _Cloud7State();
}

class _Cloud7State extends State<Cloud7> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _companyController = TextEditingController();
  final _websiteController = TextEditingController();
  final _messageController = TextEditingController();

  int selectedMonthIndex = DateTime.now().month - 1;
  int selectedDayIndex = 0;
  int selectedHour = TimeOfDay.now().hour + 1;

  String selectedTimezone = 'IST';
  String selectedService = 'Decision Making';

  final List<String> timezones = ['IST', 'EST'];
  final List<String> services = [
    'Decision Making',
    'AI that Changes with your company',
    'Personalized Client experiences',
    'Smooth Automated processes',
    'Increases in production at all levels'
    
  ];

  List<String> months = List.generate(
    12,
    (index) => DateFormat('MMMM yyyy').format(
      DateTime(DateTime.now().year, index + 1),
    ),
  );

  List<DateTime> dayDates = List.generate(30, (i) => DateTime.now().add(Duration(days: i)));

  List<String> timeSlots = List.generate(10, (i) {
    final hour = i + 9;
    final nextHour = hour + 1;
    return '${hour % 12 == 0 ? 12 : hour % 12} ${hour >= 12 ? "PM" : "AM"} - ${nextHour % 12 == 0 ? 12 : nextHour % 12} ${nextHour >= 12 ? "PM" : "AM"}';
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 600;
    final padding = isMobile ? 16.0 : 32.0;
    final labelFont = isMobile ? 14.0 : 16.0;
    final inputFont = isMobile ? 14.0 : 16.0;

    return Container(
      width: double.infinity,
      color: const Color(0xFFFFF1F1),
      padding: EdgeInsets.all(padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildInputWithCounter('Your Name *', _nameController, 30, inputFont),
          const SizedBox(height: 16),
          buildInputWithCounter('Your Email *', _emailController, 30, inputFont),
          const SizedBox(height: 16),
          buildInputWithCounter('Company Name *', _companyController, 30, inputFont),
          const SizedBox(height: 16),
          buildInputWithCounter('Website Link *', _websiteController, 30, inputFont),
          const SizedBox(height: 16),

          Text(
            'Service of Interest *',
            style: TextStyle(fontSize: labelFont, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          DropdownButtonFormField<String>(
            value: selectedService,
            decoration: const InputDecoration(border: OutlineInputBorder()),
            onChanged: (value) => setState(() => selectedService = value!),
            items: services.map((service) {
              return DropdownMenuItem(value: service, child: Text(service));
            }).toList(),
          ),
          const SizedBox(height: 24),

          Text(
            'Tell us more about your project',
            style: TextStyle(fontSize: labelFont, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: _messageController,
            maxLines: 5,
            maxLength: 500,
            decoration: const InputDecoration(
              hintText: 'How can we help?',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          const SizedBox(height: 24),

          Text('Select Month', style: TextStyle(fontSize: labelFont)),
          const SizedBox(height: 8),
          buildHorizontalChips(months, selectedMonthIndex, (index) {
            setState(() => selectedMonthIndex = index);
          }),

          const SizedBox(height: 16),
          Text('Select Day', style: TextStyle(fontSize: labelFont)),
          const SizedBox(height: 8),
          buildHorizontalChips(
            dayDates.map((d) => '${d.day}, ${DateFormat('EEE').format(d)}').toList(),
            selectedDayIndex,
            (index) {
              setState(() => selectedDayIndex = index);
            },
          ),

          const SizedBox(height: 16),
          Text('Select Timezone', style: TextStyle(fontSize: labelFont)),
          const SizedBox(height: 8),
          DropdownButtonFormField<String>(
            value: selectedTimezone,
            decoration: const InputDecoration(border: OutlineInputBorder()),
            onChanged: (value) => setState(() => selectedTimezone = value!),
            items: timezones.map((tz) {
              return DropdownMenuItem(value: tz, child: Text(tz));
            }).toList(),
          ),

          const SizedBox(height: 16),
          Text('Select Time Slot', style: TextStyle(fontSize: labelFont)),
          const SizedBox(height: 8),
          buildHorizontalChips(timeSlots, selectedHour - 9, (index) {
            setState(() => selectedHour = index + 9);
          }),

          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {
                // TODO: Handle submission
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              icon: const Icon(Icons.send),
              label: const Text('Send Message', style: TextStyle(fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildInputWithCounter(String label, TextEditingController controller, int maxLength, double fontSize) {
    return StatefulBuilder(
      builder: (context, setLocalState) {
        controller.addListener(() => setLocalState(() {}));
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            TextFormField(
              controller: controller,
              maxLength: maxLength,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            Text(
              '${controller.text.length} of $maxLength characters',
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        );
      },
    );
  }

  Widget buildHorizontalChips(List<String> items, int selectedIndex, void Function(int) onSelected) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: ChoiceChip(
              label: Text(items[index]),
              selected: selectedIndex == index,
              onSelected: (_) => onSelected(index),
            ),
          );
        },
      ),
    );
  }
}