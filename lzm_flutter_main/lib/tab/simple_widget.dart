import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';

int _data = 0;

class SimpleWidget extends StatefulWidget {
  final Map params;
  final String messages;
  final String uniqueId;

  const SimpleWidget(this.uniqueId, this.params, this.messages);

  @override
  _SimpleWidgetState createState() => _SimpleWidgetState();
}

class _SimpleWidgetState extends State<SimpleWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tab_example'),
      ),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 80.0),
                child: Text(
                  widget.messages,
                  style: TextStyle(fontSize: 28.0, color: Colors.blue),
                ),
                alignment: AlignmentDirectional.center,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.only(top: 32.0),
                child:
                GestureDetector(
                  child: Text(
                    widget.uniqueId,
                    style: TextStyle(fontSize: 16.0, color: Colors.red),
                  ),
                  onTap: () {
                    _data++;
                    print("asd" + _data.toString());
                  },
                ),
                alignment: AlignmentDirectional.center,
              )
            ],
          ))),
    );
  }
}
