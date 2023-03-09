import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';

class NotePage extends StatefulWidget {
  final Note note;
  final String buttonText;
  final void Function(String title, String content, int currentColor) onSaved;

  const NotePage({
    Key? key,
    required this.note,
    required this.buttonText,
    required this.onSaved,
  }) : super(key: key);

  @override
  NotePageState createState() => NotePageState();
}

class NotePageState extends State<NotePage> {
  final format = DateFormat('hh:mm | MM/dd/yyyy');
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  late Color _currentColor;
  late Color _iconColor;
  late Color _fontColor;

  @override
  void initState() {
    super.initState();
    _titleController.text = widget.note.title;
    _contentController.text = widget.note.content;
    _currentColor = Color(widget.note.color);
    _iconColor = _currentColor != Colors.white ? Colors.white : Colors.black;
    _fontColor = _currentColor != Colors.white ? Colors.white : Colors.black;
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  void _onColorChanged(Color color) {
    setState(() {
      _currentColor = color;
      _iconColor = _currentColor != Colors.white ? Colors.white : Colors.black;
      _fontColor = _currentColor != Colors.white ? Colors.white : Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _currentColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            color: _iconColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              widget.onSaved(
                _titleController.text,
                _contentController.text,
                _currentColor.value,
              );
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.done, color: _iconColor),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * (1 / 20)),
        child: SingleChildScrollView(
          child: Wrap(
            children: [
              TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  hintText: 'Title',
                  hintStyle: TextStyle(color: _fontColor.withOpacity(0.6)),
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                  color: _fontColor,
                ),
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
              const SizedBox(height: 8.0),
              TextField(
                controller: _contentController,
                decoration: InputDecoration(
                  hintText: 'Take a note...',
                  hintStyle: TextStyle(color: _fontColor.withOpacity(0.6)),
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: 18.0,
                  color: _fontColor,
                  fontWeight: FontWeight.normal,
                ),
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: _currentColor,
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: MediaQuery.of(context).viewInsets.bottom + 5.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Edited: ${widget.note.date}',
                style: TextStyle(color: _fontColor.withOpacity(0.6)),
              ),
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return SizedBox(
                        height: 196,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: BlockPicker(
                                // ignore:
                                availableColors: [
                                  Colors.white,
                                  Colors.red,
                                  Colors.pink,
                                  Colors.purple,
                                  Colors.deepPurple,
                                  Colors.indigo,
                                  Colors.blue,
                                  Colors.lightBlue,
                                  Colors.cyan,
                                  Colors.teal,
                                  Colors.green,
                                  Colors.green[100]!,
                                  Colors.lime,
                                  Colors.yellow,
                                  Colors.amber,
                                  Colors.orange,
                                  Colors.deepOrange,
                                  Colors.brown,
                                  Colors.grey,
                                  Colors.blueGrey,
                                  Colors.black,
                                  Colors.purple[100]!,
                                  Colors.red[200]!,
                                  Colors.indigo[200]!,
                                ],
                                layoutBuilder: (context, colors, child) {
                                  return GridView.count(
                                    crossAxisCount: 4,
                                    children: [
                                      ...colors
                                          .map(
                                            (color) => GestureDetector(
                                              onTap: () {
                                                _onColorChanged(color);
                                              },
                                              child: Container(
                                                color: color,
                                              ),
                                            ),
                                          )
                                          .toList(),
                                    ],
                                  );
                                },
                                pickerColor: _currentColor,
                                onColorChanged: _onColorChanged,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                icon: Icon(Icons.color_lens, color: _iconColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
