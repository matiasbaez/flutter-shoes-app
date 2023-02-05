import 'package:flutter/material.dart';

import 'package:shoes/src/witgets/witgets.dart';

class ShoesScreen extends StatelessWidget {
  const ShoesScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          const CustomAppbar(text: 'For you'),

          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: const [
                  ShoePreview(),

                  ShoeDescription(
                    title: 'Nike Air Max 720',
                    description: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),

                  ShoeDescription(
                    title: 'Nike Air Max 720',
                    description: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),

                  ShoeDescription(
                    title: 'Nike Air Max 720',
                    description: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                ],
              ),
            )
          ),

          const AddToCartContainer( amount: 180.0 ),
        ],
      ),
    );
  }
}
