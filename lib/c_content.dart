import 'models.dart';

final Lesson c_lesson_1 = Lesson(
  id: 'c_lesson_1',
  title: 'Basic Concepts and Logic Design',
  isCompleted: false,
  isOngoing: false,
  topics: [
    Topic(
      id: 'c_topic_1',
      title: 'Algorithm',
      content: 'An algorithm is a step-by-step method for solving a computational problem. For example, to compute the salary of employees, a series of steps is followed — from data entry to the final result.',
      imageUrl: 'images/ctopic1 (5).png',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Logic',
      content: 'Logic comes from the Greek word logos, often translated as "reason." It is the study of the principles of correct reasoning.',
      imageUrl: 'images/ctopic1 (7).png',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Logic Formulation',
      content: 'Logic Formulation is the process of identifying the basic steps needed to implement a procedure in computer programming. It is commonly used in top-down design. Flowcharts and pseudocode are two common outputs of this process.',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Flowchart',
      content: 'A flowchart is a diagram that shows the "flow" or sequence of steps in a program. It is commonly used to solve problems in computer programming.',
      imageUrl: 'images/ctopic1 (8).png',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Terminator',
      content: 'A terminator is used to mark the start or end point of a process. It may also indicate an interruption or delay in a program.',
      imageUrl: 'images/ctopic1 (10).png',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Process',
      content: 'A process symbol represents an operation or action step, such as arithmetic operations or data manipulation. It is also considered a default symbol in flowcharts.',
      imageUrl: 'images/ctopic1 (11).png',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Decision',
      content: 'A decision symbol represents a question or a branch in the process. It is used for logic or comparison operations and typically has one entry and two exit paths.',
      imageUrl: 'images/ctopic1 (12).png',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Flow Line',
      content: 'Flow lines indicate the direction of logic flow and are used to connect symbols in a flowchart.',
      imageUrl: 'images/ctopic1 (13).png',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Input/Output',
      content: 'Input/Output symbols are used for input and output operations such as reading data and displaying information.',
      imageUrl: 'images/ctopic1 (14).png',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Connector',
      content: 'A connector is used to join two flow lines and may also represent an entry to or exit from another part of the flowchart.',
      imageUrl: 'images/ctopic1 (15).png',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Off-Page Connector',
      content: 'An off-page connector is used to indicate that the flowchart continues on another page.',
      imageUrl: 'images/ctopic1 (16).png',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Pre-Defined Process',
      content: 'A pre-defined process symbol represents a formally defined sub-process. It is used to indicate a group of statements that perform a single processing task.',
      imageUrl: 'images/ctopic1 (17).png',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Database',
      content: 'A database is a collection of data that is stored and accessed using a computer system.',
      imageUrl: 'images/ctopic1 (18).png',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Or',
      content: 'The OR symbol represents a logical OR operation.',
      imageUrl: 'images/ctopic1 (19).png',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Summing Junction',
      content: 'A summing junction symbol represents a logical AND operation.',
      imageUrl: 'images/ctopic1 (20).png',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Document',
      content: 'A document symbol represents a report or a printed document.',
      imageUrl: 'images/ctopic1 (11).png',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Pseudocode',
      content: 'Pseudocode is a simplified, informal description of a program or algorithm written in a combination of plain English and programming-like structure. It is used to clarify the logic before coding.',
      imageUrl: 'images/ctopic1 (9).png',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Pseudocode',
      content: 'Pseudocode helps review the logic without looking at the actual source code. It simplifies design changes, reduces the need for excessive commenting, and makes maintenance easier.',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Pseudocode Components',
      content: 'Pseudocode can be broken down into five components:\n\n• Variables\n• Assignment\n• Input/Output\n• Selection\n• Repetition',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Structure Programming and Top Down Design Procedure',
      content: 'Structured Programming and Top-Down Design both refer to a sequential approach to developing better and more organized programs.',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Top Down Design Procedure',
      content: '',
      imageUrl: 'images/ctopic1 (22).png',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Structure Programming and Top Down Design Procedure Steps',
      content: 'Step 1: Program Planning\n\nInvolves deciding on the purpose and functionality of the program.\n\nStep 2: Program Design\n\nInvolves planning how the program will work.',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Structure Programming and Top Down Design Procedure Steps',
      content: 'Step 3: Coding\n\nWriting the program using a suitable programming language.\n\nStep 4: Testing/Debugging\n\nIdentifying and correcting errors in the program.',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Structure Programming and Top Down Design Procedure Steps',
      content: 'Step 5: Documentation\n\nWriting detailed information about how the program works and how to use it.\n\nStep 6: Maintenance\n\nCorrecting errors as they are discovered and updating the program based on user feedback and requirements.',
    ),

    Topic(
      id: 'c_topic_1',
      title: 'Lesson 1 Review',
      content: 'Let\'s have a mini-quiz to review what we\'ve learned so far.',
      imageUrl: 'images/quiz.png',
    ),
  ],
  quizzes: [
    Quiz(
    id: 'c_quiz_1',
    question: 'It refers to the person who creates, codes, tests, debugs, and documents a computer program.',
    options: ['Programmer', 'Software Designer', 'Program', 'Programmist'],
    correctOptionIndex: 0,
    explanation: 'A programmer handles the entire process of developing a program, from coding to debugging and documentation.',
  ),

    Quiz(
      id: 'c_quiz_1',
      question: 'A means of communication between humans and machines.',
      options: ['Programming Language', 'Connection', 'Loading Screen'],
      correctOptionIndex: 0,
      explanation: 'Programming languages allow humans to write instructions that computers can understand and execute.',
    ),

    Quiz(
      id: 'c_quiz_1',
      question: 'It is used to clarify the plan and design of a program before coding begins.',
      options: ['Pseudocode', 'Flowgraph', 'Algorithm', 'Loading Screen'],
      correctOptionIndex: 0,
      explanation: 'Pseudocode is a simplified representation of a program\'s logic that helps in planning before actual coding.',
    ),

    Quiz(
      id: 'c_quiz_1',
      question: 'A diagram that shows the "flow" of a program.',
      options: ['Flowchart', 'Flowgraph', 'Flowbar'],
      correctOptionIndex: 0,
      explanation: 'A flowchart uses shapes and arrows to illustrate the sequence of steps in a program.',
    ),

    Quiz(
      id: 'c_quiz_1',
      question: 'A step-by-step method used to solve a problem.',
      options: ['Algorithm', 'Flowchart', 'Pseudocode', 'Flowgraph'],
      correctOptionIndex: 0,
      explanation: 'An algorithm is a structured sequence of instructions used to solve a problem.',
    ),

    Quiz(
      id: 'c_quiz_1',
      question: 'The study of the principles of correct reasoning.',
      options: ['Logic', 'Flow', 'Programming', 'Biology'],
      correctOptionIndex: 0,
      explanation: 'Logic forms the basis for rational thought and decision-making in programming.',
    ),

    Quiz(
      id: 'c_quiz_1',
      question: 'The art and science of designing a program.',
      options: ['Programming', 'Progging', 'Progology', 'Programmer'],
      correctOptionIndex: 0,
      explanation: 'Programming involves designing, writing, and maintaining code to solve problems.',
    ),

    Quiz(
      id: 'c_quiz_1',
      question: 'Indicates the direction of logical flow and is used to connect symbols.',
      options: ['Flow lines', 'Connector', 'Decision', 'Pointer'],
      correctOptionIndex: 0,
      explanation: 'Flow lines in a flowchart show the order in which steps are performed and connect different elements.',
    ),

    Quiz(
      id: 'c_quiz_1',
      question: 'A series of coded instructions that perform tasks for a computer.',
      options: ['Program', 'Flowchart', 'Language', 'Commands'],
      correctOptionIndex: 0,
      explanation: 'A program is a collection of instructions that tell the computer what to do.',
    ),

    Quiz(
      id: 'c_quiz_1',
      question: 'Used as a start or stop point in a process and may indicate a delay.',
      options: ['Terminator', 'Connector', 'Decision', 'Input/Output'],
      correctOptionIndex: 0,
      explanation: 'The terminator symbol marks the beginning or end of a process in a flowchart.',
    ),

    Quiz(
      id: 'c_quiz_1',
      question: 'Which is the first step in Structured Programming or Top-Down Design?',
      options: ['Program Planning', 'Coding', 'Testing and Debugging', 'Program Designing'],
      correctOptionIndex: 0,
      explanation: 'Program planning is the initial step where the purpose and goals of the program are defined.',
    ),
  ],
  status: LessonStatus.unlocked,
);

final Lesson c_lesson_2 = Lesson(
  id: 'c_lesson_2',
  title: 'C# Programming Language and Origin',
  isCompleted: false,
  isOngoing: false,
  topics: [
    Topic(id: 'c_topic_2', title: 'The Early History of Programming Languages',
        content: 'Many individuals contributed brilliant ideas that led to the development of programming languages.'),

    Topic(id: 'c_topic_2', title: 'Joseph Marie Jacquard',
        content: 'Joseph Marie Jacquard developed a practical automatic loom that wove patterns controlled by a linked sequence of punched cards.',
        imageUrl: 'images/ctopic2 (1).png'),

    Topic(id: 'c_topic_2', title: 'Jacquard Loom',
        content: 'The Jacquard Loom, invented in 1801 by Joseph Marie Jacquard, was a sewing loom that used holes in punched cards to create decorative patterns in cloth.',
        imageUrl: 'images/ctopic2 (2).png'),

    Topic(id: 'c_topic_2', title: 'Charles Babbage',
        content: 'Charles Babbage invented the Analytical Engine, a mechanical calculating machine based on his earlier invention, the Difference Engine.',
        imageUrl: 'images/ctopic2 (3).png'),

    Topic(id: 'c_topic_2', title: 'Analytical Engine',
        content: 'The Analytical Engine was a fully program-controlled mechanical computer powered by six steam engines. It could perform any calculation it was instructed to.',
        imageUrl: 'images/ctopic2 (4).png'),

    Topic(id: 'c_topic_2', title: 'Augusta Ada Byron Lovelace',
        content: 'Ada Lovelace assisted in the development of the Analytical Engine. She is known as the first programmer for writing the first set of instructions (a program) for it.',
        imageUrl: 'images/ctopic2 (14).png'),

    Topic(id: 'c_topic_2', title: 'The Modern Programming Languages',
        content: 'In the 1940s, computers were electronically powered, but their memory capacity was very low. During this era, programmers primarily used assembly language. In the years that followed, several programming languages were developed and gained widespread use.'),

    Topic(id: 'c_topic_2', title: 'Assembly Language',
        content: 'Assembly Language was widely used by programmers in the 1940s due to limited memory. However, it was difficult to learn and prone to errors.',
        imageUrl: 'images/ctopic2 (5).png'),

    Topic(id: 'c_topic_2', title: 'FORTRAN',
        content: 'FORTRAN, which stands for "FORmula TRANslator," was invented by John Backus in 1955. It was designed for scientific and engineering applications.',
        imageUrl: 'images/ctopic2 (6).png'),

    Topic(id: 'c_topic_2', title: 'COBOL',
        content: 'COBOL, developed by the Short Range Committee and Grace Hopper, stands for "COmmon Business-Oriented Language." It is widely used in business, finance, and government systems.',
        imageUrl: 'images/ctopic2 (7).png'),

    Topic(id: 'c_topic_2', title: 'Algol 60',
        content: 'Algol 60 was developed by a committee of American and European computer scientists. It was versatile but complex, making it challenging for new programmers to learn.',
        imageUrl: 'images/ctopic2 (8).png'),

    Topic(id: 'c_topic_2', title: 'Pascal',
        content: 'Pascal was a general-purpose, high-level programming language invented by Niklaus Wirth. It was easy to learn and widely adopted by early programmers.',
        imageUrl: 'images/ctopic2 (9).png'),

    Topic(id: 'c_topic_2', title: 'Other Early Programming Languages and Their Developers',
        content: 'C – developed by Dennis Ritchie and Ken \n Simula – developed by Kristen Nygaard and Ole-Johan Dahl\nProlog – developed by Alain Colmerauer, Philippe Roussel, and Robert Kowalski\nML – developed by Robin Milner'),

        Topic(id: 'c_topic_2', title: 'High Level/Problem Oriented Language',
        content: 'High-level languages are human-readable and easier to learn. They are designed for better programming efficiency and faster development.'),

    Topic(id: 'c_topic_2', title: 'Low Level/Machine Oriented Language',
        content: 'Low-level languages, like machine code, are directly readable by machines. These languages are more difficult to learn and write compared to high-level languages.'),

    Topic(id: 'c_topic_2', title: 'Comparison of Low and High Level Languages',
        content: '',
        imageUrl: 'images/ctopic2 (10).png'),

    Topic(id: 'c_topic_2', title: 'Comparison of Low and High Level Languages',
        content: '',
        imageUrl: 'images/ctopic2 (13).png'),

    Topic(id: 'c_topic_2', title: 'C#',
        content: 'C# is an advanced combination of the C and C++ programming languages.',
        imageUrl: 'images/ctopic2 (11).png'),

    Topic(id: 'c_topic_2', title: 'C#',
        content: 'C# is a simple, modern, object-oriented programming language developed by Microsoft. It was approved by ECMA and ISO and was created by Anders Hejlsberg and his team during the development of the .NET Framework.'),

    Topic(id: 'c_topic_2', title: 'Characteristics of C#',
        content: '• It is a modern, general-purpose programming language\n• It is object-oriented\n• It is component-oriented\n• It is easy to learn\n• It is a structured language\n• It produces efficient programs\n• It can be compiled on a variety of computer platforms\n• It is part of the .NET Framework'),

        Topic(id: 'c_topic_2', title: 'Example of C# Code',
        content: '',
        imageUrl: 'images/ctopic2 (12).png'),

    Topic(id: 'c_topic_2', title: '"using System"',
        content: '"using System" is the first line of a C# program. The "using" keyword includes the System namespace. Programs typically use multiple "using" statements.'),

    Topic(id: 'c_topic_2', title: '"namespace BasicSyntax"',
        content: 'The line "namespace BasicSyntax" declares a namespace, which is a collection of classes. The "BasicSyntax" namespace contains the Program class.'),

    Topic(id: 'c_topic_2', title: '"class Program"',
        content: 'The line "class Program" declares the Program class, which contains data and method definitions. Classes typically contain multiple methods.'),

    Topic(id: 'c_topic_2', title: '"static void Main (string[] args)"',
        content: 'The Main method defines what the class does when executed and serves as the entry point of all C# programs.'),

    Topic(id: 'c_topic_2', title: '"// TODO: Implement Functionality Here"',
        content: 'Lines beginning with "//" or enclosed in "/**/" are comments. They are ignored by the compiler and used to annotate the program.'),

    Topic(id: 'c_topic_2', title: '"Console.WriteLine(...);"',
        content: '"Console.WriteLine(...)" displays the statement inside the quotation marks. It is a method of the Console class in the System namespace.'),

    Topic(id: 'c_topic_2', title: '"Console.ReadKey();"',
        content: '"Console.ReadKey();" pauses the program until a key is pressed, preventing the screen from closing immediately when launched from an IDE.'),

    Topic(id: 'c_topic_2', title: 'Lesson 2 Review',
        content: 'Let\'s have a mini-quiz to review what we\'ve learned so far.',
        imageUrl: 'images/quiz.png'),
  ],
  quizzes: [
  Quiz(
      id: 'c_quiz_2',
      question: 'Who developed a practical automatic loom that used punched cards to control patterns in cloth?',
      options: ['Ada Lovelace', 'Joseph Marie Jacquard', 'Charles Babbage', 'John Backus'],
      correctOptionIndex: 1,
      explanation: 'Joseph Marie Jacquard invented the Jacquard Loom in 1801, which used punched cards to control woven patterns.'
  ),

  Quiz(
      id: 'c_quiz_2',
      question: 'Who invented the Analytical Engine, considered the first mechanical computer?',
      options: ['Joseph Jacquard', 'Niklaus Wirth', 'Charles Babbage', 'Grace Hopper'],
      correctOptionIndex: 2,
      explanation: 'Charles Babbage developed the Analytical Engine, a mechanical calculating machine and precursor to modern computers.'
  ),

  Quiz(
      id: 'c_quiz_2',
      question: 'Who is known as the first computer programmer?',
      options: ['Ada Lovelace', 'Dennis Ritchie', 'Kristen Nygaard', 'Robin Milner'],
      correctOptionIndex: 0,
      explanation: 'Ada Lovelace wrote the first algorithm intended for implementation on Babbage’s Analytical Engine, earning her the title of the first programmer.'
  ),

  Quiz(
      id: 'c_quiz_2',
      question: 'Which programming language was widely used in the 1940s but was difficult to learn?',
      options: ['FORTRAN', 'COBOL', 'Assembly Language', 'Pascal'],
      correctOptionIndex: 2,
      explanation: 'Assembly Language was commonly used in the 1940s but was difficult to write and prone to errors.'
  ),

  Quiz(
      id: 'c_quiz_2',
      question: 'What does FORTRAN stand for?',
      options: ['Formal Translator', 'Formula Translator', 'Foreign Translator', 'Functional Translator'],
      correctOptionIndex: 1,
      explanation: 'FORTRAN stands for "FORmula TRANslator" and was designed for scientific and engineering computations.'
  ),

  Quiz(
      id: 'c_quiz_2',
      question: 'Which programming language was created for business, finance, and government systems?',
      options: ['Pascal', 'COBOL', 'Simula', 'ML'],
      correctOptionIndex: 1,
      explanation: 'COBOL (COmmon Business-Oriented Language) was developed for business-related applications.'
  ),

  Quiz(
      id: 'c_quiz_2',
      question: 'Who developed the C programming language?',
      options: ['Ken Thompson', 'John Backus', 'Anders Hejlsberg', 'Dennis Ritchie'],
      correctOptionIndex: 3,
      explanation: 'Dennis Ritchie, along with Ken Thompson, developed the C programming language.'
  ),

  Quiz(
      id: 'c_quiz_2',
      question: 'Which language was invented by Niklaus Wirth and known for being easy to learn?',
      options: ['Algol 60', 'C', 'Pascal', 'Prolog'],
      correctOptionIndex: 2,
      explanation: 'Pascal was designed by Niklaus Wirth to be an easy-to-learn high-level programming language.'
  ),

  Quiz(
      id: 'c_quiz_2',
      question: 'What is the key difference between high-level and low-level programming languages?',
      options: ['High-level languages are machine-readable; low-level are not.', 'Low-level languages are easier to learn.', 'High-level languages are human-readable; low-level are machine-readable.', 'There is no difference.'],
      correctOptionIndex: 2,
      explanation: 'High-level languages are easier for humans to read and write, while low-level languages are closer to machine code.'
  ),

  Quiz(
      id: 'c_quiz_2',
      question: 'Who led the development of the C# programming language?',
      options: ['Anders Hejlsberg', 'Grace Hopper', 'Robin Milner', 'John Backus'],
      correctOptionIndex: 0,
      explanation: 'C# was developed by Anders Hejlsberg and his team at Microsoft as part of the .NET Framework.'
  ),

  Quiz(
      id: 'c_quiz_2',
      question: 'What is the purpose of "Console.WriteLine(...);" in C#?',
      options: ['To comment a line of code', 'To pause program execution', 'To declare a method', 'To display output to the console'],
      correctOptionIndex: 3,
      explanation: '"Console.WriteLine(...);" is used to output a message or value to the console window.'
  ),

  Quiz(
      id: 'c_quiz_2',
      question: 'What does "Console.ReadKey();" do in a C# program?',
      options: ['Writes to the console', 'Reads user input and closes the program', 'Pauses the program until a key is pressed', 'Initializes the Main method'],
      correctOptionIndex: 2,
      explanation: '"Console.ReadKey();" waits for the user to press a key, which is useful for pausing the program so the output remains visible.'
  )
  ],
  status: LessonStatus.locked,
);

final Lesson c_lesson_3 = Lesson(
  id: 'c_lesson_3',
  title: 'C# Programming Language Environment: IDE',
  isCompleted: false,
  isOngoing: false,
  topics:[
    Topic(id: 'c_topic_3', title: 'C#',
      content: 'C# is a modern, general-purpose, object-oriented programming language developed by Microsoft and approved by the European Computer Manufacturers Association (ECMA) and the International Standards Organization (ISO). It was developed by Anders Hejlsberg and his team during the development of the .NET Framework.',
      imageUrl: 'images/ctopic3 (1).png',),

    Topic(id: 'c_topic_3', title: 'C#',
      content: 'C# is designed for the Common Language Infrastructure (CLI), which consists of executable code and a runtime environment that enables the use of various high-level languages on different computer platforms and architectures.',
      imageUrl: 'images/ctopic3 (2).png',),

    Topic(id: 'c_topic_3', title: '.NET Framework',
      content: 'The .NET Framework is a revolutionary platform that allows you to develop Windows applications, web applications, and web services.',
      imageUrl: 'images/ctopic3 (3).png',),

    Topic(id: 'c_topic_3', title: 'Integrated Development Environment (IDE)',
      content: 'Integrated Development Environments (IDEs) are software tools that provide comprehensive support for coding, testing, and debugging.',
      imageUrl: 'images/ctopic3 (4).png',),

    Topic(id: 'c_topic_3', title: 'Microsoft IDEs for C# Programming',
      content: 'Visual Studio 2010 (VS)',
      imageUrl: 'images/ctopic3 (5).png',),

    Topic(id: 'c_topic_3', title: 'Microsoft IDEs for C# Programming',
      content: 'Visual C# 2010 Express (VCE)',
      imageUrl: 'images/ctopic3 (6).png',),

    Topic(id: 'c_topic_3', title: 'Microsoft IDEs for C# Programming',
      content: 'Visual Web Developer',
      imageUrl: 'images/ctopic3 (7).png',),

    Topic(id: 'c_topic_3', title: 'Integrated Development Environment for C#',
        content: 'Using IDEs, you can develop all kinds of C# programs, from simple command-line applications to more complex systems. You can also write C# source code using basic text editors like Notepad and compile the code into assemblies using the command-line compiler, which is included in the .NET Framework.'),

    Topic(id: 'c_topic_3', title: 'Lesson 3 Review',
      content: 'Let\'s have a mini-quiz to review what we\'ve learned so far.',
      imageUrl: 'images/quiz.png',),
  ],

  quizzes: [
    Quiz(
      id: 'c_quiz_3',
      question: 'C# is what type of programming language?',
      options: ['High Level Language', 'Low Level Language'],
      correctOptionIndex: 0,
      explanation: 'C# is a high-level programming language that is human-readable, object-oriented, and designed for ease of use and platform flexibility.',
    ),
    Quiz(
      id: 'c_quiz_3',
      question: 'A software package that attempts to provide comprehensive support for coding, testing, and debugging is called?',
      options: ['Integrated Development Environment', 'Low Level Language', 'Integrated Display Environment', 'Integrated Developers Environment', 'Integration Developers Environment'],
      correctOptionIndex: 0,
      explanation: 'An Integrated Development Environment (IDE) offers a unified interface with tools for coding, testing, and debugging, making it easier for developers to build software.',
    ),
    Quiz(
      id: 'c_quiz_3',
      question: 'What is the Microsoft-developed platform that helps you to write Windows applications, Web applications, and Web services?',
      options: ['.Net Framework', '.M Framework', '.M Environment', '.Net Environment'],
      correctOptionIndex: 0,
      explanation: 'The .NET Framework is a Microsoft-developed platform that supports the development and execution of various types of applications.',
    ),
    Quiz(
      id: 'c_quiz_3',
      question: 'What company developed C#?',
      options: ['Microsoft', 'Apple', 'Visual Studio', 'ECMA', 'ISO'],
      correctOptionIndex: 0,
      explanation: 'C# was developed by Microsoft, led by Anders Hejlsberg, during the creation of the .NET Framework.',
    ),
  ],
  status: LessonStatus.locked,
);

final Lesson c_lesson_4 = Lesson(
  id: 'c_lesson_4',
  title: 'Data Types, Variables, and Constants',
  isCompleted: false,
  isOngoing: false,
  topics: [
    Topic(id: 'c_topic_4', title: 'Data Types',
        content: 'Data types classify the type of value a variable can hold in a programming language. Common examples include integer, float, double, and string.'),

    Topic(id: 'c_topic_4', title: 'String',
        content: 'Strings represent a sequence of characters and are used to store text.',
        imageUrl: 'images/ctopic4 (1).png'),

    Topic(id: 'c_topic_4', title: 'Integer',
        content: 'Integers represent whole numbers, both positive and negative, without decimal points.',
        imageUrl: 'images/ctopic4 (2).png'),

    Topic(id: 'c_topic_4', title: 'Float',
        content: 'Float represents numbers that have decimal points and are used for approximations.',
        imageUrl: 'images/ctopic4 (3).png'),

    Topic(id: 'c_topic_4', title: 'Double Float',
        content: 'Double floats are like floats but offer more precision. They support more digits after the decimal point.',
        imageUrl: 'images/ctopic4 (4).png'),

    Topic(id: 'c_topic_4', title: 'C# Primitive Type',
        content: 'C# primitive types, also known as value types, are predefined in the .NET framework. They are stored on the stack and can be assigned values directly.'),

    Topic(id: 'c_topic_4', title: 'Non-Primitive/Reference Type',
        content: 'Reference types store references to the actual data rather than the data itself. Multiple variables can reference the same memory location, and changing the data through one reference affects all others.'),

    Topic(id: 'c_topic_4', title: 'Variables',
        content: 'Variables act as named storage locations that can hold data. Their values can change during program execution.',
        imageUrl: 'images/ctopic4 (5).png'),

    Topic(id: 'c_topic_4', title: 'Identifier Name',
        content: 'Identifier names are used to refer to variables, functions, labels, and other user-defined elements.'),

    Topic(id: 'c_topic_4', title: 'Rules in Naming Identifiers',
        content: '1. The name can contain letters, digits, and underscores (_).\n2. The first character must be a letter. Although underscore is legal as the first character, it is discouraged.\n3. C# is case-sensitive; for example, "count" and "Count" are treated as different variables.'),

    Topic(id: 'c_topic_4', title: 'Rules in Naming Identifiers',
        content: '4. C# keywords cannot be used as variable names. Keywords are reserved words in the C# language.'),

    Topic(id: 'c_topic_4', title: 'Examples of Legal and Illegal Variables',
        content: '',
        imageUrl: 'images/ctopic4 (6).png'),

    Topic(id: 'c_topic_4', title: 'Initializing Variables',
        content: 'Variables are initialized using the equal sign followed by a constant expression. Example: variable_name = value;\nVariables can also be initialized upon declaration:\n<data_type> <variable_name> = value;',
        imageUrl: 'images/ctopic4 (7).png'),

    Topic(id: 'c_topic_4', title: 'Constants',
        content: 'Constants are fixed values known at compile-time and do not change throughout the program. A common example is pi (approximately 3.14).',
        imageUrl: 'images/ctopic4 (8).png'),

    Topic(id: 'c_topic_4', title: 'Constants',
        content: 'Constants are declared using the "const" keyword. Only built-in C# types (excluding System.Object) can be declared as const.'),

    Topic(id: 'c_topic_4', title: 'Integer Literals',
        content: 'Integer literals can be decimal, octal, or hexadecimal. Prefixes determine the base: 0x or 0X for hexadecimal, 0 for octal, and no prefix for decimal. They may have suffixes such as U (unsigned) or L (long).'),

    Topic(id: 'c_topic_4', title: 'Examples of Integer Literals',
        content: '',
        imageUrl: 'images/ctopic4 (10).png'),

    Topic(id: 'c_topic_4', title: 'Floating-Point Literals',
        content: 'Floating-point literals consist of an integer part, decimal point, fractional part, and optional exponent. They can be written in decimal or exponential form.',
        imageUrl: 'images/ctopic4 (9).png'),

    Topic(id: 'c_topic_4', title: 'Floating-Point Literals',
        content: 'In decimal form, the literal must include a decimal point, an exponent, or both. In exponential form, it must include either the integer or fractional part. The exponent is introduced by "e" or "E".'),

    Topic(id: 'c_topic_4', title: 'Examples of Floating-Point Literals',
        content: '',
        imageUrl: 'images/ctopic4 (11).png'),

    Topic(id: 'c_topic_4', title: 'Character Literals',
        content: 'Character literals are enclosed in single quotes. They can be plain characters (e.g., "x"), escape sequences (e.g., "\t"), or Unicode characters (e.g., "\u02C0").'),

    Topic(id: 'c_topic_4', title: 'Escape Sequences',
        content: 'Escape sequences in C# begin with a backslash (\\) and represent special characters.'),

    Topic(id: 'c_topic_4', title: 'Examples of Character Constants',
        content: '',
        imageUrl: 'images/ctopic4 (12).png'),

    Topic(id: 'c_topic_4', title: 'Examples of Character Constants',
        content: '',
        imageUrl: 'images/ctopic4 (13).png'),

    Topic(id: 'c_topic_4', title: 'Lesson 4 Review',
        content: 'Let\'s have a mini-quiz to review what we\'ve learned so far.',
        imageUrl: 'images/quiz.png'),
  ],
  quizzes: [
    Quiz(
        id: 'c_quiz_4',
        question: 'Which is the correct way to declare a float type variable named "Change"?',
        options: ['float Change;', 'flt Change;'],
        correctOptionIndex: 0,
        explanation: 'In C#, the correct syntax to declare a float variable is using the keyword "float" followed by the variable name and a semicolon.'
    ),
    Quiz(
        id: 'c_quiz_4',
        question: 'Which is the correct way to declare a double type variable named "remainder"?',
        options: ['double remainder;', 'df remainder;'],
        correctOptionIndex: 0,
        explanation: 'C# uses the keyword "double" to declare double-precision floating point variables. "df" is not a valid type keyword.'
    ),
    Quiz(
        id: 'c_quiz_4',
        question: 'Which is the correct way to initialize a string variable named "Name" with the value "Prog"?',
        options: ['string Name = "Prog";', 'Name string = "Prog";', 'string Name == "Prog";', 'str Name = "Prog";', 'Name str = "Prog";'],
        correctOptionIndex: 0,
        explanation: 'The correct syntax to initialize a string is: string Name = "value";. The other options have incorrect syntax or use invalid keywords.'
    ),
    Quiz(
        id: 'c_quiz_4',
        question: 'Which is the correct way to initialize an integer variable named "grade" with the value 11?',
        options: ['int grade = 11;', 'int grade = "11";', 'grade int = "11";', 'int grade == "11";', 'integer grade = "11";', 'grade int = 11;'],
        correctOptionIndex: 0,
        explanation: '"int grade = 11;" is the correct syntax. Integer values should not be enclosed in quotation marks, and the keyword "int" must come before the variable name.'
    ),
    Quiz(
        id: 'c_quiz_4',
        question: 'Which is a correct float type variable?',
        options: ['510E-5', '510E'],
        correctOptionIndex: 0,
        explanation: '"510E-5" is a valid float literal in exponential notation, representing a very small number. "510E" is invalid because it lacks an exponent value.'
    ),
  ],
  status: LessonStatus.locked,
);

final Lesson c_lesson_5 = Lesson(
  id: 'c_lesson_5',
  title: 'Operators, Expressions, and Type Conversion',
  isCompleted: false,
  isOngoing: false,
  topics: [
    Topic(id: 'c_topic_5', title: 'Operators',
      content: 'Operators are symbols used to perform mathematical or logical operations on values (or variables), called operands, to produce a new value called the result.',
      imageUrl: 'images/ctopic5 (1).png',),
    Topic(id: 'c_topic_5', title: 'Operands',
        content: 'Operands are the values or variables that are acted upon by operators. In C#, operands are always evaluated from left to right.',
        imageUrl: 'images/ctopic5 (2).png'),
    Topic(id: 'c_topic_5', title: 'Expressions',
        content: 'Expressions are formed using variables, constants, and operators.',
        imageUrl: 'images/ctopic5 (3).png'),
    Topic(id: 'c_topic_5', title: 'Unary Operators',
        content: 'Unary operators operate on a single operand to produce a new value.',
        imageUrl: 'images/ctopic5 (4).png'),
    Topic(id: 'c_topic_5', title: 'Binary Operators',
        content: 'Binary operators require two operands. C# uses infix notation, where the operator appears between the left and right operands. The result of every binary operation—except assignment—must be used in some way, such as assigning it to a variable.'),
    Topic(id: 'c_topic_5', title: 'Arithmetic Operators',
        content: 'Arithmetic operators are binary operators used for performing mathematical calculations.',
        imageUrl: 'images/ctopic5 (5).png'),
    Topic(id: 'c_topic_5', title: 'Relational Operators',
        content: 'Relational operators are binary operators that compare two values. They return either 1 (true) or 0 (false).',
        imageUrl: 'images/ctopic5 (6).png'),
    Topic(id: 'c_topic_5', title: 'Logical Operators',
        content: 'Logical operators are used to combine or modify boolean expressions. Common logical operators include AND, OR, and NOT.',
        imageUrl: 'images/ctopic5 (7).png'),
    Topic(id: 'c_topic_5', title: 'Compound Assignment Operators',
        content: 'Compound assignment operators combine an operation with assignment. They are shorthand notations like +=, -=, *=, and /=.'),
    Topic(id: 'c_topic_5', title: 'Compound Assignment Operators',
        content: '',
        imageUrl: 'images/ctopic5 (8).png'),
    Topic(id: 'c_topic_5', title: 'Compound Assignment Operators',
        content: '',
        imageUrl: 'images/ctopic5 (9).png'),
    Topic(id: 'c_topic_5', title: 'Ternary Operators',
        content: 'The ternary operator is a conditional operator that takes three operands: a condition, a result if true, and a result if false. Syntax: condition ? trueResult : falseResult;',
        imageUrl: 'images/ctopic5 (10).png'),
    Topic(id: 'c_topic_5', title: 'Type Conversion',
        content: 'Type conversion refers to changing a value from one data type to another. C# supports implicit and explicit type conversion.',
        imageUrl: 'images/ctopic5 (11).png'),
    Topic(id: 'c_topic_5', title: 'Implicit Type Conversion',
        content: 'Implicit type conversion is done automatically by C# when converting from a smaller to a larger compatible data type or from a derived class to a base class.'),
    Topic(id: 'c_topic_5', title: 'Explicit Type Conversion',
        content: 'Explicit type conversion requires the use of a cast operator. It is necessary when converting from a larger to a smaller data type or between incompatible types.'),
    Topic(id: 'c_topic_5', title: 'Type Conversion Methods',
        content: '',
        imageUrl: 'images/ctopic5 (12).png'),
    Topic(id: 'c_topic_5', title: 'Type Conversion Methods',
        content: '',
        imageUrl: 'images/ctopic5 (13).png'),
    Topic(id: 'c_topic_5', title: 'Lesson 5 Review',
      content: 'Let\'s have a mini-quiz to review what we\'ve learned so far.',
      imageUrl: 'images/quiz.png',),
  ],
  quizzes: [
    Quiz(
        id: 'c_quiz_5',
        question: 'Which of the following is not an example of a binary operator in C#?',
        options: ['!', '-', '+'],
        correctOptionIndex: 0,
        explanation: 'The ! operator is a unary logical NOT operator that works on a single operand, unlike binary operators which require two.'
    ),
    Quiz(
        id: 'c_quiz_5',
        question: 'What type of operator is used in the expression `x = x + 1`?',
        options: ['Arithmetic', 'Logical', 'Compound Assignment'],
        correctOptionIndex: 0,
        explanation: '`x + 1` uses the arithmetic operator + to increment the value of x.'
    ),
    Quiz(
        id: 'c_quiz_5',
        question: 'What is the result of using the relational operator `>` between two operands?',
        options: ['Boolean value', 'String value', 'Integer value'],
        correctOptionIndex: 0,
        explanation: 'Relational operators return a Boolean result: true if the condition is met, false otherwise.'
    ),
    Quiz(
        id: 'c_quiz_5',
        question: 'What is the purpose of the ternary operator?',
        options: ['Evaluate three conditions', 'Execute code based on a condition', 'Perform type conversion'],
        correctOptionIndex: 1,
        explanation: 'The ternary operator evaluates a condition and returns one of two values depending on whether the condition is true or false.'
    ),
    Quiz(
        id: 'c_quiz_5',
        question: 'Which type of type conversion is performed automatically by C#?',
        options: ['Implicit', 'Explicit', 'Dynamic'],
        correctOptionIndex: 0,
        explanation: 'Implicit type conversions are done automatically by the C# compiler when safe.'
    ),
  ],
  status: LessonStatus.locked,
);

final Lesson c_lesson_6 = Lesson(
  id: 'c_lesson_6',
  title: 'C# Programming Input-Output Console',
  isCompleted: false,
  isOngoing: false,
  topics: [
    Topic(id: 'c_topic_6', title: 'Console',
        content: 'The console is a window of the operating system that allows users to interact with programs. It is typically a black window that displays text information. It can print text strings, and the cursor moves to the right after each character is printed.',
        imageUrl: 'images/ctopic6 (1).png'),
    Topic(id: 'c_topic_6', title: 'User-Program Communication',
        content: 'Many programs communicate with the user. This is necessary to allow users to give instructions to the program.\nModern communication methods include graphical interfaces, web-based interfaces, and consoles. The interaction typically involves text input from the standard input (usually the keyboard) and text output to the standard output (usually the screen). These are known as input-output operations.'),
    Topic(id: 'c_topic_6', title: 'Console',
        content: 'The console is one tool for communication between programs and users. However, it is becoming less commonly used due to more intuitive modern user interface concepts.'),
    Topic(id: 'c_topic_6', title: 'When To Use The Console',
        content: 'The console remains a useful tool for user communication, especially for writing small, simple programs or testing code segments in larger applications.\nIt is ideal when the focus is on solving a specific problem rather than on presenting the result in a polished interface.'),
    Topic(id: 'c_topic_6', title: 'Operating System Shells',
        content: "In Windows, the console is often associated with the system command interpreter, also called the 'Command Prompt' or 'shell'. It is a console-based program that provides access to system commands and programs included with or installed on the operating system."),
    Topic(id: 'c_topic_6', title: 'Types of OS Shells',
        content: 'CLI - Command Line Interface: A console for commands (cmd.exe in Windows, bash in Linux)\nGUI - Graphical User Interface: A graphical work environment (Windows Explorer, Linux File Managers)'),
    Topic(id: 'c_topic_6', title: 'Standard Input, Standard Output, and Standard Error',
        content: 'The operating system defines standard input-output mechanisms for user interaction. These mechanisms involve system code that opens and closes data streams when a program runs.\nStreams include standard input (Console.In), standard output (Console.Out), and standard error (Console.Error) in C#.'),
    Topic(id: 'c_topic_6', title: 'Devices for Console Input',
        content: 'The primary device for console input is the keyboard. However, input can also come from files, microphones, barcode readers, and other devices.',
        imageUrl: 'images/ctopic6 (2).png'),
    Topic(id: 'c_topic_6', title: 'Devices for Console Output',
        content: 'Program output may be directed to the console (screen), to a file, or to other output devices such as a printer.',
        imageUrl: 'images/ctopic6 (3).png'),
    Topic(id: 'c_topic_6', title: 'Write() and WriteLine()',
        content: 'The Write() and WriteLine() methods are used to print variables and literals. Write() prints the string as-is, while WriteLine() prints the string and moves to the next line.'),
    Topic(id: 'c_topic_6', title: 'Example Standard Output',
        content: '',
        imageUrl: 'images/ctopic6 (4).png'),
    Topic(id: 'c_topic_6', title: 'Read(), ReadKey(), and ReadLine()',
        content: 'The Read(), ReadKey(), and ReadLine() methods read characters from standard input. Read() and ReadKey() stop after a key press, while ReadLine() stops after Enter is pressed. Read() returns an integer (ASCII code), and ReadKey() returns a ConsoleKeyInfo object.'),
    Topic(id: 'c_topic_6', title: 'Example Standard Input',
        content: '',
        imageUrl: 'images/ctopic6 (5).png'),
    Topic(id: 'c_topic_6', title: 'Lesson 6 Review',
        content: 'Let\'s have a mini-quiz to review what we\'ve learned so far.',
        imageUrl: 'images/quiz.png'),
  ],
  quizzes: [
    Quiz(
        id: 'c_quiz_6',
        question: 'What does the WriteLine() method do?',
        options: ['Prints a string and moves to the next line', 'Reads input from the user', 'Prints a string without moving to the next line'],
        correctOptionIndex: 0,
        explanation: 'WriteLine() prints the provided text and moves the cursor to the next line.'
    ),
    Quiz(
        id: 'c_quiz_6',
        question: 'Which method is used to read a single key press from the user?',
        options: ['ReadLine()', 'ReadKey()', 'Write()'],
        correctOptionIndex: 1,
        explanation: 'ReadKey() captures a single key press and returns a ConsoleKeyInfo object.'
    ),
    Quiz(
        id: 'c_quiz_6',
        question: 'What is the main device used for receiving inputs in a console application?',
        options: ['Keyboard', 'Mouse', 'Printer'],
        correctOptionIndex: 0,
        explanation: 'The keyboard is the primary device used for input in console applications.'
    ),
    Quiz(
        id: 'c_quiz_6',
        question: 'What is the standard output stream in C#?',
        options: ['Console.Out', 'Console.Error', 'Console.In'],
        correctOptionIndex: 0,
        explanation: 'Console.Out is the standard output stream used for writing output to the console.'
    ),
    Quiz(
        id: 'c_quiz_6',
        question: 'What is the standard input stream in C#?',
        options: ['Console.Out', 'Console.Error', 'Console.In'],
        correctOptionIndex: 2,
        explanation: 'Console.In is used to read input from the standard input stream (typically the keyboard).'
    ),
    Quiz(
        id: 'c_quiz_6',
        question: 'What is the standard error stream in C#?',
        options: ['Console.Out', 'Console.Error', 'Console.In'],
        correctOptionIndex: 1,
        explanation: 'Console.Error is used to write error messages to the standard error stream.'
    ),
    Quiz(
        id: 'c_quiz_6',
        question: 'What type of shell provides a graphical user interface?',
        options: ['CLI', 'GUI', 'Command Prompt'],
        correctOptionIndex: 1,
        explanation: 'GUI stands for Graphical User Interface and provides visual interaction elements like windows and icons.'
    ),
  ],
  status: LessonStatus.locked,
);

final Lesson c_lesson_7 = Lesson(
  id: 'c_lesson_7',
  title: 'Conditional Statements',
  isCompleted: false,
  isOngoing: false,
  topics: [
    Topic(id: 'c_topic_7', title: 'Introduction to Conditional Statements',
        content: 'Conditional statements allow different blocks of code to execute based on specific conditions.',
        imageUrl: 'images/ctopic7 (1).png'),
    Topic(id: 'c_topic_7', title: 'IF Statement',
        content: 'An if statement consists of a boolean expression followed by one or more statements. These statements are executed only if the boolean expression is true. An if statement can optionally be followed by an else statement, which executes when the expression is false.',
        imageUrl: 'images/ctopic7 (2).png'),
    Topic(id: 'c_topic_7', title: 'The ELSE IF Statement',
        content: 'The else if statement is used to test additional conditions after the initial if condition evaluates to false. Each else if is checked in order until one evaluates to true.',
        imageUrl: 'images/ctopic7 (3).png'),
    Topic(id: 'c_topic_7', title: 'ELSE Statement',
        content: 'The else statement runs a block of code if the if and else if conditions are all false.',
        imageUrl: 'images/ctopic7 (4).png'),
    Topic(id: 'c_topic_7', title: 'Nested IF Statements',
        content: 'Nested if statements are if statements placed inside other if or else blocks, allowing more specific conditional logic.',
        imageUrl: 'images/ctopic7 (5).png'),
    Topic(id: 'c_topic_7', title: 'The Switch Block',
        content: 'A switch block evaluates a variable and compares it to multiple case values. A break statement is typically used to exit each case.',
        imageUrl: 'images/ctopic7 (6).png'),
    Topic(id: 'c_topic_7', title: 'Ternary Operators',
        content: 'A ternary operator provides a shorthand way to write simple if-else conditions. It takes three parts: a condition, a value if true, and a value if false.',
        imageUrl: 'images/ctopic5 (10).png'),
    Topic(
      id: 'c_topic_7',
      title: 'Common Conditional Pitfalls',
      content: '1. Forgetting to use curly braces `{}` for multi-line if blocks.\n2. Using `=` (assignment) instead of `==` (equality) in conditions.\n3. Not including a `break` statement in switch cases.\n4. Overusing nested if statements, which can make code hard to read.',),
    Topic(id: 'c_topic_7', title: 'Lesson 7 Review',
      content: 'Let\'s have a mini-quiz to review what we\'ve learned so far.',
      imageUrl: 'images/quiz.png',),
  ],
  quizzes: [
    Quiz(
        id: 'c_quiz_7',
        question: 'Which of the following is the correct syntax for an `if` statement in C#?',
        options: [
          'if (condition) { // code }',
          'if condition { // code }',
          'if { condition } // code',
          'if [condition] { // code }',
        ],
        correctOptionIndex: 0,
        explanation: 'In C#, an `if` statement requires parentheses around the condition and curly braces around the code block.'
    ),
    Quiz(
        id: 'c_quiz_7',
        question: 'When is the `else` statement code executed?',
        options: [
          'When the `if` condition is false',
          'When the `if` condition is true',
        ],
        correctOptionIndex: 0,
        explanation: 'The `else` block runs only if the `if` and any `else if` conditions evaluate to false.'
    ),
    Quiz(
        id: 'c_quiz_7',
        question: 'Which statement is used to test more than 2 conditions in C#?',
        options: [
          'else-if ladder',
          'switch statement',
          'ternary operator',
          'nested if',
        ],
        correctOptionIndex: 0,
        explanation: 'An else-if ladder allows you to test multiple conditions in sequence.'
    ),
    Quiz(
        id: 'c_quiz_7',
        question: 'What is the output of the following code?\nint x = 5;\nint y = (x > 3) ? 10 : 20;\nConsole.WriteLine(y);',
        options: ['10', '20', '5'],
        correctOptionIndex: 0,
        explanation: 'Since `x` is greater than 3, the condition evaluates to true and returns 10.'
    ),
    Quiz(
        id: 'c_quiz_7',
        question: 'Which of the following is true about the `switch` statement?',
        options: [
          'It can have multiple `case` blocks',
          'It can only have one `case` block',
          'It does not require a `default` block',
          'It cannot be used with integers',
        ],
        correctOptionIndex: 0,
        explanation: 'The `switch` statement can contain multiple `case` blocks for different matching values.'
    ),
    Quiz(
        id: 'c_quiz_7',
        question: 'What is the purpose of the `break` statement in a `switch` block?',
        options: [
          'To exit the `switch` block',
          'To skip the next `case` block',
          'To restart the `switch` block',
          'To terminate the program',
        ],
        correctOptionIndex: 0,
        explanation: 'The `break` statement prevents fall-through by exiting the switch block after a matching case.'
    ),
    Quiz(
        id: 'c_quiz_7',
        question: 'What is the output of the following code?\nint x = 10;\nif (x == 10)\n{\n    Console.WriteLine("Hello");\n}\nelse\n{\n    Console.WriteLine("World");\n}',
        options: ['Hello', 'HelloWorld', 'World'],
        correctOptionIndex: 0,
        explanation: 'Since `x` equals 10, the `if` block is executed and "Hello" is printed.'
    ),
    Quiz(
        id: 'c_quiz_7',
        question: 'Which operator is used as a shorthand for the `if-else` statement?',
        options: [
          'Ternary operator',
          'Logical AND operator',
          'Logical OR operator',
          'Assignment operator',
        ],
        correctOptionIndex: 0,
        explanation: 'The ternary operator `condition ? trueResult : falseResult` acts as a shorthand for `if-else`.'
    ),
    Quiz(
        id: 'c_quiz_7',
        question: 'What is the output of the following code?\nint x = 15;\nif (x > 10 && x < 20)\n{\n    Console.WriteLine("Valid");\n}\nelse\n{\n    Console.WriteLine("Invalid");\n}',
        options: ['Valid', 'Invalid'],
        correctOptionIndex: 0,
        explanation: 'Since 15 is greater than 10 and less than 20, the condition is true and "Valid" is printed.'
    ),
    Quiz(
        id: 'c_quiz_7',
        question: 'Which of the following is a common pitfall when using`if` conditional statements?',
        options: [
          'Using `=` instead of `==`',
          'Using `==` instead of `=`',
          'Forgetting to use parentheses',
          'Using too many `else` statements',
        ],
        correctOptionIndex: 0,
        explanation: 'A common mistake is using `=` (assignment) instead of `==` (equality) in conditions.'
    ),
  ],
  status: LessonStatus.locked,
);

final Lesson c_lesson_8 = Lesson(
  id: 'c_lesson_8',
  title: 'C# Looping and Iteration',
  isCompleted: false,
  isOngoing: false,
  topics: [
    Topic(
      id: 'c_topic_8',
      title: 'Introduction to Loops',
      content: 'Loops in C# are used to repeatedly execute a block of code until a specified condition is met. They are essential for automating repetitive tasks and iterating over collections such as arrays or lists.',
      imageUrl: 'images/ctopic8 (1).png',
    ),
    Topic(
      id: 'c_topic_8',
      title: 'FOR Loop',
      content: 'The `for` loop executes a block of code a specific number of times. It typically uses a loop variable that is initialized, evaluated in a condition, and updated each iteration until the condition is no longer true.',
      imageUrl: 'images/ctopic8 (2).png',
    ),
    Topic(
      id: 'c_topic_8',
      title: 'FOR Loop',
      content: 'A `for` loop usually consists of three parts: initialization, condition, and iteration.\n\nSyntax:\nfor (initialization; condition; iteration)\n{\n    // Code to execute\n}',
    ),
    Topic(
      id: 'c_topic_8',
      title: 'FOREACH Loop',
      content: 'The `foreach` loop is used to iterate over elements in a collection, such as an array or list. It automatically accesses each element without using an index variable.\n\nSyntax:\nforeach (var item in collection)\n{\n    // Code to execute\n}',
    ),
    Topic(
      id: 'c_topic_8',
      title: 'while Loop',
      content: 'The `while` loop executes a block of code as long as the specified condition is true. The condition is evaluated before each iteration.\n\nSyntax:\nwhile (condition)\n{\n    // Code to execute\n}',
      imageUrl: 'images/ctopic8 (3).png',
    ),
    Topic(
      id: 'c_topic_8',
      title: 'while Loop',
      content: 'Syntax:\nwhile (condition)\n{\n    // Code to execute\n}',
    ),
    Topic(
      id: 'c_topic_8',
      title: 'do-while Loop',
      content: 'The `do-while` loop is similar to the `while` loop, but it guarantees that the block of code is executed at least once because the condition is evaluated after the loop body.',
      imageUrl: 'images/ctopic8 (4).png',
    ),
    Topic(
      id: 'c_topic_8',
      title: 'do-while Loop',
      content: 'Syntax:\ndo\n{\n    // Code to execute\n} while (condition);',
    ),
    Topic(
      id: 'c_topic_8',
      title: 'Nested Loops',
      content: 'A nested loop is a loop placed inside another loop. They are commonly used for iterating over multi-dimensional arrays or for executing complex repetitive logic.',
      imageUrl: 'images/ctopic8 (5).png',
    ),
    Topic(
      id: 'c_topic_8',
      title: 'break Statement',
      content: 'The `break` statement is used to exit a loop prematurely. It immediately stops the loop and transfers control to the statement following the loop.\n\nSyntax:\nwhile (true)\n{\n    if (condition)\n    {\n        break; // Exit the loop\n    }\n}',
    ),
    Topic(
      id: 'c_topic_8',
      title: 'continue Statement',
      content: 'The `continue` statement skips the current iteration of the loop and proceeds to the next iteration.\n\nSyntax:\nfor (int i = 0; i < 10; i++)\n{\n    if (i % 2 == 0)\n    {\n        continue; // Skip even numbers\n    }\n    // Code to execute\n}',
    ),
    Topic(
      id: 'c_topic_8',
      title: 'Infinite Loops',
      content: 'An infinite loop occurs when the loop condition never becomes false. This can cause a program to hang or crash. It is important to ensure that loop conditions will eventually be met.\n\nExample:\nwhile (true)\n{\n    // Code to execute indefinitely\n}',
      imageUrl: 'images/ctopic8 (8).png',
    ),
    Topic(
      id: 'c_topic_8',
      title: 'Common Pitfalls',
      content: '1. Forgetting to update the loop variable, leading to infinite loops.\n2. Using the wrong loop type for the task.\n3. Misusing `break` and `continue`, which can make code harder to read.\n4. Overusing nested loops, which can reduce performance.',
    ),
    Topic(
      id: 'c_topic_8',
      title: 'Lesson 8 Review',
      content: "Let's have a mini-quiz to review what we've learned so far.",
      imageUrl: 'images/quiz.png',
    ),
  ],
  quizzes: [
    Quiz(
      id: 'c_quiz_8',
      question: 'Which loop is used when you know the exact number of iterations?',
      options: ['for loop', 'while loop', 'do-while loop', 'foreach loop'],
      correctOptionIndex: 0,
      explanation: 'The `for` loop is ideal when the number of iterations is known beforehand.',
    ),
    Quiz(
      id: 'c_quiz_8',
      question: 'What is the output of the following code?\nfor (int i = 0; i < 3; i++)\n{\n    Console.WriteLine(i);\n}',
      options: ['0 1 2', '0 1 2 3', '1 2'],
      correctOptionIndex: 0,
      explanation: 'The loop runs for i = 0, 1, 2. It stops when i equals 3, so the output is 0 1 2.',
    ),
    Quiz(
      id: 'c_quiz_8',
      question: 'Which loop guarantees at least one execution of the loop body?',
      options: ['do-while loop', 'while loop', 'for loop', 'foreach loop'],
      correctOptionIndex: 0,
      explanation: 'The `do-while` loop evaluates the condition after executing the loop body at least once.',
    ),
    Quiz(
      id: 'c_quiz_8',
      question: 'What is the purpose of the `break` statement?',
      options: ['To exit the loop', 'To skip the current iteration', 'To restart the loop', 'To terminate the program'],
      correctOptionIndex: 0,
      explanation: 'The `break` statement stops loop execution and exits immediately.',
    ),
    Quiz(
      id: 'c_quiz_8',
      question: 'What is the output of the following code?\nint i = 0;\nwhile (i < 3)\n{\n    Console.WriteLine(i);\n    i++;\n}',
      options: ['0 1 2', '1 2 3', '1 2'],
      correctOptionIndex: 0,
      explanation: 'The value of i starts at 0 and increments to 3. The loop prints 0, 1, 2.',
    ),
    Quiz(
      id: 'c_quiz_8',
      question: 'Which loop is best suited for iterating over a collection?',
      options: ['foreach loop', 'for loop', 'while loop', 'do-while loop'],
      correctOptionIndex: 0,
      explanation: 'The `foreach` loop is designed for iterating through collections without using an index.',
    ),
    Quiz(
      id: 'c_quiz_8',
      question: 'What is the purpose of the `continue` statement?',
      options: ['To skip the current iteration', 'To exit the loop', 'To restart the loop', 'To terminate the program'],
      correctOptionIndex: 0,
      explanation: 'The `continue` statement skips the current iteration and jumps to the next loop cycle.',
    ),
    Quiz(
      id: 'c_quiz_8',
      question: 'What is the output of the following code?\nfor (int i = 0; i < 5; i++)\n{\n    if (i == 3)\n    {\n        break;\n    }\n    Console.WriteLine(i);\n}',
      options: ['0 1 2', '1 2 3', '1 2'],
      correctOptionIndex: 0,
      explanation: 'The loop prints 0, 1, 2 and exits when i becomes 3 due to the break statement.',
    ),
    Quiz(
      id: 'c_quiz_8',
      question: 'What is the output of the following code?\nfor (int i = 0; i < 5; i++)\n{\n    if (i % 2 == 0)\n    {\n        continue;\n    }\n    Console.WriteLine(i);\n}',
      options: ['1 3', '0 2 4', '1 2 3 4'],
      correctOptionIndex: 0,
      explanation: 'The `continue` skips even values (0, 2, 4), so only 1 and 3 are printed.',
    ),
    Quiz(
      id: 'c_quiz_8',
      question: 'Which of the following is a common pitfall when using loops?',
      options: ['Forgetting to update the loop variable', 'Using the wrong loop type', 'Overusing nested loops', 'All of the above'],
      correctOptionIndex: 3,
      explanation: 'All listed issues are common pitfalls when writing loops and should be avoided.',
    ),
  ],
  status: LessonStatus.locked,
);

final Lesson c_lesson_9 = Lesson(
  id: 'c_lesson_9',
  title: 'Methods and Encapsulation',
  isCompleted: false,
  isOngoing: false,
  topics: [
    Topic(
      id: 'c_topic_9',
      title: 'Introduction to Methods',
      content: 'A method in C# is a block of code that performs a specific task. It has a name, a return type, and optional parameters. Methods help organize code, improve reusability, and make programs easier to maintain.',
      imageUrl: 'images/ctopic9 (1).png',
    ),
    Topic(
      id: 'c_topic_9',
      title: 'Defining a Method',
      content: 'A method is defined using the following syntax:\n\nreturnType MethodName(parameters)\n{\n    // Method body\n}',
      imageUrl: 'images/ctopic9 (2).png',
    ),
    Topic(
      id: 'c_topic_9',
      title: 'Method Parameters',
      content: 'Parameters are variables passed to a method to provide input. They are defined in the method signature and can be used within the method body. Multiple parameters can be declared by separating them with commas. When calling a method with parameters, the number and types of arguments must match.',
      imageUrl: 'images/ctopic9 (3).png',
    ),
    Topic(
      id: 'c_topic_9',
      title: 'Default Method Parameters',
      content: 'Calling a method without providing required parameters may cause an error. Default parameters can be assigned using the equals sign (=). Methods with default parameters can be called without passing arguments.',
      imageUrl: 'images/ctopic9 (4).png',
    ),
    Topic(
      id: 'c_topic_9',
      title: 'Return Values',
      content: 'The `return` keyword is used to return a value from a method. The value must match the return type specified in the method signature, such as int, double, or string.',
      imageUrl: 'images/ctopic9 (5).png',
    ),
    Topic(
      id: 'c_topic_9',
      title: 'Void Methods',
      content: 'A `void` method does not return a value. It is used when the method performs an action without producing a result.',
      imageUrl: 'images/ctopic9 (6).png',
    ),
    Topic(
      id: 'c_topic_9',
      title: 'Method Overloading',
      content: 'Method overloading allows you to define multiple methods with the same name but different parameters. The method executed depends on the number and types of arguments passed.',
      imageUrl: 'images/ctopic9 (7).png',
    ),
    Topic(
      id: 'c_topic_9',
      title: 'Encapsulation',
      content: 'Encapsulation is a key concept in object-oriented programming that restricts direct access to an object\'s data and methods. It is implemented using access modifiers like `private`, `public`, and `protected`.',
      imageUrl: 'images/ctopic9 (8).png',
    ),
    Topic(
      id: 'c_topic_9',
      title: 'Access Modifiers',
      content: 'Access modifiers control the visibility of classes, methods, and fields. The common access modifiers are:\n\n- `public`: Accessible from anywhere.\n- `private`: Accessible only within the same class.\n- `protected`: Accessible within the same class and derived classes.\n- `internal`: Accessible within the same assembly.',
    ),
    Topic(
      id: 'c_topic_9',
      title: 'Properties',
      content: 'Properties provide controlled access to private fields using `get` and `set` accessors.',
      imageUrl: 'images/ctopic9 (9).png',
    ),
    Topic(
      id: 'c_topic_9',
      title: 'Auto-Implemented Properties',
      content: 'Auto-implemented properties simplify property declarations by automatically creating a private backing field. They use the shorthand syntax: { get; set; }.',
      imageUrl: 'images/ctopic9 (10).png',
    ),
    Topic(
      id: 'c_topic_9',
      title: 'Common Pitfalls',
      content: '1. Forgetting to specify a return type for non-void methods.\n2. Overloading methods with ambiguous parameter lists.\n3. Exposing private fields directly without using properties.\n4. Using incorrect access modifiers, leading to unintended access levels.',
    ),
    Topic(
      id: 'c_topic_9',
      title: 'Lesson 9 Review',
      content: 'Let\'s have a mini-quiz to review what we\'ve learned so far.',
      imageUrl: 'images/quiz.png',
    ),
  ],
  quizzes: [
    Quiz(
      id: 'c_quiz_9',
      question: 'What is the purpose of a method in C#?',
      options: ['To perform a specific task', 'To define a class', 'To declare a variable', 'To create an object'],
      correctOptionIndex: 0,
      explanation: 'A method is a block of code that performs a specific task, improving code organization and reusability.',
    ),
    Quiz(
      id: 'c_quiz_9',
      question: 'What is the return type of a method that does not return any value?',
      options: ['void', 'int', 'string', 'bool'],
      correctOptionIndex: 0,
      explanation: '`void` is used for methods that do not return any value.',
    ),
    Quiz(
      id: 'c_quiz_9',
      question: 'What is the output of the following code?\nint Add(int a, int b)\n{\n    return a + b;\n}\nConsole.WriteLine(Add(3, 4));',
      options: ['7', 'Error.', '3, 4'],
      correctOptionIndex: 0,
      explanation: 'The method returns the sum of 3 and 4, which is 7.',
    ),
    Quiz(
      id: 'c_quiz_9',
      question: 'Which access modifier restricts access to the same class?',
      options: ['private', 'public', 'protected', 'internal'],
      correctOptionIndex: 0,
      explanation: '`private` limits access to within the same class only.',
    ),
    Quiz(
      id: 'c_quiz_9',
      question: 'Method overloading involves defining methods with what?',
      options: ['Same name but different parameters', 'Multiple return types', 'No parameters', 'No return type'],
      correctOptionIndex: 0,
      explanation: 'Method overloading allows different methods with the same name but different parameter lists.',
    ),
    Quiz(
      id: 'c_quiz_9',
      question: 'What is the concept of restricting direct access to an object\'s data and methods?',
      options: ['Encapsulation', 'Properties', 'Access Modifier Manipulation', 'Method Overloading'],
      correctOptionIndex: 0,
      explanation: 'Encapsulation restricts direct access and is achieved using access modifiers.',
    ),
    Quiz(
      id: 'c_quiz_9',
      question: 'What is the output of the following code?\nvoid PrintMessage()\n{\n    Console.WriteLine("Hello, World!");\n}\nPrintMessage();',
      options: ['Hello, World!', 'No output', 'Hello'],
      correctOptionIndex: 0,
      explanation: 'The method prints "Hello, World!" when called.',
    ),
    Quiz(
      id: 'c_quiz_9',
      question: 'Which of the following is an auto-implemented property?',
      options: ['public string Name { get; set; }', 'private string name;', 'public string Name { get { return name; } }', 'public string Name;'],
      correctOptionIndex: 0,
      explanation: 'Auto-implemented properties use the shorthand: { get; set; }',
    ),
    Quiz(
      id: 'c_quiz_9',
      question: 'What is the purpose of the `get` accessor in a property?',
      options: ['To retrieve the value of a property', 'To set the value of a property', 'To define a method', 'To create an object'],
      correctOptionIndex: 0,
      explanation: 'The `get` accessor is used to retrieve the value of a property.',
    ),
    Quiz(
      id: 'c_quiz_9',
      question: 'Which of the following is a common pitfall when using methods?',
      options: ['No return type for non-void methods', 'Using too many parameters', 'Defining too many methods', 'Using public access modifiers for all fields'],
      correctOptionIndex: 0,
      explanation: 'Forgetting to specify a return type for non-void methods is a common mistake.',
    ),
  ],
  status: LessonStatus.locked,
);

final Lesson c_lesson_10 = Lesson(
  id: 'c_lesson_10',
  title: 'Arrays',
  isCompleted: false,
  isOngoing: false,
  topics: [
    Topic(
      id: 'c_topic_10',
      title: 'Introduction to Arrays',
      content: 'An array in C# is a collection of elements of the same type stored in contiguous memory locations. Arrays are useful for storing multiple values in a single variable and accessing them using an index.',
      imageUrl: 'images/ctopic10 (1).png',
    ),
    Topic(
      id: 'c_topic_10',
      title: 'Declaring and Initializing Arrays',
      content: 'Arrays can be declared and initialized in several ways:\n\n1. Single-dimensional array:\nint[] numbers = new int[5];\n2. With initial values:\nint[] numbers = { 1, 2, 3, 4, 5 };\n3. Multi-dimensional array:\nint[,] matrix = new int[3, 3];',
    ),
    Topic(
      id: 'c_topic_10',
      title: 'Accessing Array Elements',
      content: 'Array elements are accessed using their index. The index starts at 0 for the first element.\n\nExample:\nint[] numbers = { 10, 20, 30, 40, 50 };\nConsole.WriteLine(numbers[2]); // Output: 30',
      imageUrl: 'images/ctopic10 (2).png',
    ),
    Topic(
      id: 'c_topic_10',
      title: 'Modifying Array Elements',
      content: 'Array elements can be modified by assigning a new value to a specific index.\n\nExample:\nnumbers[1] = 25;',
      imageUrl: 'images/ctopic10 (3).png',
    ),
    Topic(
      id: 'c_topic_10',
      title: 'Array Length',
      content: 'The `Length` property of an array returns the total number of elements in the array.\n\nExample:\nint[] numbers = { 1, 2, 3, 4, 5 };\nConsole.WriteLine(numbers.Length); // Output: 5',
      imageUrl: 'images/ctopic10 (4).png',
    ),
    Topic(
      id: 'c_topic_10',
      title: 'Iterating Over Arrays',
      content: 'Arrays can be iterated using loops such as `for`, `foreach`, or `while`.',
      imageUrl: 'images/ctopic10 (5).png',
    ),
    Topic(
      id: 'c_topic_10',
      title: 'Common Array Methods',
      content: 'C# provides several built-in methods for working with arrays:\n\n- `Array.Sort()`: Sorts the elements in an array.\n- `Array.Reverse()`: Reverses the order of elements in an array.\n- `Array.IndexOf()`: Finds the index of a specific element.',
    ),
    Topic(
      id: 'c_topic_10',
      title: 'Common Pitfalls',
      content: '1. Accessing an index outside the bounds of the array (causing an `IndexOutOfRangeException`).\n2. Forgetting to initialize the array before using it.\n3. Using an inappropriate loop type for array traversal.',
    ),
    Topic(
      id: 'c_topic_10',
      title: 'Lesson 10 Review',
      content: "Let's have a mini-quiz to review what we've learned so far.",
      imageUrl: 'images/quiz.png',
    ),
  ],
  quizzes: [
    Quiz(
        id: 'c_quiz_10',
        question: 'What is an array in C#?',
        options: [
          'A collection of elements of the same type',
          'A single variable',
          'A method',
          'A class',
        ],
        correctOptionIndex: 0,
        explanation: 'An array stores multiple elements of the same data type in contiguous memory locations.'
    ),
    Quiz(
        id: 'c_quiz_10',
        question: 'How do you declare a single-dimensional array in C#?',
        options: [
          'int[] numbers = new int[5];',
          'int numbers = new int[5];',
          'int[] numbers = { 1, 2, 3, 4, 5 };',
          'int numbers = { 1, 2, 3, 4, 5 };',
        ],
        correctOptionIndex: 0,
        explanation: 'The correct syntax for a single-dimensional array declaration is: int[] numbers = new int[5];'
    ),
    Quiz(
        id: 'c_quiz_10',
        question: 'What is the output of the following code?\nint[] numbers = { 10, 20, 30, 40, 50 };\nConsole.WriteLine(numbers[2]);',
        options: ['30', '20', '40', '50'],
        correctOptionIndex: 0,
        explanation: 'Array indexing starts at 0, so numbers[2] refers to the third element, which is 30.'
    ),
    Quiz(
        id: 'c_quiz_10',
        question: 'What is the purpose of the `Length` property in an array?',
        options: [
          'To get the total number of elements',
          'To modify the elements',
          'To sort the array',
          'To reverse the array',
        ],
        correctOptionIndex: 0,
        explanation: 'The `Length` property returns the total number of elements in the array.'
    ),
    Quiz(
        id: 'c_quiz_10',
        question: 'What is the output of the following code?\nint[] numbers = { 1, 2, 3, 4, 5 };\nnumbers[2] = 99;\nConsole.WriteLine(numbers[2]);',
        options: ['99', '3', '2'],
        correctOptionIndex: 0,
        explanation: 'The third element (index 2) is assigned a new value: 99.'
    ),
    Quiz(
        id: 'c_quiz_10',
        question: 'Which loop is best suited for iterating over an array?',
        options: ['for loop', 'while loop', 'do-while loop', 'foreach loop'],
        correctOptionIndex: 3,
        explanation: 'The `foreach` loop is specifically designed to iterate through each element in a collection like an array.'
    ),
    Quiz(
        id: 'c_quiz_10',
        question: 'What is the output of the following code?\nint[] numbers = { 5, 3, 9, 1, 4 };\nArray.Sort(numbers);\nConsole.WriteLine(string.Join(", ", numbers));',
        options: ['1, 3, 4, 5, 9', '5, 3, 9, 1, 4', '9, 5, 4, 3, 1'],
        correctOptionIndex: 0,
        explanation: '`Array.Sort()` arranges the elements in ascending order.'
    ),
    Quiz(
        id: 'c_quiz_10',
        question: 'What happens if you access an index outside the bounds of an array?',
        options: [
          'An `IndexOutOfRangeException` is thrown',
          'The program crashes',
          'The array resizes itself',
          'The last element is returned',
        ],
        correctOptionIndex: 0,
        explanation: 'Accessing an invalid index causes an `IndexOutOfRangeException`.'
    ),
    Quiz(
        id: 'c_quiz_10',
        question: 'Which of the following is a common pitfall when using arrays?',
        options: [
          'Index outside the bounds of the array',
          'Using the wrong loop type',
          'Forgetting to initialize the array',
          'All of the above',
        ],
        correctOptionIndex: 3,
        explanation: 'All listed issues are common mistakes when working with arrays.'
    ),
  ],
  status: LessonStatus.locked,
);

Map<String, Lesson> allLessons = {
  'c_lesson_1': c_lesson_1,
  'c_lesson_2': c_lesson_2,
  'c_lesson_3': c_lesson_3,
  'c_lesson_4': c_lesson_4,
  'c_lesson_5': c_lesson_5,
  'c_lesson_6': c_lesson_6,
  'c_lesson_7': c_lesson_7,
  'c_lesson_8': c_lesson_8,
  'c_lesson_9': c_lesson_9,
  'c_lesson_10': c_lesson_10,
};