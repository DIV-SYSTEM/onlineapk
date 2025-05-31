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
  String _completePhoneNumber = '';
  String? _dateError;

  final List<String> _services = [
    'Web Development',
    'Mobile Development',
    'Cloud Services',
    'AI and ML Solutions',
    'Digital Marketing',
  ];

  final List<String> _timeSlots = ['9am-10am', '10am-11am', '12am-1pm'];
  final List<String> _timezones = ['EST', 'IST', 'CST', 'MST', 'PST'];

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
      return null;
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
      _dateError = null;
    });
  }

  Future<void> _submitForm() async {
    setState(() {
      _dateError = _selectedDate == null ? 'Please select a date' : null;
    });

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
          final isSmall = constraints.maxWidth < 360;
          final padding = isSmall ? 12.0 : 16.0;
          final fontSize = isSmall ? 12.0 : 14.0;

          return SingleChildScrollView(
            padding: EdgeInsets.all(padding),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 600),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Get in Touch With Our Team',
                        style: TextStyle(
                          fontSize: isSmall ? 20 : 22,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Hi 👋 ,We are here to answer your questions 🤝.',
                        style: TextStyle(
                          fontSize: fontSize,
                          color: Colors.black87,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 20),
                      _buildTextField('Full Name*', _nameController, fontSize: fontSize),
                      _buildTextField(
                        'Email Address*',
                        _emailController,
                        validator: _validateEmail,
                        fontSize: fontSize,
                      ),
                      _buildPhoneField(fontSize: fontSize),
                      _buildTextField(
                        'Company Name',
                        _companyController,
                        required: false,
                        fontSize: fontSize,
                      ),
                      _buildTextField(
                        'Website URL',
                        _websiteController,
                        required: false,
                        validator: _validateWebsite,
                        fontSize: fontSize,
                      ),
                      const SizedBox(height: 10),
                      Text('Service of Interest*', style: TextStyle(fontSize: fontSize)),
                      DropdownButtonFormField<String>(
                        isExpanded: true,
                        value: _selectedService,
                        hint: Text('Select Service', style: TextStyle(fontSize: fontSize)),
                        items: _services
                            .map((s) => DropdownMenuItem(
                                  value: s,
                                  child: Text(s, style: TextStyle(fontSize: fontSize)),
                                ))
                            .toList(),
                        onChanged: (val) => setState(() => _selectedService = val),
                        validator: (val) => val == null ? 'Please select a service' : null,
                      ),
                      const SizedBox(height: 10),
                      Text('Tell us about your project*', style: TextStyle(fontSize: fontSize)),
                      TextFormField(
                        controller: _messageController,
                        maxLines: 4,
                        style: TextStyle(fontSize: fontSize),
                        validator: (value) =>
                            value!.isEmpty ? 'Please describe your project' : null,
                      ),
                      const SizedBox(height: 10),
                      Text('Select a Date*', style: TextStyle(fontSize: fontSize)),
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
                                setState(() {
                                  _selectedDate = date;
                                  _dateError = null;
                                });
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                horizontal: isSmall ? 8 : 12,
                                vertical: isSmall ? 6 : 8,
                              ),
                            ),
                            child: Text('Pick Date', style: TextStyle(fontSize: fontSize)),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              _selectedDate == null
                                  ? 'No date selected'
                                  : _selectedDate!.toLocal().toString().split(' ')[0],
                              style: TextStyle(fontSize: fontSize),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      if (_dateError != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            _dateError!,
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: isSmall ? 10 : 12,
                            ),
                          ),
                        ),
                      const SizedBox(height: 10),
                      const Divider(),
                      const SizedBox(height: 10),
                      Text('Time Slot*', style: TextStyle(fontSize: fontSize)),
                      DropdownButtonFormField<String>(
                        isExpanded: true,
                        value: _selectedTimeSlot,
                        hint: Text('Select Time Slot', style: TextStyle(fontSize: fontSize)),
                        items: _timeSlots
                            .map((slot) => DropdownMenuItem(
                                  value: slot,
                                  child: Text(slot, style: TextStyle(fontSize: fontSize)),
                                ))
                            .toList(),
                        onChanged: (val) => setState(() => _selectedTimeSlot = val),
                        validator: (val) => val == null ? 'Please select a time slot' : null,
                      ),
                      const SizedBox(height: 10),
                      Text('Timezone*', style: TextStyle(fontSize: fontSize)),
                      DropdownButtonFormField<String>(
                        isExpanded: true,
                        value: _selectedTimezone,
                        hint: Text('Select Timezone', style: TextStyle(fontSize: fontSize)),
                        items: _timezones
                            .map((zone) => DropdownMenuItem(
                                  value: zone,
                                  child: Text(zone, style: TextStyle(fontSize: fontSize)),
                                ))
                            .toList(),
                        onChanged: (val) => setState(() => _selectedTimezone = val),
                        validator: (val) => val == null ? 'Please select a timezone' : null,
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Wrap(
                          spacing: isSmall ? 8 : 16,
                          runSpacing: 8,
                          children: [
                            OutlinedButton(
                              onPressed: _clearForm,
                              style: OutlinedButton.styleFrom(
                                minimumSize: Size(isSmall ? 100 : 120, isSmall ? 36 : 40),
                              ),
                              child: Text('Reset', style: TextStyle(fontSize: fontSize)),
                            ),
                            ElevatedButton(
                              onPressed: _submitForm,
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(isSmall ? 100 : 120, isSmall ? 36 : 40),
                              ),
                              child: Text('Send Message', style: TextStyle(fontSize: fontSize)),
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
    required double fontSize,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Text(label, style: TextStyle(fontSize: fontSize), overflow: TextOverflow.ellipsis),
        TextFormField(
          controller: controller,
          style: TextStyle(fontSize: fontSize),
          validator: validator ??
              (required ? (value) => value!.isEmpty ? 'Required' : null : null),
        ),
      ],
    );
  }

  Widget _buildPhoneField({required double fontSize}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,


      children: [
        const SizedBox(height: 10),
        Text('Phone No*', style: TextStyle(fontSize: fontSize), overflow: TextOverflow.ellipsis),
        IntlPhoneField(
          controller: _phoneController,
          decoration: InputDecoration(
            hintText: 'Enter 10-digit number',
            hintStyle: TextStyle(fontSize: fontSize),
            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          ),
          initialCountryCode: 'US',
          showCountryFlag: false,
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
