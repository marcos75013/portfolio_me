import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'widgets/animated_avatar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData.dark().copyWith(
        colorScheme: const ColorScheme.dark(
          primary: Colors.blue,
          secondary: Colors.green,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          TabBarView(
            controller: _tabController,
            children: const [
              DevTab(),
              DesignTab(),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: TabBar(
                controller: _tabController,
                tabs: const [
                  Tab(text: 'Développeur'),
                  Tab(text: 'Design UI/UX'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DevTab extends StatelessWidget {
  const DevTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/mohammad-rahmani-8OnkIkFBBtM-unsplash.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AnimatedAvatar(
                radius: 100,
                imagePath: 'assets/photo_CV.jpeg',
              ),
              const SizedBox(height: 20),
              const Text(
                'Marcos Martins',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const Text(
                'Dev web & mobile',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.purple),
              ),
              const SizedBox(height: 30),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    '<Compétences-techniques/>',
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                totalRepeatCount: 1,
              ),
              const SizedBox(height: 10),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[Colors.transparent, Colors.white, Colors.white, Colors.transparent],
                    stops: [0.0, 0.1, 0.9, 1.0],
                  ).createShader(bounds);
                },
                blendMode: BlendMode.dstIn,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset('assets/pngegg (1).png', width: 50, height: 50),
                      const SizedBox(width: 10),
                      Image.asset('assets/pngegg (2).png', width: 50, height: 50),
                      const SizedBox(width: 10),
                      Image.asset('assets/pngegg (3).png', width: 50, height: 50),
                      const SizedBox(width: 10),
                      Image.asset('assets/pngegg (4).png', width: 50, height: 50),
                      const SizedBox(width: 10),
                      Image.asset('assets/pngegg33.png', width: 50, height: 50),
                      const SizedBox(width: 10),
                      Image.asset('assets/pngwing.com.png', width: 50, height: 50),
                      const SizedBox(width: 10),
                      Image.asset('assets/pngegg (1).png', width: 50, height: 50),
                      const SizedBox(width: 10),
                      Image.asset('assets/pngegg (2).png', width: 50, height: 50),
                      const SizedBox(width: 10),
                      Image.asset('assets/pngegg (3).png', width: 50, height: 50),
                      const SizedBox(width: 10),
                      Image.asset('assets/pngegg (4).png', width: 50, height: 50),
                      const SizedBox(width: 10),
                      Image.asset('assets/pngegg33.png', width: 50, height: 50),
                      const SizedBox(width: 10),
                      // Ajoute d'autres images de compétences ici
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Projets:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const Text('Projet 1, Projet 2, Projet 3, etc.', style: TextStyle(color: Colors.white)),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Action du bouton
                },
                child: const Text('Voir mon GitHub'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DesignTab extends StatelessWidget {
  const DesignTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/efe-kurnaz-RnCPiXixooY-unsplash.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AnimatedAvatar(
                radius: 100,
                imagePath: 'assets/IMG_3701.jpg', // Remplace par une image appropriée pour le design
              ),
              const SizedBox(height: 20),
              const Text(
                'Marcos Martins !',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const Text(
                'Designer UI/UX',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.purple),
              ),
              const SizedBox(height: 30),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    '<Compétences-design/>',
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                totalRepeatCount: 1,
              ),
              const SizedBox(height: 10),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[Colors.transparent, Colors.white, Colors.white, Colors.transparent],
                    stops: [0.0, 0.1, 0.9, 1.0],
                  ).createShader(bounds);
                },
                blendMode: BlendMode.dstIn,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset('assets/adobe_xd.png', width: 50, height: 50), // Remplace par des images appropriées
                      const SizedBox(width: 10),
                      Image.asset('assets/figma.png', width: 50, height: 50),
                      const SizedBox(width: 10),
                      Image.asset('assets/sketch.png', width: 50, height: 50),
                      const SizedBox(width: 10),
                      Image.asset('assets/photoshop.png', width: 50, height: 50),
                      const SizedBox(width: 10),
                      Image.asset('assets/illustrator.png', width: 50, height: 50),
                      const SizedBox(width: 10),
                      // Ajoute d'autres images de compétences ici
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Projets:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const Text('Projet 1, Projet 2, Projet 3, etc.', style: TextStyle(color: Colors.white)),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Action du bouton
                },
                child: const Text('Voir mon Behance'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
