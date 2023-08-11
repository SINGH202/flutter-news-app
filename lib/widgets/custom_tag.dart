import 'package:flutter/material.dart';

class CustomTag extends StatelessWidget {
  const CustomTag({Key? key, required this.children, this.isLight = true})
      : super(key: key);

  final List<Widget> children;
  final bool isLight;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: isLight
            ? Colors.white24.withAlpha(100)
            : Colors.black,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}
