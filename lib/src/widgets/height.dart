import 'package:flutter/material.dart';

class Height extends StatelessWidget {
  final TextEditingController height;
  const Height({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: height,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      textInputAction: TextInputAction.send,
      decoration: InputDecoration(
        fillColor: Theme.of(context).primaryColor,
        labelStyle: TextStyle(
            color: Theme.of(context).primaryColor, fontStyle: FontStyle.normal),
        labelText: 'Altura',
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      onSaved: (value) {
        value = height.text;
      },
    );
  }
}
