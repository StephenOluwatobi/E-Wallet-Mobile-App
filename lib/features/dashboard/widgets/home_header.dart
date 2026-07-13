import 'package:e_wallet_mobile_app/utils/images_string.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. The Base: Return a Stack

    return Stack(
      clipBehavior: Clip.none,
      children: [
        const SizedBox(height: 350),
        // ---------------------------------------------------------
        // THE BACKGROUND LAYER (Purple Area)
        // ---------------------------------------------------------
        Container(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 20,
            top: MediaQuery.of(context).padding.top + 20,
          ),
          height: 300,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.topRight,
              colors: [
                Color(0xFF35206D),
                Color(0xFF4B2D8C),
                Color.fromARGB(255, 56, 18, 159),
              ],
            ),

            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(1),
              bottomRight: Radius.circular(1),
            ),
          ),

          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),

                  Spacer(),

                  CircleAvatar(
                    radius: 22,

                    backgroundColor: Colors.white,
                    child: Image.asset(EImages.notification2),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Available Balance',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),

                  SizedBox(height: 1),

                  Text(
                    '\$450.45',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
