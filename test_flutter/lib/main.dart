import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['whats your fav color?', 'whats your fav animal?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First App'),
        ),
        body: Column(
          children: [
            Text(questions[_questionIndex]),
            ElevatedButton(
              onPressed: () => print("Answer 1 print"),
              child: const Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: () {
                // ...
                print("Answer 2 print");
              },
              child: const Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
