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
    return SingleChildScrollView(
      child: SizedBox(
        height: _height,
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * (1 / 20)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.title.isEmpty ? 'Add Note' : 'Edit Note',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: 'Title',
                ),
              ),
              const SizedBox(height: 16),
              Flexible(
                child: TextField(
                  minLines: 5,
                  controller: _contentController,
                  decoration: const InputDecoration(
                    labelText: 'Content',
                  ),
                  maxLines: null,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                    widget.onSaved(
                      _titleController.text,
                      _contentController.text,
                    );
                    Navigator.of(context).pop();
                  },
                  child: Text(widget.buttonText),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
