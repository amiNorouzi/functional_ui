part of 'functional_style.dart';

class StyledText {
  Color? _color;
  String? _family;
  double? _size;
  final String value;

  StyledText([this.value = '']);

  StyledText color(Color color) =>
      this
        .._color = color;

  StyledText fontFamily(String? family) =>
      this
        .._family = family;

  Text child(String value) =>
      Text(
        value,
        style: TextStyle(
          color: _color,
          fontFamily: _family,
          fontSize: _size,
        ),
      );

  Text get render => child(value);

  StyledContainer get container => child(value).container;
}

extension TextExtention on String {
  StyledText get text => StyledText(this);

  StyledButton get button => StyledButton(this);
}
