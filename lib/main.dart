import 'package:flutter/material.dart';
import 'dart:convert';


void main() => runApp(MaterialApp(
  home: Calculator(),
));

class Calculator extends StatefulWidget {
   Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}



class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Calculator',
            style: TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: 32,
            ),
          ),
        ),
        body: Container(
          color: Colors.grey[900],
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 200, 60, 0),
                child: TextField(
                  controller: Controller,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    labelText: '',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 0.75,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                  ),
                  maxLines: 5,
                  minLines: 1,
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                child: Container(
                  color: Colors.grey[900],
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Controller.text = "";
                            },
                            child: Text(
                                'AC',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                )
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(20, 10),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              String temp = Controller.text;
                              String temp2 = "";
                              for (int i = 0; i < temp.length - 1; i++) {
                                temp2 += temp[i];
                              }
                              Controller.text = temp2;
                            },
                            child: Text(
                              'X',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(20, 10),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              '+/-',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(20, 10),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              String res = Controller.text;
                              res += '/';
                              Controller.text = res;
                            },
                            child: Text(
                              '/',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(20, 10),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Controller.text += '7';
                            },
                            child: Text(
                                '7',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                )
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(20, 10),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              Controller.text += '8';
                            },
                            child: Text(
                              '8',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(20, 10),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              Controller.text += '9';
                            },
                            child: Text(
                              '9',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(20, 10),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              Controller.text += '*';
                            },
                            child: Text(
                              '*',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(20, 10),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Controller.text += '4';
                            },
                            child: Text(
                                '4',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                )
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(20, 10),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              Controller.text += '5';
                            },
                            child: Text(
                              '5',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(20, 10),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              Controller.text += '6';
                            },
                            child: Text(
                              '6',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(20, 10),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              Controller.text += '-';
                            },
                            child: Text(
                              '-',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(20, 10),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Controller.text += '1';
                            },
                            child: Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                )
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(20, 10),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              Controller.text += '2';
                            },
                            child: Text(
                              '2',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(20, 10),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              Controller.text += '3';
                            },
                            child: Text(
                              '3',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(20, 10),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              Controller.text += '+';
                            },
                            child: Text(
                              '+',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(20, 10),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Controller.text += '%';
                            },
                            child: Text(
                                '%',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                )
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(20, 10),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              Controller.text += '0';
                            },
                            child: Text(
                              '0',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(20, 10),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              Controller.text += '.';
                            },
                            child: Text(
                              '.',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(20, 10),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              String result = Controller.text;
                              String result2 = Evaluate(result);
                              Controller.text = result2;
                            },
                            child: Text(
                              '=',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(20, 10),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
  String Evaluate(String result){
    String ans = "";
    String oper = "";
    String num1 = "";
    String num2 = "";
    int i;
    for(i=0;i<result.length;i++){
      if(result[i]=='+' || result[i]=='-' || result[i]=='*' || result[i]=='/'){
        oper = result[i];
        break;
      }
      else if(result[i]=='.'){
        num1 += result[i];
      }
      else{
        num1 += result[i];
      }
    }
    for(int j=i+1;j<result.length;j++){
      num2 += result[j];
    }
    double nu1 = double.parse(num1);
    double n1;
    if(nu1>=0){
       n1 = nu1;
    }
    else{
      n1 = (-1)*nu1;
    }
    double nu2 = double.parse(num2);
    double n2;
    if(nu2>=0){
      n2 = nu2;
    }
    else{
      n2 = (-1)*nu2;
    }
    if(oper == '+'){
      ans = (n1+n2).toString();
    }
    else if(oper == '-'){
      ans = (n1-n2).toString();
    }
    else if(oper == '*' && ((nu1>=0&&nu2>=0) || (nu1<=0 && nu2<=0))){
      ans = (n1*n2).toString();
    }
    else if(oper == '*' && ((nu1>=0&&nu2<=0) || (nu1<=0 && nu2>=0))){
      ans = ((-1)*(n1*n2)).toString();
    }
    else if(oper == '/'&& ((nu1>=0&&nu2>=0) || (nu1<=0 && nu2<=0))){
      ans = (n1/n2).toString();
    }
    else if(oper == '/' && ((nu1>=0&&nu2<=0) || (nu1<=0 && nu2>=0))){
      ans = ((-1)*(n1/n2)).toString();
    }
    else if(oper == '%') {
      ans = (n1 % n2).toString();
    }
    return ans;
  }
}



final TextEditingController Controller = TextEditingController();
@override
void dispose() {
  // Clean up the controller when the widget is disposed.
  Controller.dispose();

}




