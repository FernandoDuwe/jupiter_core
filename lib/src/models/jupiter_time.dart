import 'package:jupiter_core/src/classes/jupiter_model.dart';

const int MILISECONDS_TO_HOURS = 36000000;
const int MILISECONDS_TO_MINUTES = 60000;
const int MILISECONDS_TO_SECONDS = 1000;

class JupiterTime extends JupiterModel {
  bool _ignoreHours = false;

  int hour = 0;
  int minute = 0;
  int second = 0;
  int miliseconds = 0;

  int _hoursInMiliseconds(int prMiliseconds) {
    return (prMiliseconds / MILISECONDS_TO_HOURS).truncate();
  }

  int _minutesInMiliseconds(int prMiliseconds) {
    return (prMiliseconds / MILISECONDS_TO_MINUTES).truncate();
  }

  int _secondsInMiliseconds(int prMiliseconds) {
    return (prMiliseconds / MILISECONDS_TO_SECONDS).truncate();
  }

  String _formatValue(String value, int size) {
    while (value.length < size) value = "0" + value;

    return value;
  }

  JupiterTime(
      {required this.hour,
      required this.minute,
      required this.second,
      bool prIgnoreHour = false}) {
    this._ignoreHours = prIgnoreHour;
  }

  JupiterTime.fromMiliseconds(int prMiliseconds) {
    this._ignoreHours = false;

    int totalMiliseconds = prMiliseconds;

    hour = _hoursInMiliseconds(totalMiliseconds);

    totalMiliseconds = totalMiliseconds -
        (_hoursInMiliseconds(totalMiliseconds) * MILISECONDS_TO_HOURS);

    minute = _minutesInMiliseconds(totalMiliseconds);

    totalMiliseconds = totalMiliseconds -
        (_minutesInMiliseconds(totalMiliseconds) * MILISECONDS_TO_MINUTES);

    second = _secondsInMiliseconds(totalMiliseconds);

    totalMiliseconds = totalMiliseconds -
        (_secondsInMiliseconds(totalMiliseconds) * MILISECONDS_TO_SECONDS);

    miliseconds = totalMiliseconds;
  }

  JupiterTime.fromMilisecondsWithoutHour(int prMiliseconds) {
    this._ignoreHours = true;

    int totalMiliseconds = prMiliseconds;

    minute = _minutesInMiliseconds(totalMiliseconds);

    totalMiliseconds = totalMiliseconds -
        (_minutesInMiliseconds(totalMiliseconds) * MILISECONDS_TO_MINUTES);

    second = _secondsInMiliseconds(totalMiliseconds);

    totalMiliseconds = totalMiliseconds -
        (_secondsInMiliseconds(totalMiliseconds) * MILISECONDS_TO_SECONDS);

    miliseconds = totalMiliseconds;
  }

  @override
  String toString() => this.format();

  String format({ignoreMiliseconds = false}) {
    String vrHour = _formatValue(hour.toString(), 2);
    String vrMinutes = _formatValue(minute.toString(), 2);
    String vrSeconds = _formatValue(second.toString(), 2);
    String vrMiliseconds = _formatValue(miliseconds.toString(), 3);

    if (ignoreMiliseconds) {
      return ((this._ignoreHours ? "" : vrHour + ":") +
          vrMinutes +
          ":" +
          vrSeconds);
    } else {
      return ((this._ignoreHours ? "" : vrHour + ":") +
          vrMinutes +
          ":" +
          vrSeconds +
          ":" +
          vrMiliseconds);
    }
  }
}
