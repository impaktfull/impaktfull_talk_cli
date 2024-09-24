# DEMO 2 (How I use a custom dart cli?)

## Project

- Open `flutter_app_example`

## Understand the code

`tools/build_apk.dart` is this a custom dart script that used the `impaktfull_cli` package to build the apk.

Sure you can use the `flutter build apk` command. But in order to build dart scripts in a type safe way I added the flutter build commands to the `impaktfull_cli` package.

### Plugins

You can use all plugins exposed by the `impaktfull_cli` package. This way you don't need to think on how you should call the cli. But just run the custom scripts for the app.
It also allows you to chain commands together in a type safe way.

### Commands

The `impaktfull_cli` only has 2 exposed commands. Mainly commands that are not used quite often.

```
Available commands:
  android             Commands for Android integrations.
  apple_certificate   Build the app-in-app artifacts.
```
