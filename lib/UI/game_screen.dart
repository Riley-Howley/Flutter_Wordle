import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GameScreen extends StatefulWidget {
  GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  List<String> guess = [];

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Wordle",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(children: [
              Container(
                child: Column(
                  children: guess
                      .map((e) => Column(
                            children: [
                              WordleText(e),
                            ],
                          ))
                      .toList(),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                child: TextFormField(
                  onFieldSubmitted: (value) {
                    setState(() {
                      guess.add(controller.text);
                    });
                  },
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: "Enter 5 letter word...",
                    border: OutlineInputBorder(),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class WordleText extends StatelessWidget {
  String text;
  WordleText(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            padding: EdgeInsets.all(6),
            child: Center(
              child: Text(
                text[0],
                style: TextStyle(fontSize: 44),
              ),
            ),
          ),
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            padding: EdgeInsets.all(6),
            child: Center(
              child: Text(
                text[1],
                style: TextStyle(fontSize: 44),
              ),
            ),
          ),
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            padding: EdgeInsets.all(6),
            child: Center(
              child: Text(
                text[2],
                style: TextStyle(fontSize: 44),
              ),
            ),
          ),
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            padding: EdgeInsets.all(6),
            child: Center(
              child: Text(
                text[3],
                style: TextStyle(fontSize: 44),
              ),
            ),
          ),
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            padding: EdgeInsets.all(6),
            child: Center(
              child: Text(
                text[4],
                style: TextStyle(fontSize: 44),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
