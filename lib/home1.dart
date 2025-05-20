import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';
import 'Contact/containmain.dart'; // Your file and class

class Demo1 extends StatefulWidget {
  const Demo1({super.key});

  @override
  State<Demo1> createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  final List<String> _words = ['thrive', 'succeed', 'innovate'];
  int _wordIndex = 0;
  String _displayText = '';
  bool _isTyping = true;
  int _charIndex = 0;
  Timer? _timer;
  bool _showVideo = false;
  VideoPlayerController? _videoController;
  bool _videoAvailable = false;

  @override
  void initState() {
    super.initState();
    _startTypingCycle();
    _initializeVideo();
  }

  void _startTypingCycle() {
    _timer = Timer.periodic(const Duration(milliseconds: 150), (timer) {
      setState(() {
        final word = _words[_wordIndex];

        if (_isTyping) {
          if (_charIndex < word.length) {
            _displayText += word[_charIndex];
            _charIndex++;
          } else {
            _isTyping = false;
          }
        } else {
          if (_charIndex > 0) {
            _displayText = _displayText.substring(0, _charIndex - 1);
            _charIndex--;
          } else {
            _isTyping = true;
            _wordIndex = (_wordIndex + 1) % _words.length;
          }
        }
      });
    });
  }

  Future<void> _initializeVideo() async {
    try {
      final controller = VideoPlayerController.asset('assets/demo.mp4');
      await controller.initialize();
      controller.setLooping(true);
      setState(() {
        _videoController = controller;
        _videoAvailable = true;
      });
    } catch (e) {
      setState(() {
        _videoAvailable = false;
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _videoController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      color: Colors.blue.shade800,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Next level IT Solutions and Digital Services',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Let's together",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _displayText,
                  style: const TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "|",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'We deliver expert solutions in web and app development, cloud, AI/ML, and digital marketing—tailored for industries like healthcare, education, and more. Your one-stop destination for IT services.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ContainMain()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text('Getting Started'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    _showVideo = !_showVideo;
                    if (_videoController != null && _showVideo) {
                      _videoController!.play();
                    } else {
                      _videoController?.pause();
                    }
                  });
                },
                icon: const Icon(Icons.play_circle_fill),
                label: const Text('Watch Demo'),
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
          if (_showVideo) ...[
            const SizedBox(height: 30),
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  width: screenWidth > 600 ? 600 : double.infinity,
                  height: 200,
                  color: Colors.black12,
                  child: _videoAvailable && _videoController != null
                      ? AspectRatio(
                          aspectRatio: _videoController!.value.aspectRatio,
                          child: VideoPlayer(_videoController!),
                        )
                      : const Center(
                          child: Text(
                            'Video Player Placeholder',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ),
                ),
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  onPressed: () {
                    setState(() {
                      _showVideo = false;
                      _videoController?.pause();
                    });
                  },
                ),
              ],
            )
          ]
        ],
      ),
    );
  }
}
