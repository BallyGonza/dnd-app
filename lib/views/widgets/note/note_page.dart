import 'package:dnd_app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotePage extends StatefulWidget {
  const NotePage({
    required this.note,
    required this.buttonText,
    required this.onSaved,
    required this.isNewNote,
    super.key,
  });
  final Note note;
  final String buttonText;
  final bool isNewNote;
  final void Function(String title, String content, int currentColor) onSaved;

  @override
  NotePageState createState() => NotePageState();
}

class NotePageState extends State<NotePage> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  late Color _currentColor;
  late Color _iconColor;
  late Color _fontColor;
  late bool _isEditing;

  @override
  void initState() {
    super.initState();
    _isEditing = widget.isNewNote;
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
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: FaIcon(FontAwesomeIcons.arrowLeft, color: _iconColor),
        ),
        actions: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.pencil, color: _iconColor),
            onPressed: () {
              // habilitar edicion
              setState(() {
                _isEditing = !_isEditing;
              });
            },
          ),
          IconButton(
            onPressed: () {
              widget.onSaved(
                _titleController.text,
                _contentController.text,
                _currentColor.value,
              );
              Navigator.of(context).pop();
            },
            icon: FaIcon(FontAwesomeIcons.check, color: _iconColor),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * (1 / 20),
        ),
        child: SingleChildScrollView(
          child: Wrap(
            children: [
              TextField(
                enabled: _isEditing,
                controller: _titleController,
                decoration: InputDecoration(
                  hintText: 'Titulo',
                  hintStyle: TextStyle(color: _fontColor.withOpacity(0.6)),
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: _fontColor,
                ),
                keyboardType: TextInputType.multiline,
                textAlign: TextAlign.left,
                cursorColor: _fontColor,
                textCapitalization: TextCapitalization.sentences,
                toolbarOptions: const ToolbarOptions(
                  copy: true,
                  paste: true,
                  selectAll: true,
                  cut: true,
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: TextField(
                  enabled: _isEditing,
                  controller: _contentController,
                  decoration: InputDecoration(
                    hintText: 'Descripción...',
                    hintStyle: TextStyle(color: _fontColor.withOpacity(0.6)),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    fontSize: 18,
                    color: _fontColor,
                    fontWeight: FontWeight.normal,
                  ),
                  keyboardType: TextInputType.multiline,
                  textAlign: TextAlign.left,
                  cursorColor: _fontColor,
                  cursorHeight: 20,
                  textCapitalization: TextCapitalization.sentences,
                  maxLines: null,
                  toolbarOptions: const ToolbarOptions(
                    copy: true,
                    paste: true,
                    selectAll: true,
                    cut: true,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: _currentColor,
        child: Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
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
                  showModalBottomSheet<SizedBox>(
                    context: context,
                    builder: (context) {
                      return SizedBox(
                        height: 196,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: BlockPicker(
                                availableColors: [
                                  Colors.white,
                                  Colors.red,
                                  Colors.red[300]!,
                                  Colors.purple,
                                  Colors.purple[200]!,
                                  Colors.purple[100]!,
                                  Colors.deepPurple,
                                  Colors.deepPurple[300]!,
                                  Colors.deepPurple[200]!,
                                  Colors.indigo,
                                  Colors.indigo[200]!,
                                  Colors.blue,
                                  Colors.blue[200]!,
                                  Colors.cyan,
                                  Colors.cyan[200]!,
                                  Colors.teal,
                                  Colors.teal[200]!,
                                  Colors.green,
                                  Colors.green[200]!,
                                  Colors.green[300]!,
                                  Colors.orange[300]!,
                                  Colors.deepOrange,
                                  Colors.brown,
                                  Colors.brown[200]!,
                                  Colors.grey,
                                  Colors.blueGrey,
                                  Colors.black,
                                ],
                                layoutBuilder: (context, colors, child) {
                                  return GridView.count(
                                    crossAxisCount: 4,
                                    children: [
                                      ...colors.map(
                                        (color) => GestureDetector(
                                          onTap: () {
                                            _onColorChanged(color);
                                          },
                                          child: Container(
                                            color: color,
                                          ),
                                        ),
                                      ),
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
                icon: FaIcon(FontAwesomeIcons.palette, color: _iconColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
