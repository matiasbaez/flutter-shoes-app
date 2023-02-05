import 'package:flutter/material.dart';

import 'package:animate_do/animate_do.dart';
import 'package:provider/provider.dart';

import 'package:shoes/src/helpers/helpers.dart';
import 'package:shoes/src/witgets/witgets.dart';
import 'package:shoes/src/models/models.dart';

class ShoeDetailScreen extends StatelessWidget {
  const ShoeDetailScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){

    changeStatusLight();

    return Scaffold(
      body: Column(
        children: [

          Stack(
            children: [

              const Hero(
                tag: 'shoe-preview',
                child: ShoePreview(
                  fullScreen: true
                ),
              ),

              Positioned(
                top: 80,
                left: 10,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pop(context);
                    changeStatusDark();
                  },
                  elevation: 0,
                  highlightElevation: 0,
                  backgroundColor: Colors.transparent,
                  child: const Icon( Icons.chevron_left, size: 60, color: Colors.white ),
                )
              )

            ],
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  ShoeDescription(
                    title: 'Nike Air Max 720',
                    description: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                ],
              ),
            )
          ),

          const _AmountContainer(),

          _ShowColors(),

          const _ShowDescriptionButtons(),
        ],
      ),
    );
  }
}

class _AmountContainer extends StatelessWidget {

  const _AmountContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 30 ),
      child: Container(
        margin: const EdgeInsets.only( top: 20, bottom: 20 ),
        child: Row(
          children: [
            const Text( '\$180.0', style: TextStyle( fontSize: 28, fontWeight: FontWeight.bold ) ),

            const Spacer(),

            Bounce(
              from: 8,
              delay: const Duration( milliseconds: 500 ),
              child: const AddToCartButton(
                text: 'Add to cart',
                width: 120,
                height: 40,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ShowColors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 30 ),
      child: Row(
        children: [

          Expanded(
            child: Stack(
              children: const [
                Positioned( left: 90, child: _ColorButton( color: Color(0xffC6D642), image: 'assets/imgs/verde.png', index: 4 ) ),
                Positioned( left: 60, child: _ColorButton( color: Color(0xffFFAD29), image: 'assets/imgs/amarillo.png', index: 3 ) ),
                Positioned( left: 30, child: _ColorButton( color: Color(0xff2099F1), image: 'assets/imgs/azul.png', index: 2 ) ),
                _ColorButton( color: Color(0xff364D56), image: 'assets/imgs/negro.png', index: 1 ),
              ],
            ),
          ),  

          AddToCartButton(
            text: 'More related items',
            height: 30,
            color: Colors.orange.withOpacity(0.5),
          )

        ],
      ),
    );
  }
}

class _ColorButton extends StatelessWidget {

  final String image;
  final Color color;
  final int index;

  const _ColorButton({
    Key? key,
    required this.index,
    required this.color, required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return FadeInLeft(
      delay: Duration( milliseconds: index * 100 ),
      duration: const Duration( milliseconds: 300 ),
      child: GestureDetector(
        onTap: () {
          final shoeModel = Provider.of<ShoeModel>(context, listen: false).assetImage = image;
        },
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle
          ),
        ),
      ),
    );
  }
}

class _ShowDescriptionButtons extends StatelessWidget {
  const _ShowDescriptionButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( vertical: 30 ),
      padding: const EdgeInsets.symmetric( horizontal: 30 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          const _DetailButton( icon: Icon( Icons.heart_broken, color: Colors.red, size: 25 ) ),
          _DetailButton( icon: Icon( Icons.add_shopping_cart, color: Colors.grey.withOpacity(0.5), size: 25 ) ),
          _DetailButton( icon: Icon( Icons.settings, color: Colors.grey.withOpacity(0.5), size: 25 ) ),

        ],
      ),
    );
  }
}

class _DetailButton extends StatelessWidget {

  final Icon icon;

  const _DetailButton({
    Key? key, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow( color: Colors.black12, spreadRadius: -5, blurRadius: 20, offset: Offset(0, 10) )
        ]
      ),
      child: icon,
    );
  }
}
