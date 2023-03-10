import 'package:flutter/material.dart';

import 'package:shoes/src/helpers/helpers.dart';
import 'package:shoes/src/widgets/widgets.dart';

class ShoesScreen extends StatelessWidget {
  const ShoesScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){

    changeStatusDark();

    return Scaffold(
      body: Column(
        children: [
          const CustomAppbar(text: 'For you'),

          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: const [

                  Hero(
                    tag: 'shoe-preview',
                    child: ShoePreview()
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
