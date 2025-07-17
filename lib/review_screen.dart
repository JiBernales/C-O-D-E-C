import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'c_content.dart';
import 'models.dart';

class ReviewScreen extends StatefulWidget {
  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              'Review C Lessons',
                style: Theme.of(context).textTheme.labelLarge
            ),
            Divider(
              height: MediaQuery.of(context).size.height * 0.05,
              thickness: 2,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ReviewLevels(),
                  Container()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<ReviewLevel> generateReviewLevels() {
  return [
    ReviewLevel(level: 1, items: 10, quizzes: [...allLessons['c_lesson_1']!.quizzes,].toList()..shuffle()),
    ReviewLevel(level: 2, items: 20, quizzes: [...allLessons['c_lesson_1']!.quizzes,...allLessons['c_lesson_2']!.quizzes, ...allLessons['c_lesson_3']!.quizzes,].toList()..shuffle()),
    ReviewLevel(level: 3, items: 10, quizzes: [...allLessons['c_lesson_4']!.quizzes, ...allLessons['c_lesson_5']!.quizzes,].toList()..shuffle()),
    ReviewLevel(level: 4, items: 20, quizzes: [...allLessons['c_lesson_6']!.quizzes, ...allLessons['c_lesson_7']!.quizzes,...allLessons['c_lesson_8']!.quizzes,
    ].toList()..shuffle()),
    ReviewLevel(level: 5, items: 10, quizzes: [...allLessons['c_lesson_9']!.quizzes, ...allLessons['c_lesson_10']!.quizzes,
    ].toList()..shuffle()),
  ];
}

_showLessonInfo(BuildContext context, ReviewLevel level) {
  String content = "";
  switch (level.level){
    case 1:
      content = '\n\nBasic Concepts and Logic Design';
      break;
    case 2:
      content = '\n\nBasic Concepts and Logic Design\nC# Programming Language and Origin\nC# Programming Language Environment: IDE';
      break;
    case 3:
      content = '\n\nData Types, Variables, and Constants\nOperators, Expressions and Type Conversion';
      break;
    case 4:
      content = '\n\nC# Programming Input-Output Console\nConditional Statements\nC# Looping and Iteration';
      break;
    case 5:
      content = '\n\nMethods and Encapsulation\nArrays';
      break;
  }

  showDialog(
    context: context,
    builder: (BuildContext context) {
      int lvl = level.level;
      return AlertDialog(
        title: Text('Level $lvl Coverage'),
        content: Text(content, style: Theme.of(context).textTheme.displayMedium),
        actions: [
          TextButton(
            child: Text('Close'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}


class ReviewLevels extends StatelessWidget {
  final List<ReviewLevel> reviewLevels = generateReviewLevels();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: reviewLevels.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.info_outline, color: Colors.black, size: 18),
                    onPressed: () {
                      _showLessonInfo(context, reviewLevels[index]);
                    },
                    tooltip: 'Lessons Covered & Items',
                  ),
                ],
              ),
              title: Text('Level ${reviewLevels[index].level} Questions', style: TextStyle(color: Colors.black)),
              trailing: Icon(Icons.arrow_forward, color: Colors.black),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReviewLevelScreen(level: reviewLevels[index], onReviewComplete: () {  },),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class ReviewLevelScreen extends StatefulWidget {
  final ReviewLevel level;
  final VoidCallback onReviewComplete;

  const ReviewLevelScreen({required this.level, required this.onReviewComplete});

  @override
  _ReviewLevelScreenState createState() => _ReviewLevelScreenState();
}

class _ReviewLevelScreenState extends State<ReviewLevelScreen> {
  PageController _pageController = PageController();
  ValueNotifier<double> _progressNotifier = ValueNotifier(0);
  SharedPreferences? sharedPrefs;
  int score = 0;

  @override
  void initState() {
    super.initState();
    final List<Quiz> quizzes = widget.level.quizzes;
    _pageController.addListener(_onPageChanged);
    _progressNotifier.value = widget.level.items > 0 ? 1.0 / widget.level.items : 0;
    _initSharedPrefs();
  }

  @override
  void dispose() {
    _pageController.removeListener(_onPageChanged);
    _pageController.dispose();
    _progressNotifier.dispose();
    super.dispose();
  }

  Future<void> _initSharedPrefs() async {
    sharedPrefs = await SharedPreferences.getInstance();
    // Check if sharedPrefs is not null before accessing methods
    if (sharedPrefs != null) {
      sharedPrefs?.setInt('reviewScore', 0);
      score = sharedPrefs!.getInt('reviewScore') ?? 0;
    }
  }

  void _onPageChanged() {
    _progressNotifier.value = (_pageController.page ?? 0) / widget.level.items;
  }

  Future<void> _goToNextPage() async {
    if (_pageController.page!.toInt() + 1 <
        (widget.level.items)) {
      _pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    } else {
      // Call the onLessonComplete callback without an argument
      widget.onReviewComplete();
      int finalScore = sharedPrefs?.getInt('reviewScore') ?? 0;
      sharedPrefs?.setInt('reviewScore', 0);
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ScoreScreen(score: finalScore, total: widget.level.items),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    int totalItems = widget.level.items;
    List<Widget> pages = [];
    pages.addAll(widget.level.quizzes.take(totalItems).map((quiz) => ReviewQuiz(
      controller: _pageController,
      quiz: quiz,
      onNextPage: _goToNextPage,
      totalItems: totalItems,
      pageIndex: pages.length,
    )).toList());

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          iconTheme: IconThemeData(color: Colors.black),
          leading: IconButton(
              color: Colors.white,
              icon: Icon(Icons.close),
              onPressed: () {Navigator.pop(context);}
          ),
          title: Text(
            'Review',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            ValueListenableBuilder<double>(
              valueListenable: _progressNotifier,
              builder: (context, value, child) {
                final Color dynamicColor = Color.lerp(Colors.lightBlue[300], Colors.indigo[900], value.clamp(0.0, 1.0))!;

                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    height: 20,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: LinearProgressIndicator(
                        color: dynamicColor,
                        value: value,
                      ),
                    ),
                  ),
                );
              },
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                children: pages,
                physics: NeverScrollableScrollPhysics(),
              ),
            ),
          ],
        )
    );
  }
}

class ReviewQuiz extends StatefulWidget {
  final Quiz quiz;
  final VoidCallback onNextPage;
  final int totalItems;
  final int pageIndex;
  final PageController controller;

  ReviewQuiz({
    required this.controller,
    required this.quiz,
    required this.onNextPage,
    required this.totalItems,
    required this.pageIndex,
  });

  @override
  _ReviewQuizState createState() => _ReviewQuizState();
}

class _ReviewQuizState extends State<ReviewQuiz> {
  bool answered = false;
  bool isCorrect = false;
  String userAnswer = "";
  String? correctAnswer;
  String? selectedOption;
  int correctOptionIndexInShuffledList = 0;
  List<String> shuffledOptions = [];
  SharedPreferences? sharedPrefs;

  @override
  void initState() {
    super.initState();
    shuffledOptions = widget.quiz.options.toList()..shuffle();
    _initSharedPrefs();
  }

  Future<void> _initSharedPrefs() async {
    sharedPrefs = await SharedPreferences.getInstance();
  }

  _checkAnswer(String selectedOption) {
    setState(() {
      correctAnswer = widget.quiz.options[widget.quiz.correctOptionIndex];
      isCorrect = (userAnswer == correctAnswer);
      if (isCorrect) {
        int score = sharedPrefs!.getInt('reviewScore') ?? 0;
        score++;
        sharedPrefs?.setInt('reviewScore', score);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.quiz.question,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Expanded(
              child: Scrollbar(
                interactive: true,
                radius: Radius.circular(8),
                thickness: 2.0,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      GestureDetector(
                        child:
                        Column(
                          children: shuffledOptions.map((option) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size(double.infinity, 48),
                                    side: BorderSide(
                                      color: answered
                                          ? (option == selectedOption && isCorrect) ? Colors.green.shade500 // Correct answer selected
                                          : (option == selectedOption) ? Colors.red.shade700 // Incorrect answer selected
                                          : (option == widget.quiz.options[widget.quiz.correctOptionIndex])
                                          ? Colors.green.shade500 // Correct option (not selected)
                                          : Colors.red.shade900 // Wrong option (not selected)
                                          : Colors.black, // Default
                                      width: answered
                                          ? (option == widget.quiz.options[widget.quiz.correctOptionIndex])
                                          ? 7.5 // Correct answer
                                          : (option == selectedOption)
                                          ? 5.0 // Correct option (not selected)
                                          : 2.5 // Wrong option (not selected)
                                          : 5.0,// Default
                                    )
                                ),
                                onPressed: answered ? null : () {
                                  setState(() {
                                    userAnswer = option;
                                    selectedOption = userAnswer;
                                    answered = true;
                                    _checkAnswer(userAnswer);
                                  });
                                },
                                child: Text(option, style: TextStyle(fontSize: 18, color: Colors.black)),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          if (answered && !isCorrect) ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                '${widget.quiz.explanation!}',
                style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
              ),
            ),
          ],
          if (answered) ...[
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
              child: Align(
                child: Text(
                  isCorrect ? 'Correct!!!' : 'Incorrect...',
                  style: TextStyle(
                    color: isCorrect ? Colors.green.shade900 : Colors.red.shade700,
                    fontSize: isCorrect ? 30 : 30,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 48),
              backgroundColor: Colors.blue,
            ),
            onPressed: answered ? widget.onNextPage : _checkAnswer(userAnswer!),
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'NEXT',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ScoreScreen extends StatelessWidget {
  final int total;
  final int score;
  const ScoreScreen({required this.score, required this.total});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue[900],
        title: Center(
          child: Text(
            'Review Results',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Spacer(),
            CustomPaint(
              painter: CircleProgress(score, total),
              child: Container(
                width: 300,
                height: 300,
                child: Center(
                  child: Text(
                    '$score \nout of $total',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[900],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                int count = 0;
                Navigator.popUntil(context, (route) {return count++ == 2;});
              },
              child: Text('Finish Review',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo[900],
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
            ),
            Spacer(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class CircleProgress extends CustomPainter {
  final int score;
  final int total;
  double progress;

  CircleProgress(this.score, this.total) : progress = score / total;

  @override
  void paint(Canvas canvas, Size size) {
    Paint background = Paint()
      ..strokeWidth = 25
      ..color = Colors.grey[300]!
      ..style = PaintingStyle.stroke;

    Paint line = Paint()
      ..strokeWidth = 25
      ..color = Colors.indigo.shade900
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = size.width / 2;

    canvas.drawCircle(center, radius, background);
    double angle = 2 * 3.14159 * progress;

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -3.14159 / 2, angle, false, line);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}