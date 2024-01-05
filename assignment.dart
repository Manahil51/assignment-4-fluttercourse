import 'dart:io';
//Q1.Write a program that takes a listof numbers as input and prints the even numbers in the list using a for loop.
void main() {
  print("Enter the numbers separted by space");
  String input = stdin.readLineSync()!;
  List<int> numbers = input.split(' ').map(int.parse).toList();
  print("even numbers inthe list:");
  for (int number in numbers) {
    if (number % 2 == 0) {
      stdout.write('$number');
    }
  }
}

//Q2.Write a program that prints the Fibonacci sequence up to a given number using a for loop.

 void printFibonacciSequence(int n) {
   int a = 0, b = 1;

  print("Fibonacci sequence up to $n:");
  for (int i = 0; a <= n; i++) {
    stdout.write('$a ');
    int temp = a + b;
    a = b;
    b = temp;
  }
}

void main() {
    print("Enter a number to generate Fibonacci sequence:");
    int limit = int.parse(stdin.readLineSync()!);
    printFibonacciSequence(limit);
  }

//    Q3.Implement a code that checks
// whether a given number is prime or not.

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  } return true;
}

void main() {

    print("Enter a number to check if it's prime:");
    int num = int.parse(stdin.readLineSync()!);
    if (isPrime(num)) {
      print("$num is a prime number.");
    } else {
      print("$num is not a prime number.");
    }

}

// Q4.Implement a code that finds the
// largest element in a list using a for loop.

int findLargestElement(List<int> numbers) {
  int largest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }

  return largest;
}

void main() {
  print("Enter a list of numbers separated by spaces:");
  String input = stdin.readLineSync()!;
  List<int> numbers = input.split(' ').map(int.parse).toList();
  int largestElement = findLargestElement(numbers);

  print("The largest element in the list is: $largestElement");
}

//Q5. Implement a function that checks if a given string is a palindrome.

import 'dart:io';

bool isPalindrome(String input) {
  String cleanInput = input.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');

  int start = 0;
  int end = cleanInput.length - 1;

  while (start < end) {
    if (cleanInput[start] != cleanInput[end]) {
      return false;
    }
    start++;
    end--;
  }

  return true; 
}
void main() {

  print("Enter a string to check if it's a palindrome:");
  String input = stdin.readLineSync()!;

 
  if (isPalindrome(input)) {
    print("'$input' is a palindrome.");
  } else {
    print("'$input' is not a palindrome.");
  }
}



// Q6. Write a program to make such a
// pattern like a right angle triangle with a number which will repeat a number in
// a row.

void printNumberTriangle(int n) {
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('$i');
    }
    stdout.write('\n');
  }
}

void main() {

 
    print("Enter the number of rows for the pattern:");
    int rows = int.parse(stdin.readLineSync()!);

   
    printNumberTriangle(rows);
  }

// Q7. Write a program that takes a list
// of numbers as input and prints the numbers greater than 5 using a for loop and
// if-else condition.

void printNumbersGreaterThanFive(List<int> numbers) {
  print("Numbers greater than 5 in the list:");
  for (int number in numbers) {
    if (number > 5) {
      print(number);
    } else {}
  }
}

void main() {
  print("Enter a list of numbers separated by spaces:");
  String input = stdin.readLineSync()!;
  List<int> numbers = input.split(' ').map(int.parse).toList();
  printNumbersGreaterThanFive(numbers);
}

// Q8.  Write a program that counts the
number of vowels in a given string using a for loop and if-else condition.
void main() {
  print('enter a string');
  String input = stdin.readLineSync()!.toLowerCase();
  int vowelCount = 0;
  for (int i = 0; i < input.length; i++) {
    if ('aeiou'.contains(input[i])) {
      vowelCount++;
    }
  }
  print('number of vowels in the string: $vowelCount');
}

 //Q9:Implement a code that finds the maximum and minimum elements in a list using a for loop and if-else condition.

void main() {
  print('enter a list a of numbers separated by space');
  String input = stdin.readLineSync()!;
  List<int> numbers = input.split('').map(int.parse).toList();

  if (numbers.isNotEmpty) {
    int max = numbers[0];
    int min = numbers[0];

    for (int number in numbers) {
      if (number > max) {
        max = number;
      }
      if (number < min) {
        min = number;
      }
    }
    print("Maximum element in the list: $max");
    print("Minimum element in the list: $min");
  } else {
    print("List is empty. Cannot find maximum and minimum elements.");
  }
}
// Q10. Write a program that calculates the
// sum of the squares of all odd numbers in a given list using a for loop and
// if-else condition.

void main() {
  print("Enter a list of numbers separated by spaces:");
  String input = stdin.readLineSync()!;
  List<int> numbers = input.split(' ').map(int.parse).toList();
  int sumOfSquares = 0;

  for (int number in numbers) {
    if (number % 2 != 0) {
      sumOfSquares += (number * number);
    }
  }

  print("Sum of squares of odd numbers in the list: $sumOfSquares");
}

//answer of question 11
List<Map<String, dynamic>> studentDetails = [
  {
    'name': 'ALI',
    'marks': [80, 75, 90],
    'section': 'A',
    'rollNumber': 101
  },
  {
    'name': 'AYESHA',
    'marks': [95, 92, 88],
    'section': 'B',
    'rollNumber': 102
  },
  {
    'name': 'SAAD',
    'marks': [70, 65, 75],
    'section': 'A',
    'rollNumber': 103
  },
];

String calculateGrade(int average) {
  if (average >= 90) {
    return 'A';
  } else if (average >= 80) {
    return 'B';
  } else if (average >= 70) {
    return 'C';
  } else if (average >= 60) {
    return 'D';
  } else {
    return 'F';
  }
}

void main() {
  for (var student in studentDetails) {
    String name = student['name'];
    List<int> marks = student['marks'];
    int average = (marks.reduce((a, b) => a + b) / marks.length).round();
    String grade = calculateGrade(average);

    print('$name (Roll Number: ${student['rollNumber']}) - Grade: $grade');
  }
}
