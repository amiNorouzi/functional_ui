part of 'functional_style.dart';

extension ColorExtension on int {
  Color get color => Color(this);
}

extension ColorRGB on (int, int, int) {
  Color get rgb => Color.fromRGBO(this.$1, this.$2, this.$3, 1);
}

extension ColorRGBA on (int, int, int, double) {
  Color get rgba => Color.fromRGBO(this.$1, this.$2, this.$3, this.$4);
}
