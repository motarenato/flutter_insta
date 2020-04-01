import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Widget _cardHeader(String userName) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        userName,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      Icon(Icons.more_horiz)
    ],
  );

  Widget _cardActions() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.favorite_border),
          Icon(Icons.mode_comment),
          Icon(Icons.send),
        ],
      ),
      Icon(Icons.bookmark_border)
    ],
  );


  Widget _timelineCard() => Card(
      elevation: 3,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        child: Column ( children: <Widget>[
            _cardHeader("Teste flutter"),
            _cardActions()
          ],
        )
      )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.1,
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.list),
              onPressed: () {},
            )
          ],
        ),
      body: ListView(
              children: <Widget>[
                _timelineCard()
              ],
            ),
    );
  }
}