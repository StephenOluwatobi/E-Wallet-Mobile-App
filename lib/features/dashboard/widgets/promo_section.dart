import 'package:e_wallet_mobile_app/utils/images_string.dart';
import 'package:flutter/material.dart';

class PromoSection extends StatelessWidget {
  const PromoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Promo & Discount",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Spacer(),

              Text(
                "See More",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.purpleAccent,
                ),
              ),
            ],
          ),

          SizedBox(height: 10),
          //-- Banner section
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(19.0),
                  child: Image.asset(
                    EImages.banner1,
                    width: 310,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),

                ClipRRect(
                  borderRadius: BorderRadius.circular(19.0),
                  child: Image.asset(
                    EImages.banner2,
                    width: 310,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
