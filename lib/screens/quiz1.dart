import 'package:flutter/material.dart';
import 'package:quiz/screens/home.dart';
import 'package:quiz/screens/result2.dart';
import 'package:quiz/services/answer.dart';
import 'package:quiz/screens/category.dart';
import 'package:quiz/screens/result.dart';

class Quiz1 extends StatefulWidget {
  @override
  _Quiz1State createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  List<Icon> _scoreTracker = [];
  int _questionIndex = 0;
  int _totalScore = 0;
  bool _pressedButton = false;
  bool answerWasSelected = false;
  bool endOfQuiz = false;
  bool correctAnswerSelected = false;

  void _questionAnswered(bool answerScore) {
    setState(() {
      answerWasSelected = true;
      if (answerScore) {
        _totalScore++;
      }
      _scoreTracker.add(answerScore
          ? Icon(
              Icons.check_circle,
              color: Colors.green,
            )
          : Icon(
              Icons.clear,
              color: Colors.red,
            ));
      if (_questionIndex + 1 == _questions.length) {
        endOfQuiz = true;
      }
    });
  }

  void _nextQuestion() {
    setState(() {
      _questionIndex++;
      answerWasSelected = false;
      _pressedButton = false;
    });
    if (_questionIndex >= _questions.length) {
      if (_totalScore == 6) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Result()));
        _resetQuiz();
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Result2()));
        _resetQuiz();
      }
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      _scoreTracker = [];
      endOfQuiz = true;
    });
  }

  void _imageExist() {
    if (_questions[_questionIndex]['imageScore'] as bool) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red.shade900,
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Container(
                  width: double.infinity,
                  height: 300.0,
                  margin:
                      EdgeInsets.only(bottom: 10.0, left: 30.0, right: 30.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Visibility(
                        child: Container(
                          height: 150,
                          child: Image.asset(_questions[_questionIndex]
                              ['imagePath'] as String),
                        ),
                      ),
                      Center(
                        child: Text(
                          _questions[_questionIndex]['question'] as String,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )),
              ...(_questions[_questionIndex]['answers']
                      as List<Map<String, Object>>)
                  .map(
                (answer) => Answer(
                  answerText: answer['answerText'] as String,
                  answerTap: () {
                    if (answerWasSelected) {
                      return;
                    }
                    _questionAnswered(answer['score'] as bool);
                    if (!answerWasSelected) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Answer before proceeding')));
                      return;
                    }
                    _nextQuestion();
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ));
  }
}

final _questions = const [
  {
    'question': 'Does the child show an interest in lights?',
    'answers': [
      {
        'answerText': 'Yes',
        'score': true,
      },
      {'answerText': 'No', 'score': false},
      {'answerText': 'I am not sure', 'score': false},
    ],
    'image': true,
    'imagePath': 'assets/null.png'
  },
  {
    'question':
        'Does the child react in advance to approaching objects or people?',
    'answers': [
      {'answerText': 'Yes', 'score': true},
      {'answerText': 'No', 'score': false},
      {'answerText': 'I am not sure', 'score': false},
    ],
    'image': true,
    'imagePath': 'assets/null.png'
  },
  {
    'question':
        'Does the child’s eyes follow their parent’s face and other moving objects?',
    'answers': [
      {'answerText': 'Yes', 'score': true},
      {'answerText': 'No', 'score': false},
      {'answerText': 'I am not sure', 'score': false},
    ],
    'image': true,
    'imagePath': 'assets/null.png'
  },
  {
    'question':
        'Does one of the child’s eyes turn towards the nose or drift outwards (eye not straight)?',
    'answers': [
      {'answerText': 'Yes', 'score': true},
      {'answerText': 'No', 'score': false},
      {'answerText': 'I am not sure', 'score': false},
    ],
    'image': true,
    'imagePath': 'assets/b1.png'
  },
  {
    'question':
        'Does the child’s centre of the eye seem white instead of black?',
    'answers': [
      {'answerText': 'Yes', 'score': true},
      {'answerText': 'No', 'score': false},
      {'answerText': 'I am not sure', 'score': false},
    ],
    'image': true,
    'imagePath': 'assets/b3.png'
  },
  {
    'question':
        'Does the child’s eyes show unusual eye movements (do they move quickly from side to side or wander randomly)?',
    'answers': [
      {'answerText': 'Yes', 'score': true},
      {'answerText': 'No', 'score': false},
      {'answerText': 'I am not sure', 'score': false},
    ],
    'image': true,
    'imagePath': 'assets/b2.png'
  },
];
