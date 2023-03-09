import 'package:flutter/material.dart';

class NotePage extends StatefulWidget {
  final String title;
  final String content;
  final String buttonText;
  final void Function(String title, String content) onSaved;

  const NotePage({
    Key? key,
    required this.title,
    required this.content,
    required this.buttonText,
    required this.onSaved,
  }) : super(key: key);

  @override
  NotePageState createState() => NotePageState();
}

class NotePageState extends State<NotePage> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  late double _height;

  @override
  void initState() {
    super.initState();
    _titleController.text = widget.title;
    _contentController.text = widget.content;
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height * 0.5;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
              widget.onSaved(
                _titleController.text,
                _contentController.text,
              );
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.done, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: _height,
          child: Padding(
            padding:
                EdgeInsets.all(MediaQuery.of(context).size.width * (1 / 20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _titleController,
                  decoration: const InputDecoration(
                    hintText: 'Title',
                    border: InputBorder.none,
                  ),
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                ),
                const SizedBox(height: 8.0),
                TextField(
                  controller: _contentController,
                  decoration: const InputDecoration(
                    hintText: 'Take a note...',
                    border: InputBorder.none,
                  ),
                  style: const TextStyle(fontSize: 18.0),
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
