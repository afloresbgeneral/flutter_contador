import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  final TextStyle _textStyle = new TextStyle(fontSize: 25);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Número de clicks: ', style: _textStyle),
          Text(
            ' $_counter',
            style: _textStyle,
          )
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: _createButton(),
    );
  }

  Widget _createButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          // RESET
          onPressed: _reset,
          child: Icon(Icons.exposure_zero),
          backgroundColor: Colors.blueAccent,
        ),
        Expanded(
            child: SizedBox(
          width: 30.0,
        )),
        FloatingActionButton(
          // REMOVE
          onPressed: _remove,
          child: Icon(Icons.remove),
          backgroundColor: Colors.blueAccent,
        ),
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          // sum
          onPressed: _add,
          child: Icon(Icons.plus_one),
          backgroundColor: Colors.blueAccent,
        )
      ],
    );
  }

  void _add() {
    _counter++;
    setState(() {});
  }

  void _remove() {
    _counter--;
    setState(() {});
  }

  void _reset() {
    _counter = 0;
    setState(() {});
  }
}
