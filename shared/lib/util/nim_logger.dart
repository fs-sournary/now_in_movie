import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class NimLogger {
  static final _logger = Logger();

  static void log(
    dynamic message, {
    Level level = Level.debug,
    dynamic error,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      _logger.log(level, message, error, stackTrace);
    }
  }
}
