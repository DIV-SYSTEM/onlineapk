import 'package:flutter/material.dart';

class GenericScreen extends StatefulWidget {
  final String title; // Title for the AppBar
  final List<Widget> contentSections; // List of content widgets
  final double maxWidth; // Maximum width for the content container
  final ScrollController? scrollController; // Optional ScrollController

  const GenericScreen({
    super.key,
    required this.title,
    required this.contentSections,
    this.maxWidth = 600.0, // Default maxWidth
    this.scrollController, // Optional controller for custom scrolling
  });

  @override
  State<GenericScreen> createState() => _GenericScreenState();
}

class _GenericScreenState extends State<GenericScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    // Use provided ScrollController or create a new one
    _scrollController = widget.scrollController ?? ScrollController();
  }

  @override
  void dispose() {
    // Only dispose if we created the controller
    if (widget.scrollController == null) {
      _scrollController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final effectiveMaxWidth = screenWidth < 700 ? double.infinity : widget.maxWidth;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        title: Text(widget.title),
        centerTitle: true,
        elevation: 0, // Optional: removes shadow for a cleaner look
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
        child: Center(
          child: Container(
            width: effectiveMaxWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.contentSections,
            ),
          ),
        ),
      ),
    );
  }
}
