import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'practice_screen.dart';
import 'learn_screen.dart';
import 'game_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'screens/phone_login_screen.dart';
// You can remove if not using on main screen
// Import other screens like learn_screen.dart and game_screen.dart when added

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ProviderScope(child: SynthMindApp()));
}

class SynthMindApp extends StatelessWidget {
  const SynthMindApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SynthMind',
      initialRoute: '/login',
      routes: {
        '/login': (context) => const PhoneLoginScreen(),
        // Add other routes like '/otp' and '/home' as well
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    PracticeScreen(),
    LearnScreen(),
    GameScreen(),
    Center(child: Text('Learn screen coming soon')),
    Center(child: Text('Games screen coming soon')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SynthMind')),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.code), label: 'Practice'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Learn'),
          BottomNavigationBarItem(
            icon: Icon(Icons.videogame_asset),
            label: 'Games',
          ),
        ],
      ),
    );
  }
}
