import 'package:flutter/material.dart';

void goTo(BuildContext context, Widget page) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
}
