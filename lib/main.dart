import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Information Card',

      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: const Color(0xFFFFF5F8),

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFE91E63),
          foregroundColor: Colors.white,
        ),

        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE91E63),
        ),
      ),

      home: const PersonalInfoPage(),
    );
  }
}

class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Information'),
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          width: 350,
          padding: const EdgeInsets.all(24),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),

            border: Border.all(
              color: const Color(0xFFFFC1D9),
              width: 1.5,
            ),

            boxShadow: const [
              BoxShadow(
                color: Color(0x40E91E63),
                blurRadius: 15,
                offset: Offset(0, 6),
              ),
            ],
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              // Profile Picture
              const CircleAvatar(
                radius: 60,
                backgroundColor: Color(0xFFFFC1D9),
                backgroundImage: AssetImage(
                  'assets/profile.jpeg',
                ),
              ),

              const SizedBox(height: 15),

              // Name
              const Text(
                'Sanchita Suryawanshi',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFD81B60),
                ),
              ),

              const SizedBox(height: 5),

              // Profession
              const Text(
                'Software Developer',
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0xFF9E6B7D),
                ),
              ),

              const SizedBox(height: 30),

              // Personal Statistics
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  // Age
                  Column(
                    children: const [
                      Icon(
                        Icons.cake,
                        size: 30,
                        color: Color(0xFFE91E63),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '21 Years',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Age',
                        style: TextStyle(
                          color: Color(0xFF9E6B7D),
                        ),
                      ),
                    ],
                  ),

                  // ID Number
                  Column(
                    children: const [
                      Icon(
                        Icons.badge,
                        size: 30,
                        color: Color(0xFFE91E63),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'ID2026001',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'ID No.',
                        style: TextStyle(
                          color: Color(0xFF9E6B7D),
                        ),
                      ),
                    ],
                  ),

                  // Blood Group
                  Column(
                    children: const [
                      Icon(
                        Icons.bloodtype,
                        size: 30,
                        color: Color(0xFFE91E63),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'O+',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Blood Group',
                        style: TextStyle(
                          color: Color(0xFF9E6B7D),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Location
              const Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Color(0xFFE91E63),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Mumbai, India',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Email Container
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),

                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFE91E63),
                      Color(0xFFFF80AB),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),

                child: const Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'your@email.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
