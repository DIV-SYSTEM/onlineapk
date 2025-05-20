import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _companyController = TextEditingController();
  final TextEditingController _websiteController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  String? _selectedService;
  DateTime? _selectedDate;
  String? _selectedTimeSlot;
  String? _selectedTimezone;

  final List<String> _services = [
    'Web Development',
    'Mobile Development',
    'Cloud Services',
    'AI and ML Solutions',
    'Digital Marketing',
  ];

  final List<String> _timeSlots = ['9am-10am', '10am-11am', '12am-1pm'];
  final List<String> _timezones = ['EST', 'IST', 'CST', 'MST', 'PST'];

  void _clearForm() {
    _formKey.currentState!.reset();
    _nameController.clear();
    _emailController.clear();
    _phoneController.clear();
    _companyController.clear();
    _websiteController.clear();
    _messageController.clear();
    setState(() {
      _selectedService = null;
      _selectedDate = null;
      _selectedTimeSlot = null;
      _selectedTimezone = null;
    });
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      final data = {
        'name': _nameController.text,
        'email': _emailController.text,
        'phone': _phoneController.text,
        'company': _companyController.text,
        'website': _websiteController.text,
        'service': _selectedService,
        'message': _messageController.text,
        'date': _selectedDate?.toIso8601String(),
        'timeSlot': _selectedTimeSlot,
        'timezone': _selectedTimezone
      };

      final url = Uri.parse(
          'https://httpform-45f81-default-rtdb.firebaseio.com/contacts.json');
      await http.post(url, body: json.encode(data));

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Message sent successfully')),
      );

      _clearForm(); // Auto-clear after successful submit
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Get in Touch With Our Team',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'We are here to answer your questions and discuss your project needs.',
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
                const SizedBox(height: 20),
                const Text('Full Name*'),
                TextFormField(
                  controller: _nameController,
                  validator: (value) => value!.isEmpty ? 'Required' : null,
                ),
                const SizedBox(height: 10),
                const Text('Email Address*'),
                TextFormField(
                  controller: _emailController,
                  validator: (value) => value!.isEmpty ? 'Required' : null,
                ),
                const SizedBox(height: 10),
                const Text('Phone No*'),
                TextFormField(
                  controller: _phoneController,
                  validator: (value) => value!.isEmpty ? 'Required' : null,
                ),
                const SizedBox(height: 10),
                const Text('Company Name'),
                TextFormField(controller: _companyController),
                const SizedBox(height: 10),
                const Text('Website URL'),
                TextFormField(controller: _websiteController),
                const SizedBox(height: 10),
                const Text('Service of Interest*'),
                DropdownButtonFormField<String>(
                  isExpanded: true,
                  value: _selectedService,
                  hint: const Text('Select Service'),
                  items: _services
                      .map((s) => DropdownMenuItem(
                      value: s,
                      child: Text(s, overflow: TextOverflow.ellipsis)))
                      .toList(),
                  onChanged: (val) => setState(() => _selectedService = val),
                  validator: (value) => value == null ? 'Required' : null,
                ),
                const SizedBox(height: 10),
                const Text('Tell us about your project*'),
                TextFormField(
                  controller: _messageController,
                  maxLines: 4,
                  validator: (value) => value!.isEmpty ? 'Required' : null,
                ),
                const SizedBox(height: 10),
                const Text('Select a Date*'),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        final date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                        );
                        if (date != null) {
                          setState(() => _selectedDate = date);
                        }
                      },
                      child: const Text('Pick Date'),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(_selectedDate == null
                          ? 'No date selected'
                          : _selectedDate!
                          .toLocal()
                          .toString()
                          .split(' ')[0]),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Text('Time Slot*'),
                DropdownButtonFormField<String>(
                  isExpanded: true,
                  value: _selectedTimeSlot,
                  hint: const Text('Select Time Slot'),
                  items: _timeSlots
                      .map((slot) =>
                      DropdownMenuItem(value: slot, child: Text(slot)))
                      .toList(),
                  onChanged: (val) => setState(() => _selectedTimeSlot = val),
                  validator: (value) => value == null ? 'Required' : null,
                ),
                const SizedBox(height: 10),
                const Text('Timezone*'),
                DropdownButtonFormField<String>(
                  isExpanded: true,
                  value: _selectedTimezone,
                  hint: const Text('Select Timezone'),
                  items: _timezones
                      .map((zone) =>
                      DropdownMenuItem(value: zone, child: Text(zone)))
                      .toList(),
                  onChanged: (val) => setState(() => _selectedTimezone = val),
                  validator: (value) => value == null ? 'Required' : null,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: _submitForm,
                      child: const Text('Send Message'),
                    ),
                    const SizedBox(width: 16),
                    OutlinedButton(
                      onPressed: _clearForm,
                      child: const Text('Reset'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}