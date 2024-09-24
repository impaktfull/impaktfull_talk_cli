# Who am I?

- Koen Van Looveren
- Freelance Developer
- Focus on Flutter
- Flutter Belgium organizer
- Webflow & Serverpod enthusiast

# What is this talk about?

- What is a cli?
- Why do you need a custom cli?
- Why use dart for your cli?
- How to write one?
- How I use one?
- When not to use a custom cli?

# What is a CLI?

- Command Line Interface
- Interactive
- flutter / dart = cli
  - `flutter doctor`

# Why do you need a custom cli?

- Simplify company tasks
- Use dart for everything
- Prevent context switching
- (But we already have fastlane?)

# Fastlane or fastpain?

- Ruby
- Gem vs Brew
- Cocoapods
- Dev environment issues

# Why use dart for your cli?

- 1 programming language for all
- No context switching
- AOT cli compilation
- Runs anywhere
- No dev environment issues

# How to write one?

Packages to recommend:

- [cli_spin](https://pub.dev/packages/cli_spin)
- [args](https://pub.dev/packages/args)
- [cli_completion](https://pub.dev/packages/cli_completion)

[DEMO TIME](https://github.com/impaktfull/impaktfull_talk_cli/blob/main/DEMO_1.md)

# How I use one?

[DEMO TIME](https://github.com/impaktfull/impaktfull_talk_cli/blob/main/DEMO_2.md)

# When not to use a custom cli?

Explain why you don't want a custom cli

- Not ready for maintenance?
- No custom implementation needed
- Fastlane is working perfect for you
- You don't like a fun side project
