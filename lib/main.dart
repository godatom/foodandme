import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const FoodAndMeApp());
}

class FoodAndMeApp extends StatelessWidget {
  const FoodAndMeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<String> productImages = const [
    'https://raw.githubusercontent.com/godatom/foodandme/gh-pages/food%20and%20me%20garri%20backup%2017-1.jpg',
    'https://raw.githubusercontent.com/godatom/foodandme/gh-pages/food%20and%20me%20garri%20backup%2017-2.jpg',
    'https://raw.githubusercontent.com/godatom/foodandme/gh-pages/food%20and%20me%20garri%20backup%2017-3.jpg',
    'https://raw.githubusercontent.com/godatom/foodandme/gh-pages/food%20and%20me%20garri%20backup%2017-4.jpg',
    'https://raw.githubusercontent.com/godatom/foodandme/gh-pages/food%20and%20me%20garri%20backup%2017-5.jpg',
    'https://raw.githubusercontent.com/godatom/foodandme/gh-pages/garri%2Cpoundo%20ready%20print%202.jpg',
    'https://raw.githubusercontent.com/godatom/foodandme/gh-pages/garri%2Cpoundo%20ready%20print%203.jpg',
    'https://raw.githubusercontent.com/godatom/foodandme/gh-pages/garri%2Cpoundo%20ready%20print.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://images.unsplash.com/photo-1567306226416-28f0efdc88ce',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Image.asset('assets/images/foodandme_logo.png', height: 100),
              const SizedBox(height: 20),
              const Text(
                "Our Products",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: productImages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.8),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          productImages[index],
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              const Icon(Icons.broken_image),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                onPressed: launchWhatsApp,
                child: const Text(
                  "Order Now on WhatsApp",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

void launchWhatsApp() async {
  final Uri url = Uri.parse("https://wa.me/2349168243995");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch WhatsApp link';
  }
}
