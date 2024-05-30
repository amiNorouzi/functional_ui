import 'package:flutter/cupertino.dart';

extension WidgetExtension on Widget {
  Expanded get expanded => Expanded(child: this);
  Expanded flex(int flex) => Expanded(flex: flex, child: this);
  Center get center => Center(child: this);

  Padding margin(EdgeInsetsGeometry margin) => Padding(
        padding: margin,
        child: this,
      );
}
