import 'package:flutter/material.dart';

class MyData {
  bool liked = false;
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<MyData>? list;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = [];
    for (var i = 0; i < 100; i++) list!.add(MyData());
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView.builder(
        itemCount: list!.length,
        itemBuilder: (BuildContext context, int index) {
          return new LikeClass(list![index]);
        },
      ),
    );
  }
}


class LikeClass extends StatefulWidget {
  final MyData data;

  LikeClass(this.data);

  @override
  _LikeClassState createState() => new _LikeClassState();
}

class _LikeClassState extends State<LikeClass> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new GestureDetector(
            onTap: (() {
              setState(() {
                widget.data.liked = !widget.data.liked;
              });
            }),
            child: new Icon(
              Icons.favorite,
              size: 24.0,
              color: widget.data.liked ? Colors.red : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}