import 'package:flutter/material.dart';

import 'text_output.dart';

class TextControl extends StatefulWidget {
  final String initialText;

  TextControl({this.initialText = 'Assignment 1 - Widgets & Basics'});

  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  TextOutput _textBelowAppBar;
  TextOutput _newTextBelowAppBar =
      TextOutput(text: 'Assignment 1 - Widgets & Basics - COMPLETE!');
  TextOutput _buttonText = TextOutput(text: 'Press here');

  void _onPressed() {
    print('_onPressed()');
    setState(() {
      _textBelowAppBar = _newTextBelowAppBar;
    });
  }

  @override
  void initState() {
    super.initState();
    _textBelowAppBar = TextOutput(text: widget.initialText);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          _textBelowAppBar,
          RaisedButton(
            onPressed: _onPressed,
            child: _buttonText,
          ),
        ],
      ),
    );
  }
}
