import 'package:flutter/material.dart';

class ResponsiveHelper extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const ResponsiveHelper(
      {Key? key,
      required this.mobile,
      required this.tablet,
      required this.desktop})
      : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // if width is more than 1100 we consider it as Desktop
    if (_size.width >= 1100) {
      return desktop;
    }
    // if width is less than 1100 and more than 850 we consider it as Tablet
    else if (_size.width >= 850 && tablet != null) {
      return tablet!;
    }
    // if width is less than 850 we consider it as Mobile
    else {
      return mobile;
    }
  }
}
