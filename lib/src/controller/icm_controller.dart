import 'package:flutter/material.dart';

class ImcController extends ChangeNotifier {
  double total = 0.0;

  sum(double weight, double height) {
    if (total == 0) {
      total = 0.0;
    }

    total = weight / (height * height);

    notifyListeners();
  }
}
