import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl_phone_field/intl_phone_field.dart';

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
  String _completePhoneNumber = ''; // Store full phone number with country code

  final List<String> _services = [
    'Web Development',
    'Mobile Development',
    'Cloud Services',
    'AI and ML Solutions',
    'Digital Marketing',
  ];

  final List<String> _timeSlots = ['9am-10am', '10am-11am', '12am-1pm'];
  final List<String> _timezones = ['EST', 'IST', 'CST', 'MST', 'PST'];

  // Validation functions
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Required';
    }
    const emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    if (!RegExp(emailPattern).hasMatch(value)) {
      return 'Enter a valid email';
    }
    return null;
  }

  String? _validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Required';
    }
    const phonePattern = r'^\d{10}$';
    if (!RegExp(phonePattern).hasMatch(value)) {
      return 'Enter a valid 10-digit phone number';
    }
    return null;
  }

  String? _validateWebsite(String? value) {
    if (value == null || value.isEmpty) {
      return null; // Optional field
    }
    const urlPattern =
        r'^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$';
    if (!RegExp(urlPattern).hasMatch(value)) {
      return 'Enter a valid URL (e.g., https://example.com)';
    }
    return null;
  }

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
      _completePhoneNumber = '';
    });
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate() &&
        _selectedService != null &&
        _selectedDate != null &&
        _selectedTimeSlot != null &&
        _selectedTimezone != null &&
        _completePhoneNumber.isNotEmpty) {
      final data = {
        'name': _nameController.text,
        'email': _emailController.text,
        'phone': _completePhoneNumber,
        'company': _companyController.text,
        'website': _websiteController.text,
        'service': _selectedService,
        'message': _messageController.text,
        'date': _selectedDate!.toIso8601String(),
        'timeSlot': _selectedTimeSlot,
        'timezone': _selectedTimezone,
      };

      final url = Uri.parse(
          'https://httpform-45f81-default-rtdb.firebaseio.com/contacts.json');
      await http.post(url, body: json.encode(data));

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Message sent successfully')),
      );

      _clearForm();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill all required fields'),
          backgroundColor: Colors.redAccent,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth > 700;
          final padding = isWide ? 24.0 : 16.0;
          final maxWidth = isWide ? 700.0 : constraints.maxWidth;

          return SingleChildScrollView(
            padding: EdgeInsets.all(padding),
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: maxWidth),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Get in Touch With Our Team',
                        style: TextStyle(
                          fontSize: isWide ? 26 : 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'We are here to answer your questions and discuss your project needs.',
                        style: TextStyle(
                          fontSize: isWide ? 16 : 14,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 20),
                      _buildTextField('Full Name*', _nameController),
                      _buildTextField(
                        'Email Address*',
                        _emailController,
                        validator: _validateEmail,
                      ),
                      _buildPhoneField(),
                      _buildTextField(
                        'Company Name',
                        _companyController,
                        required: false,
                      ),
                      _buildTextField(
                        'Website URL',
                        _websiteController,
                        required: false,
                        validator: _validateWebsite,
                      ),
                      const SizedBox(height: 10),
                      const Text('Service of Interest*'),
                      DropdownButtonFormField<String>(
                        isExpanded: true,
                        value: _selectedService,
                        hint: const Text('Select Service'),
                        items: _services
                            .map((s) => DropdownMenuItem(value: s, child: Text(s)))
                            .toList(),
                        onChanged: (val) => setState(() => _selectedService = val),
                        validator: (val) =>
                            val == null ? 'Please select a service' : null,
                      ),
                      const SizedBox(height: 10),
                      const Text('Tell us about your project*'),
                      TextFormField(
                        controller: _messageController,
                        maxLines: 4,
                        validator: (value) =>
                            value!.isEmpty ? 'Please describe your project' : null,
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
                                firstDate: DateTime.now(),
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
                            child: Text(
                              _selectedDate == null
                                  ? 'No date selected'
                                  : _selectedDate!.toLocal().toString().split(' ')[0],
                              style: TextStyle(fontSize: isWide ? 16 : 14),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
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
                        validator: (val) =>
                            val == null ? 'Please select a time slot' : null,
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
                        validator: (val) =>
                            val == null ? 'Please select a timezone' : null,
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Wrap(
                          spacing: 16,
                          runSpacing: 8,
                          children: [
                            ElevatedButton(
                              onPressed: _submitForm,
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(isWide ? 150 : 120, 40),
                              ),
                              child: const Text('Send Message'),
                            ),
                            OutlinedButton(
                              onPressed: _clearForm,
                              style: OutlinedButton.styleFrom(
                                minimumSize: Size(isWide ? 150 : 120, 40),
                              ),
                              child: const Text('Reset'),
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
        },
      ),
    );
  }

  Widget _buildTextField(
    String label,
    TextEditingController controller, {
    bool required = true,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Text(label),
        TextFormField(
          controller: controller,
          validator: validator ??
              (required
                  ? (value) => value!.isEmpty ? 'Required' : null
                  : null),
        ),
      ],
    );
  }

  Widget _buildPhoneField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        const Text('Phone No*'),
        IntlPhoneField(
          controller: _phoneController,
          decoration: const InputDecoration(
            hintText: 'Enter 10-digit number',
          ),
          initialCountryCode: 'US',
          showCountryFlag: false, // Disable flags to avoid asset error
          onChanged: (phone) {
            setState(() {
              _completePhoneNumber = phone.completeNumber;
            });
          },
          validator: (phone) {
            if (phone == null || phone.number.isEmpty) {
              return 'Required';
            }
            if (!RegExp(r'^\d{10}$').hasMatch(phone.number)) {
              return 'Enter a valid 10-digit phone number';
            }
            return null;
          },
        ),
      ],
    );
  }
}