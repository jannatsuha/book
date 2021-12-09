import 'package:flutter/material.dart';
class DetailsPage extends StatefulWidget {
  String text;
   DetailsPage({Key? key,required this.text}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}
class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title:
        Text("Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child:
          Text(widget.text),
        ),
      ),
    );
  }
}
