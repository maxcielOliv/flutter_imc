import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final Widget text;
  const Info({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
          elevation: 5, color: Theme.of(context).primaryColor, child: text),
    );
  }
}
