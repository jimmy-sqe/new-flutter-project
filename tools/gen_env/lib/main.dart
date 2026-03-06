import 'dart:io';

void main() {
  stdout.writeln('Generating environment configurations...');

  final launchJsonContent = '''
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "develop",
      "request": "launch",
      "type": "dart",
      "program": "app/lib/main.dart",
      "args": ["--dart-define=FLAVOR=develop"]
    },
    {
      "name": "staging",
      "request": "launch",
      "type": "dart",
      "program": "app/lib/main.dart",
      "args": ["--dart-define=FLAVOR=staging"]
    },
    {
      "name": "production",
      "request": "launch",
      "type": "dart",
      "program": "app/lib/main.dart",
      "args": ["--dart-define=FLAVOR=production"]
    }
  ]
}
''';

  final vscodeDir = Directory('.vscode');
  if (!vscodeDir.existsSync()) {
    vscodeDir.createSync(recursive: true);
  }

  final launchJsonFile = File('.vscode/launch.json');
  launchJsonFile.writeAsStringSync(launchJsonContent);

  stdout.writeln('Generated .vscode/launch.json');
}
