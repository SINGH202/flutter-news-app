import 'package:flutter/material.dart';

class CustomTag extends StatelessWidget {
  const CustomTag({
    Key? key,

    required this.children,
  }) : super(key: key);


  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white24.withAlpha(100),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}
