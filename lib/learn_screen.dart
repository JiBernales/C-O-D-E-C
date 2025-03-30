import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'c_content.dart';
import 'models.dart';
import 'topic_screen.dart';

class LearnScreen extends StatefulWidget {
  @override
  _LearnScreenState createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
  String selectedCategory = 'C#';
  List<String> categories = ['C#'];
  Map<String, List<Lesson>> lessons = {
    'C#': [],
  };

  @override
  void initState() {
    super.initState();
    _loadLessons();
  }

  Future<void> _loadLessons() async {
    lessons['C#'] = [c_lesson_1,c_lesson_2,c_lesson_3,c_lesson_4,c_lesson_5,c_lesson_6,c_lesson_7,c_lesson_8,c_lesson_9,c_lesson_10,];
    final prefs = await SharedPreferences.getInstance();
    final lessonProgress = prefs.getStringList('lesson_progress_$selectedCategory') ?? [];

    setState(() {
      for (int i = 0; i < lessons[selectedCategory]!.length; i++) {
        if (lessonProgress.contains(lessons[selectedCategory]![i].id)) {
          lessons[selectedCategory]![i].status = LessonStatus.completed;
          lessons[selectedCategory]![i].isCompleted = true;
        } else if (i == 0 || lessons[selectedCategory]![i - 1].isCompleted) {
          lessons[selectedCategory]![i].status = LessonStatus.unlocked;
        } else {
          lessons[selectedCategory]![i].status = LessonStatus.locked;
        }
      }
    });
  }

  Future<void> _saveLessonProgress() async {
    final prefs = await SharedPreferences.getInstance();
    final completedLessons = lessons[selectedCategory]!
        .where((lesson) => lesson.isCompleted)
        .map((lesson) => lesson.id)
        .toList();

    await prefs.setStringList('lesson_progress_$selectedCategory', completedLessons);
  }

  void _completeLesson(Lesson completedLesson) {
    int index = lessons[selectedCategory]!.indexOf(completedLesson);

    setState(() {
      lessons[selectedCategory]![index].isCompleted = true;
      // Update status of the next lesson if necessary
      if (index + 1 < lessons[selectedCategory]!.length) {
        completedLesson.isCompleted = true;
        completedLesson.status = LessonStatus.completed;
        Lesson nextLesson = lessons[selectedCategory]![index+1];
        if (nextLesson.isCompleted == false) {
          nextLesson.status = LessonStatus.unlocked;
        }
      }
      else if (index + 1 == lessons[selectedCategory]!.length){
        completedLesson.isCompleted = true;
        completedLesson.status = LessonStatus.completed;
      }
    });

    _saveLessonProgress();
  }

  @override
  Widget build(BuildContext context) {
    List<Lesson> currentLessons = lessons[selectedCategory] ?? [];
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Text(
              'Learn C Lessons',
                style: Theme.of(context).textTheme.labelLarge
            ),
            Divider(
              height: MediaQuery.of(context).size.height * 0.05,
              thickness: 2,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: currentLessons.map((lesson) {
                  return GestureDetector(
                    onTap: lesson.status == LessonStatus.locked ? null : () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TopicScreen(
                            lesson: lesson,
                            onLessonComplete: () {
                              _completeLesson(lesson);
                            },
                          ),
                        ),
                      );
                    },
                    // In the GridView builder
                    child: Card(
                      color: lesson.status == LessonStatus.locked ? Colors.grey : Colors.white,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                lesson.title,
                                style: TextStyle(color: Colors.black,  fontSize: 12, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),),
                            Icon(
                              lesson.status == LessonStatus.completed ? Icons.check_circle : lesson.status == LessonStatus.locked ? Icons.lock : Icons.play_arrow,
                              color: Colors.blue[800],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
