import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {

  final String text;

  const AddToCartButton({
    Key? key,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      width: 150,
      height: 50,
      margin: const EdgeInsets.only( right: 20 ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular( 100 )
      ),
      child: Text( text, style: const TextStyle( color: Colors.white ) ),
    );
  }
}