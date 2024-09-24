# DEMO 1 (How to write a custom dart cli?)

## fb_cli

- Open custom_cli_example

### Understand the code

`bin/fb_cli.dart` is the file that will contain the executable file when you run `dart pub run fb_cli`
This file should contain as little as possible. All your business logic should be in the `lib` folder.

The main reason is that you can test your business logic without running the cli. You can also run your import your code into other projects with it is in the `lib` folder.
Make sure to export all files needed in the `lib/fb_cli.dart` file.

#### core

The core folder in `lib/src/core` contains all code related to the core logic related to the cli. Custom argument parsers, custom commands implementations, global utils, extensions,...

#### integrations

The integrations folder in `lib/src/integrations` contains all code related to the integrations with other services. For example, if you want to integrate with playstore, you can create a `playstore` folder and put all the code related to playstore in there.

#### logger

The custom logger has support to show a spinner when the cli is running. You can use it to show the user that the cli is working on something. `cli_spin` is used for this.

### Example (cli)

Open custom_cli_example/bin/fb_cli.dart

Use `-h` or `--help` to see the help message. This is an easy way to explore the cli. (All thanks to the `args` package)

### Example (custom_script)

Open custom_cli_example/example/tools/fb_cli.dart

You can also just simply run the plugins in a custom script. Which makes it easy to run the cli in the future. So you don't forget how you needed to run the cli.

Because dart is typesafe, if breaking changes are made, you will get a compile error. This is a big advantage over bash scripts.
