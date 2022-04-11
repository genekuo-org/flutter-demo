import 'package:flutter/material.dart';
import 'package:widgets/immutable_widget.dart';

import 'text_layout.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Welcome to Flutter'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.edit),
          )
        ],
      ),
      body: SingleChildScrollView(
        // avoid RenderFlex overflowed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*AspectRatio(
              aspectRatio: 1.0,
              child: ImmutableWidget(),
            ),*/
            Image.asset('assets/beach.jpg'),
            TextLayout()
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.lightBlue,
          child: Center(
            child: Text("I'm a drawer!"),
          ),
        ),
      ),
    );
  }
}
