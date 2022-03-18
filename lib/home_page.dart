import 'package:flutter/material.dart';
import 'package:learning/game_screen.dart';
import 'package:learning/main_page.dart';
import 'package:learning/word_add.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  final size = MediaQuery.of(context).size;
    
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: (size.height) * 0.10, bottom:(size.height) * 0.05 ),
                child: Container(
                  child: new Image.asset(
                    'images/logo.png',
                    width: size.width * 0.35,
                    height: size.height * 0.25,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              menuButton("Oyuna Başla", GameScreen()),
              menuButton("Kelime Ekle", WordAdd()),
              menuButton("Oyuna Başla", GameScreen()),
              menuButton("Oyuna Başla", GameScreen()),
            ],
          ),
        ),
      ),
    );
  }

  Widget menuButton(text, screen) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage(screen: screen)));
        },
        child: Container(
          child: Center(child: Text(text)),
          width: MediaQuery.of(context).size.width*0.8,
          height: MediaQuery.of(context).size.height*0.07,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: MediaQuery.of(context).size.width*0.02,
            ),
            borderRadius: BorderRadius.circular(30),
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
        ),
      ),
    );
  }
}
