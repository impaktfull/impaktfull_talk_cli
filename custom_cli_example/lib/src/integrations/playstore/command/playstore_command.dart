import 'dart:async';

import 'package:args/command_runner.dart';
import 'package:fb_cli/src/integrations/playstore/plugin/playstore_plugin.dart';

class PlaystoreCommand extends Command {
  PlaystoreCommand() {
    final argParser = super.argParser;
    argParser.addOption(
      'path',
      abbr: 'p',
      help: 'The path to the APK file.',
      mandatory: true,
    );
    argParser.addFlag(
      'changelog',
      abbr: 'c',
      help: 'Whether to generate a changelog.',
      defaultsTo: true,
      negatable: true,
    );
    argParser.addMultiOption(
      'type',
      abbr: 't',
      help: 'Which type of file to upload.',
      allowed: ['aab', 'apk'],
      defaultsTo: ['aab'],
    );
  }

  @override
  String get name => 'playstore';

  @override
  String get description => 'Uploads the app to the Play Store.';

  @override
  FutureOr? run() async {
    final path = argResults!.option('path')!;
    final generateChangelog = argResults!.flag('changelog');
    await PlaystorePlugin().publish(path, generateChangelog);
  }
}
