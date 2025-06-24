import 'package:flutter/material.dart';

void main() => runApp(const AscendPathApp());

class AscendPathApp extends StatelessWidget {
  const AscendPathApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AscendPath Education',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey _heroKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _processKey = GlobalKey();
  final GlobalKey _destinationsKey = GlobalKey();
  final GlobalKey _testimonialsKey = GlobalKey();

  final ScrollController _scrollController = ScrollController();

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AscendPath Education",style: TextStyle(fontSize: 36)),
        backgroundColor: Colors.blue.shade900,
       actions: [
        TextButton(
          onPressed: () => scrollToSection(_heroKey),
          child: const Text("Home", style: TextStyle(color: Colors.white)),
        ),
        TextButton(
          onPressed: () => scrollToSection(_aboutKey),
          child: const Text("About", style: TextStyle(color: Colors.white)),
        ),
        TextButton(
          onPressed: () => scrollToSection(_processKey),
          child: const Text("Process", style: TextStyle(color: Colors.white)),
        ),
        TextButton(
          onPressed: () => scrollToSection(_destinationsKey),
          child: const Text("Destinations", style: TextStyle(color: Colors.white)),
        ),
        TextButton(
          onPressed: () => scrollToSection(_testimonialsKey),
          child: const Text("Testimonials", style: TextStyle(color: Colors.white)),
        ),
    ],

      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child:Column(
            children: [
              HeroBanner(key: _heroKey),
              AboutUs(key: _aboutKey),
              OurProcess(key: _processKey),
              StudyDestinations(key: _destinationsKey),
              Testimonials(key: _testimonialsKey),
              const ContactFooter(),
          ],
        ),

      ),
    );
  }
}


class HeroBanner extends StatelessWidget {
  const HeroBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
      color: Colors.blue.shade900,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your Global Future Starts Here.",
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 20),
          Text(
            "Study in India, China, Malta, USA, Poland, Hungary, Italy & more with AscendPath Education.",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.white70,
                ),
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 12,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("Apply Now",style: TextStyle(color: Colors.black)),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text("Book a Free Consultation",style: TextStyle(color: Colors.black)),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Chat with Us",style: TextStyle(color: Colors.black)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
//About Section
class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About Us",
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 30),
          Text(
            "Who We Are",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 10),
          const Text(
            "AscendPath Education is an international education consultancy built on passion, trust, and success. "
            "We are committed to guiding students from Africa and beyond into world-class universities, "
            "offering dedicated support at every stage of their journey.",
          ),
          const SizedBox(height: 30),

          Text(
            "Our Mission",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 10),
          const Text(
            "To open global opportunities for students by providing transparent, ethical, "
            "and personalized educational guidance.",
          ),
          const SizedBox(height: 30),

          Text(
            "Our Vision",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 10),
          const Text(
            "To become Africa’s most trusted pathway to international education.",
          ),
          const SizedBox(height: 30),

          Text(
            "Our Core Values",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 10),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("• Integrity"),
              Text("• Excellence"),
              Text("• Transparency"),
              Text("• Student-Centered Service"),
              Text("• Global Collaboration"),
            ],
          ),
        ],
      ),
    );
  }
}
//Our process section

class OurProcess extends StatelessWidget {
  const OurProcess({super.key});

  final List<Map<String, String>> steps = const [
    {
      "title": "Free Career Counseling",
      "desc": "We understand your goals and match them with the right country and course."
    },
    {
      "title": "Document Review & Admission Support",
      "desc": "We assist in preparing all necessary documents."
    },
    {
      "title": "Application Submission",
      "desc": "We apply to partner universities on your behalf."
    },
    {
      "title": "Offer Letter & Enrollment Fee",
      "desc": "A one-time fee of \$150 is paid after receiving the offer letter."
    },
    {
      "title": "Admission Confirmation",
      "desc": "Confirm admission by paying the university’s required fee (e.g., \$200)."
    },
    {
      "title": "Visa Assistance",
      "desc": "We guide you through the entire visa process."
    },
    {
      "title": "Travel & Pre-departure Support",
      "desc": "We help with accommodation, flights, and packing tips."
    },
    {
      "title": "Post-Arrival Support",
      "desc": "Settle in smoothly with airport pickup and community connection."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Our Process",
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 40),
          ...List.generate(steps.length, (index) {
            final step = steps[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue.shade900,
                    radius: 18,
                    child: Text(
                      '${index + 1}',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          step['title']!,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          step['desc']!,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}
//Study Destination Widget

class StudyDestinations extends StatelessWidget {
  const StudyDestinations({super.key});

  final List<Map<String, String>> countries = const [
    {"flag": "🇮🇳", "name": "India", "desc": "Affordable quality education with scholarships and vibrant culture."},
    {"flag": "🇨🇳", "name": "China", "desc": "Tech-forward institutions with global recognition."},
    {"flag": "🇲🇹", "name": "Malta", "desc": "Gateway to Europe with English-taught programs."},
    {"flag": "🇺🇸", "name": "USA", "desc": "World-class education and endless opportunities."},
    {"flag": "🇵🇱", "name": "Poland", "desc": "Low tuition, high quality, and multicultural exposure."},
    {"flag": "🇭🇺", "name": "Hungary", "desc": "Popular with African students for its medicine and engineering programs."},
    {"flag": "🇮🇹", "name": "Italy", "desc": "Rich culture and academic excellence."},
    {"flag": "🌍", "name": "Other Countries", "desc": "We also facilitate applications to universities across Europe and Asia."},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Study Destinations",
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: countries.map((country) {
              return Container(
                width: 300,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 6,
                      color: Colors.black12,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${country["flag"]} ${country["name"]}",
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      country["desc"]!,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
//Testimonials Widget

class Testimonials extends StatelessWidget {
  const Testimonials({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What Our Students Say",
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              TestimonialCard(
                quote: "Thanks to AscendPath, I’m now studying medicine in Poland. They walked with me step-by-step, even after I landed!",
                author: "— Nomsa, Zimbabwe",
              ),
              TestimonialCard(
                quote: "I couldn’t believe international education could be this affordable. AscendPath made it happen!",
                author: "— Kudzai, studying in India",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TestimonialCard extends StatelessWidget {
  final String quote;
  final String author;

  const TestimonialCard({super.key, required this.quote, required this.author});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(2, 2)),
        ],
      ),
      child: Column(
        children: [
          Text("“$quote”", style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
          const SizedBox(height: 10),
          Text(author, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
//Contact section
class ContactFooter extends StatelessWidget {
  const ContactFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade900,
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Get in Touch",
            style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Text(
            "Want to apply or ask questions? We're ready to help you plan your global future.",
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 16,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
                icon: const Icon(Icons.email,color: Colors.white,),
                onPressed: () {},
                label: const Text("Email Us",style: TextStyle(color: Colors.white)),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                icon: const Icon(Icons.chat,color: Colors.white,),
                onPressed: () {},
                label: const Text("Chat on WhatsApp",style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
          const SizedBox(height: 40),
          const Divider(color: Colors.white30),
          const SizedBox(height: 10),
          const Text(
            "© 2025 AscendPath Education • All rights reserved",
            style: TextStyle(color: Colors.white60),
          ),
        ],
      ),
    );
  }
}