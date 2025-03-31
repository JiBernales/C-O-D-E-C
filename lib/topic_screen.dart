import 'package:flutter/material.dart';
import 'dart:math';
import 'c_content.dart';
import 'models.dart';

class TopicScreen extends StatefulWidget {
  final Lesson lesson;
  final VoidCallback onLessonComplete;

  const TopicScreen({required this.lesson, required this.onLessonComplete});

  @override
  _TopicScreenState createState() => _TopicScreenState();
}

class _TopicScreenState extends State<TopicScreen> {
  PageController _pageController = PageController();
  ValueNotifier<double> _progressNotifier = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
    _pageController.addListener(_onPageChanged);
  }

  @override
  void dispose() {
    _pageController.removeListener(_onPageChanged);
    _pageController.dispose();
    _progressNotifier.dispose();
    super.dispose();
  }

  void _onPageChanged() {
    int totalItems = widget.lesson.topics.length + widget.lesson.quizzes.length;
    _progressNotifier.value = (_pageController.page ?? 0) / totalItems;
  }

  void _goToNextPage() {
    if (_pageController.page!.toInt() + 1 <
        (widget.lesson.topics.length + widget.lesson.quizzes.length)) {
      _pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    } else {
      // Call the onLessonComplete callback without an argument
      widget.onLessonComplete();
      Navigator.pop(context); // Return to the previous screen
    }
  }

  @override
  Widget build(BuildContext context) {
    int totalItems = widget.lesson.topics.length + widget.lesson.quizzes.length;
    List<Widget> pages = [];
    pages.addAll(widget.lesson.topics.map((topic) => TopicPage(
      controller: _pageController,
      topic: topic,
      totalItems: totalItems,
      pageIndex: pages.length,
      onNextPage: _goToNextPage,
    )).toList());
    pages.addAll(widget.lesson.quizzes.map((quiz) => QuizPage(
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
          widget.lesson.title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 10),
          ValueListenableBuilder<double>(
            valueListenable: _progressNotifier,
            builder: (context, value, child) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  height: 20,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: LinearProgressIndicator(
                      color: Colors.indigo[900],
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
            ),
          ),
        ],
      ),
    );
  }
}

class TopicPage extends StatelessWidget {
  final Topic topic;
  final int totalItems;
  final int pageIndex;
  final VoidCallback onNextPage;
  final PageController controller;

  TopicPage({
    required this.controller,
    required this.topic,
    required this.totalItems,
    required this.pageIndex,
    required this.onNextPage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            topic.title,
            style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Scrollbar(
              interactive: true,
              radius: Radius.circular(8),
              thickness: 2.0,
              child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: Text(
                          topic.content,
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      SizedBox(height: 20),
                      if (topic.imageUrl != null)
                        Center(
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              InteractiveViewer(
                                child: Image.asset(topic.imageUrl!),
                                minScale: 0.5,
                                maxScale: 5.0,
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(
                                  Icons.zoom_in,
                                  color: Colors.white.withOpacity(0.9),
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
            )
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  'CONTINUE',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              onPressed: onNextPage,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo[900],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  final Quiz quiz;
  final VoidCallback onNextPage;
  final int totalItems;
  final int pageIndex;
  final PageController controller;

  QuizPage({
    required this.controller,
    required this.quiz,
    required this.onNextPage,
    required this.totalItems,
    required this.pageIndex,
  });

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  String? selectedOption;
  bool isCorrect = false;
  String? correctAnswer;
  int correctOptionIndexInShuffledList = 0;
  List<String> shuffledOptions = [];

  @override
  void initState() {
    super.initState();
    shuffledOptions = widget.quiz.options.toList()..shuffle();
  }

  void _checkAnswer(String selectedOption) {
    setState(() {
      this.selectedOption = selectedOption; // Update selectedOption here
      isCorrect = (selectedOption == widget.quiz.options[widget.quiz.correctOptionIndex]);
      correctAnswer = widget.quiz.options[widget.quiz.correctOptionIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: Text(
                      widget.quiz.question,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  SizedBox(height: 20),
                  if (widget.quiz.imageUrl != null)
                    Center(
                        child: InteractiveViewer(
                          child: Image.asset(
                            widget.quiz.imageUrl!,
                          ),
                          minScale: 0.5,
                          maxScale: 5.0,
                        )
                    ),
                ],
              ),
            ),
          ),
          Column(
            children: shuffledOptions.map((option) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 48),
                      side: BorderSide(
                        color: option == selectedOption
                            ? (isCorrect ? Colors.green.shade500 : Colors.red.shade700)
                            : Colors.black,
                        width: option == selectedOption
                            ? (isCorrect ? 5.0 : 3.5)
                            : 3.5,
                      )
                  ),
                  onPressed: () {
                    _checkAnswer(option);
                  },
                  child: Text(option,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black
                      )
                  ),
                ),
              );
            }).toList(),
          ),
          if (selectedOption != null) ...[
            if (isCorrect) ...[
              Spacer(),
              Align(
                child: Text(
                  'CORRECT!',
                  style: TextStyle(
                    color: isCorrect ? Colors.green.shade900 : Colors.red.shade700,
                    fontSize: isCorrect ? 30 : 30,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 48),
                    backgroundColor: Colors.indigo[900],
                  ),
                  onPressed: isCorrect ? widget.onNextPage : null,
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ]
            else...[
              Spacer(),
              Align(
                child: Text(
                  'INCORRECT...',
                  style: TextStyle(
                    color: isCorrect ? Colors.blue.shade900 : Colors.red.shade700,
                    fontSize: isCorrect ? 30 : 30,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 48),
                    backgroundColor: Colors.indigo[900],
                  ),
                  onPressed: isCorrect ? widget.onNextPage : null,
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ]
          else...[
          ]
        ],
      ),
    );
  }
}
