import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vitally/core/themes/app_theme.dart';
import 'package:vitally/core/extensions/theme_colors.dart';
import 'package:vitally/views/home/views/home_page.dart';
import 'package:vitally/views/message/message_view.dart';
import 'package:vitally/views/profile/profile_page.dart';
import 'package:vitally/views/shift/shift_view.dart';
import 'package:vitally/views/welcome/welcome_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vitally',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: const WelcomeView(),
    );
  }
}

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IndexedStack(
          index: _selectedIndex,
          children: const [
            HomePage(),
            MessageView(),
            ShiftView(),
            ProfilePage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/House.svg",
              width: 24,
              height: 24,
              color: Colors.grey,
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/House.svg",
              width: 24,
              height: 24,
              color: context.primary,
            ),
            label: 'Profile',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.email),
            label: 'Messsages',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'My shifts',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/Profile.svg",
              width: 24,
              height: 24,
              color: Colors.grey,
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/Profile.svg",
              width: 24,
              height: 24,
              color: context.primary,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: context.primary,
        unselectedItemColor: Colors.grey[600],
        unselectedLabelStyle: TextStyle(color: Colors.grey[600]),
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedFontSize: 12,
        unselectedFontSize: 12,
      ),
    );
  }
}
