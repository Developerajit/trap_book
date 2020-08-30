import 'package:flutter/cupertino.dart';

class GradientContainer extends StatelessWidget{
  final double height;
  final double width;
  final DecorationImage image;
  final Widget child;

  const GradientContainer({Key key, @required this.height, @required this.width,this.image,this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height:height,width:width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          gradient: LinearGradient(colors: [Color(0xFFFFD8CB),Color(0xFFF9D29D)]),
          image: image,
      ),
      child: child,
    );
  }
}