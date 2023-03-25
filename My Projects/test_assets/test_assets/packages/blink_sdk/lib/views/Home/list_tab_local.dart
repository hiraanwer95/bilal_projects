import 'package:flutter/material.dart';

class MyListTab {
  /// Create a new [ListTab]
  const MyListTab(
      { Key? key,
       this.icon,
      required this.label,
      
      
      this.borderRadius = const BorderRadius.all(const Radius.circular(5.0)),
      this.activeBackgroundColor = Colors.blue,
      this.inactiveBackgroundColor = Colors.transparent,
      this.showIconOnList = false,
      //this.borderColor = Colors.transparent
      
      
      })
      : assert(label != null),
        assert(borderRadius != null),
        assert(activeBackgroundColor != null),
        assert(inactiveBackgroundColor != null),
        assert(showIconOnList != null);
       // assert(borderColor != null);

  /// Trailing widget for a tab, typically an [Icon].
  final Widget? icon;

  /// Label to be shown in the tab, must be non-null.
  final String label;

  /// [BorderRadius] for the a tab at the bottom tab view.
  /// This won't affect the tab in the scrollable list.
  final BorderRadiusGeometry borderRadius;

  /// Color to be used when the tab is selected.
  final Color activeBackgroundColor;

  /// Color to be used when tab is not selected
  final Color inactiveBackgroundColor;

  /// If true, the [icon] will also be shown to the user in the scrollable list.
  final bool showIconOnList;

  /// Color of the [Border] property of the inner tab [Container].
  //final Color borderColor;

  final bool isInactive = false;
}
