import 'package:fb_cli/fb_cli.dart';

Future<void> main(List<String> arguments) async {
  PlaystorePlugin().publish('path', true);
}
