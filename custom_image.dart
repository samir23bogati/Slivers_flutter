import 'package:calculator/constants/assets.dart';
import 'package:flutter/material.dart';

class CustomImageWidget extends StatelessWidget {
  final String url;
  final double height;
  final double width ;

  const CustomImageWidget({
    super.key,
     required this.url, 
     this.height = 100,
      this.width = 100,
      });
  

  @override
  Widget build(BuildContext context) {
    return FadeInImage(

     placeholder: AssetImage(Assets.placeholder),
     image: NetworkImage(url),
      height: height,
      width:width,
     fit: BoxFit.cover,
     );
  }
}