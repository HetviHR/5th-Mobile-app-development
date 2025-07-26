import 'package:flutter/material.dart';
import 'code_editor_screen.dart';

class PracticeScreen extends StatelessWidget {
  PracticeScreen({super.key});

  final List<String> questions = [
    'Write a Python function to reverse a string.',
    'Write a program to check if a number is prime.',
    'Implement a basic neural network using NumPy.',
    'Create a machine learning model using scikit-learn.',
    'Train a simple CNN with TensorFlow or PyTorch.'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: questions.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.all(10),
          child: ListTile(
            title: Text('Question ${index + 1}'),
            subtitle: Text(questions[index]),
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodeEditorScreen(
                      question: questions[index],
                    ),
                  ),
                );
              },
              child: const Text('Start Coding'),
            ),
          ),
        );
      },
    );
  }
}
