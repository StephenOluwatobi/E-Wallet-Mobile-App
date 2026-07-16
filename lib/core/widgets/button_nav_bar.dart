import 'package:e_wallet_mobile_app/features/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';

class ButtonNavBar extends StatefulWidget {
  const ButtonNavBar({super.key});

  @override
  State<ButtonNavBar> createState() => _ButtonNavBarState();
}

class _ButtonNavBarState extends State<ButtonNavBar> {
  final int _currentIndex = 0;

  final List<Widget> _screens = [
    const DashboardScreen(), // Index 0: Home
    const Placeholder(), // Index 1: Statistic
    const Placeholder(), // Index 2: Scan
    const Placeholder(), // Index 3: Transactions
    const Placeholder(), // Index 4: Profile
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepPurpleAccent,
        shape: const CircleBorder(),
        child: Icon(Icons.qr_code_scanner, color: Colors.white),
      ),

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        notchMargin: 8.0,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home, color: Colors.deepPurpleAccent),
              iconSize: 30,
            ),
            SizedBox(width: 20),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.bar_chart, color: Colors.deepPurpleAccent),
              iconSize: 30,
            ),

            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.receipt_long, color: Colors.deepPurpleAccent),
              iconSize: 30,
            ),
            SizedBox(width: 20),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person, color: Colors.deepPurpleAccent),
              iconSize: 30,
            ),
          ],
        ),
      ),
    );
  }
}
