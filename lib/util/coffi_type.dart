import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CofeeType extends StatelessWidget {
  final String coffetype;
  CofeeType({super.key,required this.coffetype});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Text(coffetype,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.orange),),
    );
  }
}
