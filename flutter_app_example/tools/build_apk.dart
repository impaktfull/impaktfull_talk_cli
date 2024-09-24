import 'package:impaktfull_cli/impaktfull_cli.dart';

Future<void> main(List<String> arguments) => ImpaktfullCli(arguments: arguments).run(
      (cli) async {
        final buildNr = await cli.flutterBuildPlugin.versionBump(
          suffix: 'android',
          commitChanges: false,
        );
        return cli.ciCdPlugin.buildAndroid(
          obfuscate: false,
          buildNr: buildNr,
          extension: FlutterBuildAndroidExtension.apk,
        );
      },
    );
