import 'package:flutter/material.dart';

class NoteModal extends StatefulWidget {
  final String title;
  final String content;
  final String buttonText;
  final void Function(String title, String content) onSaved;

  const NoteModal({
    Key? key,
    required this.title,
    required this.content,
    required this.buttonText,
    required this.onSaved,
  }) : super(key: key);

  @override
  NoteModalState createState() => NoteModalState();
}

class NoteModalState extends State<NoteModal> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _titleController.text = widget.title;
    _contentController.text = widget.content;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.title.isEmpty ? 'Add Note' : 'Edit Note',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _titleController,
            decoration: const InputDecoration(
              labelText: 'Title',
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _contentController,
            decoration: const InputDecoration(
              labelText: 'Content',
            ),
            maxLines: null,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              widget.onSaved(
                _titleController.text,
                _contentController.text,
              );
              Navigator.of(context).pop();
            },
            child: Text(widget.buttonText),
          ),
        ],
      ),
    );
  }
}
