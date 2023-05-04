import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'my_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

const Color colorDark = Color(0xFF374352);
const Color colorLight = Color(0xFFe6eeff);

class _HomePageState extends State<HomePage> {

  String _question = "";
  String _answer = "";
  bool darkMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? colorDark : colorLight,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: GestureDetector(
                        child: _switchMode(),
                        onTap: (){
                          setState(() {
                            darkMode ? darkMode = false :  darkMode = true;
                          });
                        },
                    ),
                  ),
                  SizedBox(height: 60),
                  Text(
                    _answer,
                    style: TextStyle(
                      fontSize: _answer.length > 12 ? 38 : 46,
                      fontWeight: FontWeight.bold,
                      color: darkMode ? Colors.white : Colors.deepOrange,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    _question,
                    style: TextStyle(
                      fontSize: _question.length > 18 ? 28 : 32,
                      color: darkMode ? Colors.green : Colors.grey,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          child: _buttonRounded(title: "C", textColor: darkMode ? Colors.green : Colors.deepOrange),
                        onTap: (){
                            setState(() {
                              _question = "";
                              _answer = "";
                            });
                        },
                      ),
                      GestureDetector(
                          child: _buttonRounded(title: "("),
                        onTap: (){
                            setState(() {
                              _question += "(";
                            });
                        },
                      ),
                      GestureDetector(
                          child: _buttonRounded(title: ")"),
                        onTap: (){
                            setState(() {
                              _question += ")";
                            });
                        },
                      ),
                      GestureDetector(
                        child: _buttonRounded(title: "/", textColor: darkMode ? Colors.green : Colors.deepOrange),
                        onTap: (){
                          setState(() {
                            _question += "/";
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: _buttonRounded(title: "7"),
                        onTap: (){
                          setState(() {
                            _question += "7";
                          });
                        },
                      ),
                      GestureDetector(
                        child: _buttonRounded(title: "8"),
                        onTap: (){
                          setState(() {
                            _question += "8";
                          });
                        },
                      ),
                      GestureDetector(
                        child: _buttonRounded(title: "9"),
                        onTap: (){
                          setState(() {
                            _question += "9";
                          });
                        },
                      ),
                      GestureDetector(
                        child: _buttonRounded(title: "*", textColor: darkMode ? Colors.green : Colors.deepOrange),
                        onTap: (){
                          setState(() {
                            _question += "*";
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: _buttonRounded(title: "4"),
                        onTap: (){
                          setState(() {
                            _question += "4";
                          });
                        },
                      ),
                      GestureDetector(
                        child: _buttonRounded(title: "5"),
                        onTap: (){
                          setState(() {
                            _question += "5";
                          });
                        },
                      ),
                      GestureDetector(
                        child: _buttonRounded(title: "6"),
                        onTap: (){
                          setState(() {
                            _question += "6";
                          });
                        },
                      ),
                      GestureDetector(
                        child: _buttonRounded(title: "-", textColor: darkMode ? Colors.green : Colors.deepOrange),
                        onTap: (){
                          setState(() {
                            _question += "-";
                          });
                        },
                      ),
                    ],
                  ),

                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: _buttonRounded(title: "1"),
                        onTap: (){
                          setState(() {
                            _question += "1";
                          });
                        },
                      ),
                      GestureDetector(
                        child: _buttonRounded(title: "2"),
                        onTap: (){
                          setState(() {
                            _question += "2";
                          });
                        },
                      ),
                      GestureDetector(
                        child: _buttonRounded(title: "3"),
                        onTap: (){
                          setState(() {
                            _question += "3";
                          });
                        },
                      ),
                      GestureDetector(
                        child: _buttonRounded(title: "+", textColor: darkMode ? Colors.green : Colors.deepOrange),
                        onTap: (){
                          setState(() {
                            _question += "+";
                          });
                        },
                      ),
                    ],
                  ),

                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: _buttonRounded(title: "0"),
                        onTap: (){
                          setState(() {
                            _question += "0";
                          });
                        },
                      ),
                      GestureDetector(
                        child: _buttonRounded(title: ".", textColor: darkMode ? Colors.green : Colors.deepOrange),
                        onTap: (){
                          setState(() {
                            _question += ".";
                          });
                        },
                      ),
                      GestureDetector(
                        child: _buttonRounded(
                            icon: Icons.backspace_outlined,
                            iconColor: darkMode ? Colors.green : Colors.deepOrange),
                        onTap: () {
                          setState(() {
                            _question = _question.substring(0,_question.length-1);

                          });
                        },
                      ),
                      GestureDetector(
                        child: _buttonRounded(title: "=", textColor: darkMode ? Colors.green : Colors.deepOrange),
                        onTap: (){
                          setState(() {
                            Parser p = Parser();
                            Expression exp = p.parse(_question);
                            ContextModel cm = ContextModel();
                            double eval = exp.evaluate(EvaluationType.REAL, cm);

                            if(eval.toString().endsWith("0")){
                              _answer = eval.toString().substring(0, eval.toString().length-2);
                            }else{
                              _answer = eval.toString();
                            }
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget _buttonRounded({ String? title, double padding = 16, IconData? icon, Color? iconColor, Color? textColor}){
    return MyButton(
        darkMode: darkMode,
        borderRadius: BorderRadius.circular(40),
        padding: EdgeInsets.all(padding),
        child: SizedBox(
          width: padding * 2,
          height: padding * 2,
          child: Center(
            child: title != null ? Text(
              title,
              style: TextStyle(
                  color: textColor ?? (darkMode
                         ? Colors.white
                         : Colors.black),
                fontSize: 30,
              ),
            ) :
                Icon(icon, color: iconColor, size: 30,)
          ),
        ));
  }

  Widget _switchMode(){
    return MyButton(
      darkMode: darkMode,
      borderRadius: BorderRadius.circular(40),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: SizedBox(
          width: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.wb_sunny,
                color: darkMode ? Colors.grey : Colors.deepOrange,
              ),
              Icon(
                Icons.nightlight_round,
                color: darkMode ? Colors.green : Colors.grey,
              ),
            ],
          ),
        ),
    );
  }
}

