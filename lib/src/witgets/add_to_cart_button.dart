import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {

  final Color color;
  final String text;
  final double width;
  final double height;

  const AddToCartButton({
    Key? key,
    this.width = 150,
    this.height = 50,
    this.color = Colors.orange,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular( 100 )
      ),
      child: Text( text, style: const TextStyle( color: Colors.white ) ),
    );
  }
}