import 'package:flutter/material.dart';
import 'more.dart'; // import halaman more

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpeg'), // background dari images
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              // Background Card
              Container(
                margin: const EdgeInsets.only(top: 60),
                width: 300,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.amber.shade200, // semi transparan
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 60), // Space for CircleAvatar
                    const Text(
                      'Farrel Muhammad Bintang',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Vocational High School Student at SMK Wikrama Bogor',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                    const SizedBox(height: 12),

                    // Tombol untuk pindah ke more.dart
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.primary, // warna tema
                        foregroundColor: Colors.white, // teks tombol putih
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const More(),
                          ),
                        );
                      },
                      child: const Text("See More"),
                    ),
                  ],
                ),
              ),

              // Circle Avatar with Image
              const Positioned(
                top: 0,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/farrel.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
