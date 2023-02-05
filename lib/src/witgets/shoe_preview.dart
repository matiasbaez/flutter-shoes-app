import 'package:flutter/material.dart';

class ShoePreview extends StatelessWidget {
  const ShoePreview({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 20 ),
      child: Container(
        height: 430,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffFFCF53),
          borderRadius: BorderRadius.circular(50)
        ),
        child: Column(
          children: [
            // Shoe with shadow
            _ShowWithShadow(),

            // Sizes
            _ShoeSizes()
          ],
        )
      ),
    );
  }
}

class _ShowWithShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: const <Widget>[

          Positioned(
            right: 0,
            bottom: 20,
            child: _Shadow()
          ),

          Image(image: AssetImage('assets/imgs/azul.png'))
        ],
      ),
    );
  }
}

class _Shadow extends StatelessWidget {
  const _Shadow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
          // color: Colors.transparent,
          borderRadius: BorderRadius.circular(100),
          boxShadow: const [
            BoxShadow( color: Color(0xffEAA14E), blurRadius: 40 )
          ]
        ),
      ),
    );
  }
}

class _ShoeSizes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 10 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [

          _ShowSizeBox(size: 7),

          _ShowSizeBox(size: 7.5),

          _ShowSizeBox(size: 8),

          _ShowSizeBox(size: 8.5),

          _ShowSizeBox(size: 9),

          _ShowSizeBox(size: 9.5),

        ]
      ),
    );
  }
}

class _ShowSizeBox extends StatelessWidget {

  final double size;

  const _ShowSizeBox({
    Key? key, required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: (size == 9) ? const Color(0xffF99606) : Colors.white,
        borderRadius: BorderRadius.circular( 10 ),
        boxShadow: [
          if (size == 9) const BoxShadow(color: Color(0xffF1A23A), blurRadius: 10, offset: Offset(0, 5) )
        ] 
      ),
      child: Text(
        size.toString().replaceAll('.0', ''),
        style: TextStyle( color: (size == 9) ? Colors.white : const Color(0xffF1A23A), fontSize: 16, fontWeight: FontWeight.bold )
      ),
    );
  }
}