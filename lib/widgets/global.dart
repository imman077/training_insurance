import 'package:flutter/material.dart';

bool media(BuildContext context, double width) {
  return MediaQuery.of(context).size.width < width;
}