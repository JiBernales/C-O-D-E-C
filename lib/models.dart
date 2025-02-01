class UserProgress {
  int cProgress;
  int javaProgress;

  UserProgress({
    this.cProgress = 0,
    this.javaProgress = 0,
  });
}

class Language {
  String id;
  String name;
  List<Lesson> lessons;

  Language({required this.id, required this.name, required this.lessons});

  factory Language.fromMap(Map<String, dynamic> data) {
    return Language(
      id: data['id'] ?? '',
      name: data['name'] ?? '',
      lessons: (data['lessons'] as List<dynamic>?)
          ?.map((lesson) => Lesson.fromMap(lesson))
          .toList() ??
          [],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'lessons': lessons.map((lesson) => lesson.toMap()).toList(),
    };
  }
}

enum LessonStatus { locked, unlocked, completed }

class Lesson {
  String id;
  String title;
  bool isCompleted;
  bool isOngoing;
  List<Topic> topics;
  List<Quiz> quizzes;
  LessonStatus status; // Added property
  String? firestoreId;

  Lesson({
    required this.id,
    required this.title,
    this.isCompleted = false,
    this.isOngoing = false,
    required this.topics,
    required this.quizzes,
    required this.status,
  });

  factory Lesson.fromMap(Map<String, dynamic> data) {
    return Lesson(
      id: data['id'] ?? '',
      title: data['title'] ?? '',
      isCompleted: data['isCompleted'] ?? false,
      isOngoing: data['isOngoing'] ?? false,
      topics: (data['topics'] as List<dynamic>?)
          ?.map((topic) => Topic.fromMap(topic))
          .toList() ??
          [],
      quizzes: (data['quizzes'] as List<dynamic>?)
          ?.map((quiz) => Quiz.fromMap(quiz))
          .toList() ??
          [], status: LessonStatus.locked,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'isCompleted': isCompleted,
      'isOngoing': isOngoing,
      'topics': topics.map((topic) => topic.toMap()).toList(),
      'quizzes': quizzes.map((quiz) => quiz.toMap()).toList(),
    };
  }
}

class Topic {
  String id;
  String title;
  String content;
  final String? imageUrl; // Add "imageUrl" property

  Topic({required this.id, required this.title, required this.content, this.imageUrl});

  factory Topic.fromMap(Map<String, dynamic> data) {
    return Topic(
      id: data['id'] ?? '',
      title: data['title'] ?? '',
      content: data['content'] ?? '',
      imageUrl: data['imageUrl'], // Access "imageUrl" from data
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'imageUrl': imageUrl, // Add "imageUrl" to the map
    };
  }
}


class Quiz {
  String id;
  String question;
  List<String> options;
  int correctOptionIndex;
  final String? imageUrl; // Add "imageUrl" property

  Quiz({
    required this.id,
    required this.question,
    required this.options,
    required this.correctOptionIndex,
    this.imageUrl,
  });

  factory Quiz.fromMap(Map<String, dynamic> data) {
    return Quiz(
      id: data['id'] ?? '',
      question: data['question'] ?? '',
      options: List<String>.from(data['options'] ?? []),
      correctOptionIndex: data['correctOptionIndex'] ?? 0,
      imageUrl: data['imageUrl'], // Access "imageUrl" from data
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'question': question,
      'options': options,
      'correctOptionIndex': correctOptionIndex,
      'imageUrl': imageUrl, // Add "imageUrl" to the map
    };
  }
}

class ReviewLevel {
  final int level;
  final int items;
  final List<Quiz> quizzes;

  ReviewLevel({required this.level, required this.items, required this.quizzes});
}

class CSharpTemplate {
  final String title;
  final String code;

  CSharpTemplate({required this.title, required this.code});
}
