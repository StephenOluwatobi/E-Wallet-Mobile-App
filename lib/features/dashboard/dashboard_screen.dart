import 'package:e_wallet_mobile_app/core/widgets/actionitem.dart';
import 'package:e_wallet_mobile_app/features/dashboard/widgets/home_header.dart';
import 'package:e_wallet_mobile_app/features/dashboard/widgets/payment_list.dart';
import 'package:e_wallet_mobile_app/features/dashboard/widgets/promo_section.dart';
import 'package:e_wallet_mobile_app/utils/images_string.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            const HomeHeader(),

            Positioned(
              top: 270,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.grey.shade200,
                ),

                child: SingleChildScrollView(
                  child: Column(
                    children: [PaymentList(), PromoSection()],
                  ),
                ),
              ),
            ),

            // ---------------------------------------------------------
            // THE FOREGROUND LAYER (Overlapping White Card)
            // ---------------------------------------------------------
            // Use a Positioned widget here.
            Positioned(
              top: 220,
              left: 20,
              right: 20,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ActionItem(
                        text: 'Top up',
                        imageIconPath: EImages.wallet,
                      ),
                      ActionItem(
                        text: 'Send',
                        imageIconPath: EImages.send,
                      ),
                      ActionItem(
                        text: 'Request',
                        imageIconPath: EImages.income,
                      ),
                      ActionItem(
                        text: 'History',
                        imageIconPath: EImages.history,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
