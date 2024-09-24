import 'package:cli_spin/cli_spin.dart';

class FlutterBelgiumCliLogger {
  static CliSpin? _cliSpinner;

  static void log(String message) => print(message);

  static void startSpinner(String message) {
    stopSpinner();
    _cliSpinner = CliSpin();
    _cliSpinner?.start(message);
  }

  static void warningSpinner(String message) {
    final cliSpinner = _cliSpinner;
    if (cliSpinner != null) {
      cliSpinner.warn(cliSpinner.text);
      _cliSpinner = CliSpin();
      _cliSpinner?.warn('-> $message');
    }
    cliSpinner?.stop();
    _cliSpinner?.stop();
    _cliSpinner = null;
  }

  static void failSpinner(String message) {
    final cliSpinner = _cliSpinner;
    if (cliSpinner != null) {
      cliSpinner.fail(cliSpinner.text);
      _cliSpinner = CliSpin();
      _cliSpinner?.fail('-> $message');
    }
    cliSpinner?.stop();
    _cliSpinner?.stop();
    _cliSpinner = null;
  }

  static void stopSpinner() {
    final cliSpinner = _cliSpinner;
    if (cliSpinner != null) {
      cliSpinner.success(cliSpinner.text);
    }
    cliSpinner?.stop();
    _cliSpinner = null;
  }
}
