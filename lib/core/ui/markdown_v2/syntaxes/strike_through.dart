import 'package:markdown/markdown.dart';

class StrikeThroughSyntax extends DelimiterSyntax {
  StrikeThroughSyntax()
    : super(
        '~~',
        requiresDelimiterRun: true,
        allowIntraWord: true,
        startCharacter: 0x7E,
        tags: [DelimiterTag('del', 2)],
      );
}
