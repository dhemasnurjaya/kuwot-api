/// Humble class for time related operations.
abstract class Time {
  /// Get unix timestamp in seconds.
  int getUnixTimestamp();
}

/// Implementation of [Time] using [DateTime].
class TimeImpl implements Time {
  @override
  int getUnixTimestamp() {
    return DateTime.now().millisecondsSinceEpoch ~/ 1000;
  }
}
