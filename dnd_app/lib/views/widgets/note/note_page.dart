import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';

class NotePage extends StatefulWidget {
  final String title;
  final String content;
  final String buttonText;
  final int valueColor;
  final String date;
  final void Function(String title, String content, int currentColor) onSaved;

  const NotePage({
    Key? key,
    required this.title,
    required this.content,
    required this.buttonText,
    required this.valueColor,
    required this.onSaved,
    required this.date,
  }) : super(key: key);

  @override
  NotePageState createState() => NotePageState();
}

class NotePageState extends State<NotePage> {
  final format = DateFormat('hh:mm ~ MM/dd/yyyy');
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  late double _height;
  late Color _currentColor;
  late Color _iconColor;
  late Color _fontColor;
  bool _keyboardIsVisible = false;

  @override
  void initState() {
    super.initState();
    _titleController.text = widget.title;
    _contentController.text = widget.content;
    _currentColor = Color(widget.valueColor);
    _iconColor = _currentColor != Colors.white ? Colors.white : Colors.black;
    _fontColor = _currentColor != Colors.white ? Colors.white : Colors.black;

    // Add listener to detect keyboard visibility
    WidgetsBinding.instance.window.viewInsets.bottom != 0
        ? _keyboardIsVisible = true
        : _keyboardIsVisible = false;
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    // Remove listener to avoid memory leaks
    WidgetsBinding.instance.window.viewInsets.bottom != 0
        ? _keyboardIsVisible = true
        : _keyboardIsVisible = false;
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
    _height = MediaQuery.of(context).size.height * 0.5;
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
                  decoration: InputDecoration(
                    hintText: 'Title',
                    hintStyle: TextStyle(color: _fontColor.withOpacity(0.6)),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
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
                  style: TextStyle(fontSize: 18.0, color: _fontColor),
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: _currentColor,
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: MediaQuery.of(context).viewInsets.bottom + 16.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Edited: ${widget.date}',
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
