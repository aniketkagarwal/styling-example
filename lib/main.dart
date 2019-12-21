import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Styling text')),
        body: Container(
          child: Center(
            child: _myWidget(context),
          ),
        ),
      ),
    );
  }
}

Widget _myWidget(BuildContext context) {
  String myString = 'I ❤️ Flutter';
  print(myString);
  return Text(
    myString,
    style: TextStyle(fontSize: 30.0),
  );
}

--------- Unicode string manipulation ----------------

Widget _myWidget(BuildContext context) {
  String myString = 'Flutter';
  String myChar = myString[0];
  print(myChar);

  String myString = '🍎';
  List<int> codeUnits = myString.codeUnits;
  String myChar = myString[0];
  print(codeUnits);
  print(myChar);

  String myString = '🍎π';

  List<int> codeUnits = myString.codeUnits;
  int numberOfCodeUnits = myString.length;
  int firstCodeUnit = myString.codeUnitAt(0);

  Runes runes = myString.runes;
  int numberOfCodPoints = runes.length;
  int firstCodePoint = runes.first;

  String myString = '🇨🇦';

  Runes runes = myString.runes;
  int numberOfCodePoints = runes.length;
  int firstCodePoint = runes.first;

  String halfFlag = String.fromCharCode(firstCodePoint);
  String s1 = '\u0043';
  String s2 = '\u{43}';
  String s3 = '\u{1F431}';
  String s4 = '\u{65}\u{301}\u{20DD}';
  int charCode = 0x1F431;
  String s5 = String.fromCharCode(charCode);

  String myString = 'I ❤️ Flutter.';
  int startIndex = 5;
  int endIndex = 12;
  String mySubstring = myString.substring(startIndex, endIndex);

  return Text(
    myString,
    style: TextStyle(fontSize: 30.0),
  );
}

---------------- text size ----------------------

Widget _myWidget(BuildContext context) {
  return Text(
    'Styling text in Flutter',
    textScaleFactor: 1.0,
    style: TextStyle(
      fontSize: 30.0,
    ),
  );
}

---------------  text color ----------------------

Widget _myWidget(BuildContext context) {
  return Text(
    'Styling text in Flutter',
    style: TextStyle(
      color: Colors.green,
      fontSize: 30.0,
    ),
  );
}

---------------- Background color ------------------------

Widget _myWidget(BuildContext context) {
  Paint paint = Paint();
  paint.color = Colors.green;

  return Text(
    'Styling text in Flutter',
    style: TextStyle(
      background: paint,
      fontSize: 30.0,
    ),
  );
}

---------------- Bold --------------------

Widget _myWidget(BuildContext context) {
  return Text(
    'Styling text in Flutter',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30.0,
    ),
  );
}

----------------- italic ------------------

Widget _myWidget(BuildContext context) {
  return Text(
    'Styling text in Flutter',
    style: TextStyle(
      fontStyle: FontStyle.italic,
      fontSize: 30.0,
    ),
  );
}

------------------ shadow --------------------

Widget _myWidget(BuildContext context) {
  return Text(
    'Styling text in Flutter',
    style: TextStyle(
      shadows: [
        Shadow(
          blurRadius: 10.0,
          color: Colors.blue,
          offset: Offset(5.0, 5.0),
        ),
      ],
      fontSize: 30.0,
    ),
  );
}

------------------- underline ---------------------

Widget _myWidget(BuildContext context) {
  return Text(
    'Styling text in Flutter',
    style: TextStyle(
      decoration: TextDecoration.underline,
      decorationColor: Colors.black,
      decorationStyle: TextDecorationStyle.solid,
      fontSize: 30.0,
    ),
  );
}

------------------- underlines ----------------------

Widget _myWidget(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        'Styling text in Flutter',
        style: TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Colors.black,
          decorationStyle: TextDecorationStyle.solid,
          fontSize: 30.0,
        ),
      ),
      Text(
        'Styling text in Flutter',
        style: TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Colors.black,
          decorationStyle: TextDecorationStyle.double,
          fontSize: 30.0,
        ),
      ),
      Text(
        'Styling text in Flutter',
        style: TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Colors.black,
          decorationStyle: TextDecorationStyle.dashed,
          fontSize: 30.0,
        ),
      ),
      Text(
        'Styling text in Flutter',
        style: TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Colors.black,
          decorationStyle: TextDecorationStyle.dotted,
          fontSize: 30.0,
        ),
      ),
      Text(
        'Styling text in Flutter',
        style: TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Colors.black,
          decorationStyle: TextDecorationStyle.wavy,
          fontSize: 30.0,
        ),
      ),
      Text(
        'Styling text in Flutter',
        style: TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Colors.blue,
          decorationStyle: TextDecorationStyle.solid,
          fontSize: 30.0,
        ),
      ),
      Text(
        'Styling text in Flutter',
        style: TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.solid,
          fontSize: 30.0,
        ),
      ),
      Text(
        'Styling text in Flutter',
        style: TextStyle(
          decoration: TextDecoration.lineThrough,
          decorationColor: Colors.black,
          decorationStyle: TextDecorationStyle.solid,
          fontSize: 30.0,
        ),
      ),
      Text(
        'Styling text in Flutter',
        style: TextStyle(
          decoration: TextDecoration.overline,
          decorationColor: Colors.black,
          decorationStyle: TextDecorationStyle.solid,
          fontSize: 30.0,
        ),
      ),
    ],
  );
}

------------------ letter spacing --------------------

Widget _myWidget(BuildContext context) {
  return Text(
    'Styling text in Flutter',
    style: TextStyle(
      letterSpacing: -1.0,
      fontSize: 30.0,
    ),
  );
}

-------------------- word spacing ----------------------

Widget _myWidget(BuildContext context) {
  return Text(
    'Styling text in Flutter',
    style: TextStyle(
      wordSpacing: 5.0,
      fontSize: 30.0,
    ),
  );
}

-------------------- font ----------------------

Widget _myWidget(BuildContext context) {
  return Text(
    'Styling text in Flutter',
    style: TextStyle(
      fontFamily: 'DancingScript',
      fontSize: 30.0,
    ),
  );
}

-------------------- theme -------------------

Widget _myWidget(BuildContext context) {
  return Text(
    'Styling text in Flutter',
    style: Theme.of(context).textTheme.title,
  );
}

------------------- RichText --------------------

Widget _myWidget(BuildContext context) {
  return RichText(
      text: TextSpan(
          style: Theme.of(context).textTheme.body1.copyWith(fontSize: 30),
          children: [
            TextSpan(
              text: 'Styling ',
            ),
            TextSpan(
                text: 'text',
                style: TextStyle(
                    color: Colors.blue
                )
            ),
            TextSpan(
              text: ' in Flutter',
            ),
          ]
      )
  );
}

---------------------- find and style RichText substrings ----------------------------

Widget _myWidget(BuildContext context) {
  final String myString =
      'Styling text in Flutter Styling text in Flutter '
      'Styling text in Flutter Styling text in Flutter '
      'Styling text in Flutter Styling text in Flutter '
      'Styling text in Flutter Styling text in Flutter '
      'Styling text in Flutter Styling text in Flutter ';

  final wordToStyle = 'text';
  final style = TextStyle(color: Colors.blue);
  final spans = _getSpans(myString, wordToStyle, style);

  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.body1.copyWith(fontSize: 30),
      children: spans,
    ),
  );
}

List<TextSpan> _getSpans(String text, String matchWord, TextStyle style) {
  List<TextSpan> spans = [];

  int spanBoundary = 0;

  do {
    final startIndex = text.indexOf(matchWord, spanBoundary);

    if (startIndex == -1) {
      spans.add(TextSpan(text: text.substring(spanBoundary)));
      return spans;
    }

    if (startIndex > spanBoundary) {
      spans.add(TextSpan(text: text.substring(spanBoundary, startIndex)));
    }

    final endIndex = startIndex + matchWord.length;
    final spanText = text.substring(startIndex, endIndex);
    spans.add(TextSpan(text: spanText, style: style));

    spanBoundary = endIndex;

  } while (spanBoundary < text.length);

}
