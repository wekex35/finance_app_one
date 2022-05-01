import 'package:flutter/material.dart';

openScreen(BuildContext context, screenName) {
  return Navigator.push(context, MaterialPageRoute(builder: (_) => screenName));
}

pushReplacement(BuildContext context, screenName) {
  return Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (_) => screenName));
}

pushRoute(BuildContext context, routeName) {
  return Navigator.of(context).pushNamed(routeName);
}

void pushNamedReplaceRoute(BuildContext context, routeName) {
  Navigator.of(context).pushReplacementNamed(routeName);
}
