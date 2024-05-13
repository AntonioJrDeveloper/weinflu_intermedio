import 'dart:math';

import 'package:flutter/material.dart';

double getSizeDiagonal(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  num sumaDeLados = pow(size.width, 2) + pow(size.height, 2);
  double diagonal = sqrt(sumaDeLados) * 0.5;
  return diagonal;
}
