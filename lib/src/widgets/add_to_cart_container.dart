import 'package:flutter/material.dart';

import 'package:shoes/src/widgets/widgets.dart';

class AddToCartContainer extends StatelessWidget {

  final double amount;

  const AddToCartContainer({
    super.key,
    required this.amount
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all( 10 ),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular( 100 )
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.only( left: 20 ),
              child: Text( '\$$amount', style: const TextStyle( fontSize: 28, fontWeight: FontWeight.bold ) ),
            ),

            const Spacer(),

            const AddToCartButton(text: 'Add to cart'),

            const SizedBox( width: 15 )
          ],
        ),
      ),
    );
  }
}