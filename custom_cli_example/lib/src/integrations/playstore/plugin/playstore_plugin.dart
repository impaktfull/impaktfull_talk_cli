import 'package:fb_cli/src/core/util/logger/fb_cli_logger.dart';

class PlaystorePlugin {
  Future<void> publish(
    String path,
    bool generateChangelog,
  ) async {
    FlutterBelgiumCliLogger.startSpinner('Validating the APK ($path)');
    await Future.delayed(Duration(seconds: 1));
    FlutterBelgiumCliLogger.warningSpinner("The APK path is not valid, let's try anyway");
    if (generateChangelog) {
      FlutterBelgiumCliLogger.startSpinner('Generating changelog');
      await Future.delayed(Duration(seconds: 1));
    }
    FlutterBelgiumCliLogger.startSpinner('Uploading the app to the Play Store');
    await Future.delayed(Duration(seconds: 1));
    FlutterBelgiumCliLogger.failSpinner('Failed to upload the app to the Play Store');
  }
}
