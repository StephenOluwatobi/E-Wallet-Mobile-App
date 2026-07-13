import 'package:e_wallet_mobile_app/features/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const WalletApp());
}

class WalletApp extends StatelessWidget {
  const WalletApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Wallet',
      home: Scaffold(
        backgroundColor: Colors.red,
        body: DashboardScreen(),
      ),
    );
  }
}
