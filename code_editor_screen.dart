import 'package:flutter/material.dart';

class CodeEditorScreen extends StatefulWidget {
  final String question;

  const CodeEditorScreen({super.key, required this.question});

  @override
  State<CodeEditorScreen> createState() => _CodeEditorScreenState();
}

class _CodeEditorScreenState extends State<CodeEditorScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Code Editor")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.question,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: TextField(
                controller: _controller,
                maxLines: null,
                expands: true,
                decoration: InputDecoration(
                  hintText: "Write your code here...",
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
                style: const TextStyle(fontFamily: "monospace"),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                final code = _controller.text;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Code submitted!\n$code")),
                );
              },
              child: const Text("Submit Code"),
            ),
          ],
        ),
      ),
    );
  }
}
