import 'package:intl/intl.dart';

extension DoubleUtils on double {
  String toMoneyMask({String prLocation = "pt_BR"}) =>
      NumberFormat.simpleCurrency(locale: prLocation).format(this);

  double percentOf(double prPercent) => (prPercent / 100).round() * this;
}