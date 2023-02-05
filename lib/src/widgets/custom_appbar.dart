
  import 'package:flutter/material.dart';

  class CustomAppbar extends StatelessWidget {

    final String text;

    const CustomAppbar({
      Key? key,
      required this.text
    }) : super(key: key);
  
    @override
    Widget build(BuildContext context){
      return SafeArea(
        top: true,
        bottom: false,
        child: Container(
          margin: const EdgeInsets.only(top: 20, bottom: 30),
          padding: const EdgeInsets.symmetric( horizontal: 30 ),
          child: Row(
            children: <Widget>[
              Text( text, style: const TextStyle( fontSize: 30, fontWeight: FontWeight.w700 ) ),
      
              const Spacer(),
      
              const Icon( Icons.search, size: 30 ),
            ],
          ),
        ),
      );
    }
  }