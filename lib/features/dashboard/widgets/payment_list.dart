import 'package:e_wallet_mobile_app/core/widgets/actionitem.dart';
import 'package:e_wallet_mobile_app/utils/images_string.dart';
import 'package:flutter/material.dart';

class PaymentList extends StatelessWidget {
  const PaymentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 30, right: 30),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Payment List',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          GridView.count(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            childAspectRatio: 0.8,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 4,
            mainAxisSpacing: 10,
            crossAxisSpacing: 15,
            children: [
              ActionItem(text: 'Internet', imageIconPath: EImages.wifi),

              ActionItem(
                text: 'Electricity',
                imageIconPath: EImages.lightningBolt,
              ),
              ActionItem(text: 'Voucher', imageIconPath: EImages.voucher),
              ActionItem(text: 'Assurance', imageIconPath: EImages.firstAidKit),
              ActionItem(
                text: 'Mobile Credit',
                imageIconPath: EImages.smartPhone,
              ),
              ActionItem(text: 'Bill', imageIconPath: EImages.receipt),
              ActionItem(text: 'Marchant', imageIconPath: EImages.shopingCart),
              ActionItem(text: 'More', imageIconPath: EImages.more),
            ],
          ),
        ],
      ),
    );
  }
}
