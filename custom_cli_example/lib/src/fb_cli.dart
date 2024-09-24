import 'package:args/command_runner.dart';
import 'package:fb_cli/src/core/util/logger/fb_cli_logger.dart';
import 'package:fb_cli/src/integrations/playstore/command/playstore_command.dart';

class FlutterBelgiumCli {
  Future<void> run(List<String> arguments) async {
    final runner = CommandRunner(
      'fb_cli',
      'A cli that replaces `fastlane` by simplifying the CI/CD process.',
    );
    final commands = [
      PlaystoreCommand(),
    ];
    for (final command in commands) {
      runner.addCommand(command);
    }
    await runner.run(arguments);
    FlutterBelgiumCliLogger.stopSpinner();
  }
}
