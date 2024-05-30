part of 'functional_style.dart';

class StyledContainer {
  late final Widget? _child;
  late final EdgeInsetsGeometry? _padding;
  late final EdgeInsetsGeometry? _margin;
  late final Color? _color;

  set padding(EdgeInsetsGeometry value) {
    _padding = value;
  }

  set $child(Widget value) {
    _child = value;
  }

  StyledContainer([this._child]);

  Widget child(Widget child) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(color: color),
      child: _child,
    );
  }

  Widget get render => child(_child!);

  set margin(EdgeInsetsGeometry value) => _margin = value;

  set color(Color value) => _color = value;
}

extension ContainerExtension on Widget {
  StyledContainer get container => StyledContainer(this);
}
