import 'package:flutter/material.dart';
import 'package:learning/home_page.dart';
import 'package:learning/main.dart';

class WordAdd extends StatefulWidget {
  const WordAdd({Key key}) : super(key: key);

  @override
  State<WordAdd> createState() => _WordAddState();
}

class _WordAddState extends State<WordAdd> {
  final _wordEnController = TextEditingController();
  final _wordTrController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 80, 40, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Kelimenin Türkçesi"),
                ),
                wordField(
                  "Kelimenin türkçesini giriniz",
                  _wordTrController,
                  false,
                  Icon(Icons.text_fields),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Kelimenin İngilizcesi"),
                ),
                wordField(
                  "Kelimenin ingilizcesini giriniz",
                  _wordEnController,
                  false,
                  Icon(Icons.text_fields),
                )
              ],
            ),
          ),
          addButton(_add, "Ekle")
        ],
      )),
    );
  }

  Widget wordField(
      String hint, TextEditingController controller, bool obscure, Icon i) {
    return TextFormField(
      controller: controller,
      obscureText: obscure,
      autofocus: false,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(45.0)),
        suffixIcon: i,
      ),
    );
  }

  Widget addButton(Function func, String text) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xFFFEDBD0),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            offset: const Offset(
              5.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
          BoxShadow(
            color: Colors.white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: MaterialButton(
        onPressed: func,
        textColor: Colors.black,
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  void _add() {
  }
}
