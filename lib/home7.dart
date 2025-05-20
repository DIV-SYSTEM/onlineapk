import 'package:flutter/material.dart';

class Home7 extends StatelessWidget { const Home7({super.key});

@override Widget build(BuildContext context) { final testimonials = [ { "image": "https://via.placeholder.com/100", "description": "Their innovative AI approach completely transformed our digital operations.", "name": "Sarah Johnson", "role": "CTO", "company": "HealthTech Innovations" }, { "image": "https://via.placeholder.com/100", "description": "Their commitment to excellence and understanding of our business challenges was exceptional.", "name": "David Lee", "role": "Head of Engineering", "company": "FinAI Systems" }, { "image": "https://via.placeholder.com/100", "description": " Highly recommend for any AI-driven transformation needs!", "name": "Emily Carter", "role": "Product Manager", "company": "EduSmart AI" }, ];

return Container(
  color: Colors.white,
  padding: const EdgeInsets.symmetric(vertical: 40),
  child: Column(
    children: [
      const Text(
        "High Fives from Our Clients: Their Feedback",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      const SizedBox(height: 30),
      SizedBox(
        height: 300,
        child: PageView.builder(
          controller: PageController(viewportFraction: 0.85),
          itemCount: testimonials.length,
          itemBuilder: (context, index) {
            final testimonial = testimonials[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pink.shade100,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 6,
                      offset: const Offset(2, 4),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(testimonial['image']!),
                      radius: 30,
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      height: 70,
                      child: Text(
                        testimonial['description']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          testimonial['name']!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          testimonial['role']!,
                          style: const TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                        Text(
                          testimonial['company']!,
                          style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      )
    ],
  ),
);

} }
