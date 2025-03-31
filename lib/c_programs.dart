import 'models.dart';

final List<CSharpTemplate> cSharpTemplates = [
  CSharpTemplate(
    title: 'Hello World - Standard Output',
    code: 'using System;\n\nclass Program {\n  static void Main() {\n    Console.WriteLine("Hello, World!");\n  }\n}',
  ),
  /*CSharpTemplate(
    title: 'Standard Input',
    code: '''using System;

class Program {
  static void Main() {
    Console.Write("Enter your name: ");
    string name = Console.ReadLine();
    Console.WriteLine("Hello, " + name + "!");
  }
}''',
  ),*/
  CSharpTemplate(
    title: 'Comments',
    code: '''using System;

class Program {
  static void Main() {
    // This is a single-line comment
    /* This is a 
       multi-line comment */
    Console.WriteLine("Comments help explain code!");
  }
}''',
  ),
  CSharpTemplate(
    title: 'If-Else Statement',
    code: 'using System;\n\nclass Program {\n  static void Main() {\n    int number = 10;\n    if (number > 0) {\n      Console.WriteLine("Positive number");\n    } else {\n      Console.WriteLine("Non-positive number");\n    }\n  }\n}',
  ),
  CSharpTemplate(
    title: 'Switch Statement',
    code: 'using System;\n\nclass Program {\n  static void Main() {\n    int day = 3;\n    switch (day) {\n      case 1:\n        Console.WriteLine("Monday");\n        break;\n      case 2:\n        Console.WriteLine("Tuesday");\n        break;\n      case 3:\n        Console.WriteLine("Wednesday");\n        break;\n      default:\n        Console.WriteLine("Other day");\n        break;\n    }\n  }\n}',
  ),
  CSharpTemplate(
    title: 'For Loop',
    code: 'using System;\n\nclass Program {\n  static void Main() {\n    for (int i = 0; i < 10; i++) {\n      Console.WriteLine(i);\n    }\n  }\n}',
  ),
  CSharpTemplate(
    title: 'While Loop',
    code: 'using System;\n\nclass Program {\n  static void Main() {\n    int i = 0;\n    while (i < 5) {\n      Console.WriteLine(i);\n      i++;\n    }\n  }\n}',
  ),
  CSharpTemplate(
    title: 'Do-While Loop',
    code: 'using System;\n\nclass Program {\n  static void Main() {\n    int i = 0;\n    do {\n      Console.WriteLine(i);\n      i++;\n    } while (i < 5);\n  }\n}',
  ),
  CSharpTemplate(
    title: 'Methods and Encapsulation',
    code: '''using System;

class Person {
  private string name;

  public void SetName(string newName) {
    name = newName;
  }

  public void Greet() {
    Console.WriteLine("Hello, my name is " + name);
  }
}

class Program {
  static void Main() {
    Person person = new Person();
    person.SetName("Alice");
    person.Greet();
  }
}''',
  ),
  CSharpTemplate(
    title: 'Function',
    code: 'using System;\n\nclass Program {\n  static void Greet() {\n    Console.WriteLine("Hello from a function!");\n  }\n  static void Main() {\n    Greet();\n  }\n}',
  ),
  CSharpTemplate(
    title: 'Class & Object',
    code: 'using System;\n\nclass Car {\n  public string model = "Toyota";\n}\n\nclass Program {\n  static void Main() {\n    Car myCar = new Car();\n    Console.WriteLine(myCar.model);\n  }\n}',
  ),
  CSharpTemplate(
    title: 'Exception Handling',
    code: 'using System;\n\nclass Program {\n  static void Main() {\n    try {\n      int result = 10 / 0;\n    } catch (DivideByZeroException e) {\n      Console.WriteLine("Error: " + e.Message);\n    }\n  }\n}',
  ),
  CSharpTemplate(
    title: 'Array Example',
    code: 'using System;\n\nclass Program {\n  static void Main() {\n    int[] numbers = {1, 2, 3, 4, 5};\n    foreach (int num in numbers) {\n      Console.WriteLine(num);\n    }\n  }\n}',
  ),
  CSharpTemplate(
    title: 'List Example',
    code: 'using System;\nusing System.Collections.Generic;\n\nclass Program {\n  static void Main() {\n    List<string> names = new List<string> {"Alice", "Bob", "Charlie"};\n    names.Add("David");\n    foreach (string name in names) {\n      Console.WriteLine(name);\n    }\n  }\n}',
  ),
  CSharpTemplate(
    title: 'Dictionary Example',
    code: 'using System;\nusing System.Collections.Generic;\n\nclass Program {\n  static void Main() {\n    Dictionary<string, int> ages = new Dictionary<string, int>();\n    ages["Alice"] = 25;\n    ages["Bob"] = 30;\n    foreach (var pair in ages) {\n      Console.WriteLine(pair.Key + " is " + pair.Value + " years old.");\n    }\n  }\n}',
  ),
  CSharpTemplate(
    title: 'Lambda Expression',
    code: 'using System;\nusing System.Linq;\n\nclass Program {\n  static void Main() {\n    int[] numbers = {1, 2, 3, 4, 5};\n    var evenNumbers = numbers.Where(n => n % 2 == 0);\n    foreach (var num in evenNumbers) {\n      Console.WriteLine(num);\n    }\n  }\n}',
  ),
];
