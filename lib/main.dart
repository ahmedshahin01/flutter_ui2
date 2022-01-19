
 // ignore_for_file: deprecated_member_use
 
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
 
import 'Drower1.dart';
import 'exapandableList.dart';
import 'styles.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        // brightness: Brightness.dark,
        buttonColor: Colors.orange,
        primaryColor: Colors.orange,
      ),
      darkTheme: ThemeData(
          primaryColor: Colors.blueAccent, canvasColor: Colors.black12),
      home: MyHomePage(),
      routes: {
        '/x0': (context) => MyHomePage(),
        '/x1': (context) => Myexpand1(),
      },
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

String sti = "Test";
AppBar bar1 = AppBar(
  actions: [
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.account_circle),
    ),
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.account_circle),
    ),
  ],
  flexibleSpace: Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.red, Colors.deepOrange, Colors.orangeAccent])),
  ),
  centerTitle: true,
  title: Text(
    sti,
    style: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
  ),
);

class _MyHomePageState extends State<MyHomePage> {
  //this var used for slider
  int? _currentIndex;
  List imgList = [
    'images/s1.jpg',
    'images/s2.jpg',
    'images/s3.jpg',
    'images/q1.jpg',
    'images/q2.jpg',
    'images/q3.jpg',
  ];
  //this var used for radio
  var _radioValue;
  String? xresult;
  Color? xresultColor;
  //this var used for CheckBox
  var _radioValue2;
  bool js = false;
  bool cSharb = false;
  bool dart = false;
  String get texlang {
    String str = "You selected:\n";
    if (js == true) {
      str += "javaScript\n";
    }
    if (dart == true) {
      str += "dart\n";
    }
    if (cSharb == true) {
      str += "C#\n";
    } else {
      str += "none\n";
    }
    return str;
  }

  //this var used for theme swich
  ThemeMode tm = ThemeMode.light;
  bool swichVal = false;
// this var used for Dropdowen button
  String? _selectedLettter;
  List _litterList = ['A', 'B', 'C', 'D', 'E', 'F', 'G'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: tm,
      theme: ThemeData(
        buttonColor: Colors.orange,
        primaryColor: Colors.orange,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueAccent,
      ),
      home: Scaffold(
        appBar: bar1,
        drawer: Mydrower(),
        body: Center(
            child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            themeSwichFun(),
            SizedBox(
              height: 20,
            ),
            drobDowenButtonFun(),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(33),
              child: Column(
                children: [
                  //This Fun call for Radio Buttons
                  bulidRadioFun(),
                ],
              ),
            ),
            //This Fun call for CheckBox Buttons
            checkBoxFun(),
            SizedBox(
              height: 20,
            ),

            Column(
              children: [
                ElevatedButton(
                  style: b1,
                  onPressed: () {
                    buildDilaogFun(context);
                  },
                  child: Text(
                    "allert",
                    style: t1,
                  ),
                ),
                ElevatedButton(
                  style: b1,
                  onPressed: () {
                    setState(() {
                      sti = "test";
                    });

                    snackbarFun(context);
                  },
                  child: Text(
                    "Showsnsack bar",
                    style: t1,
                  ),
                ),
                ElevatedButton(
                  style: b1,
                  onPressed: () {
                    flushbarFun(context);
                  },
                  child: Text(
                    "FlushBars",
                    style: t1,
                  ),
                ),
              ],
            ),
            //This Fun call for Text Specs

            textspecsFun(),
            //This Fun call for Slider

            carsoulSliderFun(),
            //////////////////////////////////////////////////
          ],
        )
            //3Button for Dialog,fludhbar,snakbar

            ///

            ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ///combination different animation and reverse animation to achieve amazing effect.
            tosatFun(context);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Row drobDowenButtonFun() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Select Letter!",
          style: t1,
        ),
        DropdownButton(
          value: _selectedLettter,
          hint: Text(
            "   Select Letter!",
            style: TextStyle(color: Colors.blueAccent),
          ),
          items: _litterList.map((e) {
            return DropdownMenuItem(
              child: Text(e),
              value: e,
            );
          }).toList(),
          onChanged: (nval) {
            setState(() {
              _selectedLettter = nval as String?;
            });
          },
        )
      ],
    );
  }

  Row themeSwichFun() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Light",
          style: t1,
        ),
        Switch(
          value: swichVal,
          onChanged: (val) {
            setState(() {
              swichVal = val;
              if (swichVal == false) {
                tm = ThemeMode.light;
              } else {
                tm = ThemeMode.dark;
              }
            });
          },
          activeColor: Colors.black,
          inactiveThumbColor: Colors.blueAccent,
        ),
        Text(
          "Dark",
          style: t1,
        )
      ],
    );
  }

  Column checkBoxFun() {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              value: js,
              onChanged: (valuw2) {
                setState(() {
                  js = valuw2!;
                });
              },
            ),
            Text("js", style: t1),
          ],
        ),
        CheckboxListTile(
          value: cSharb,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (valx) {
            setState(() {
              cSharb = valx!;
            });
          },
          title: Text("c#", style: t1),
        ),
        CheckboxListTile(
          value: dart,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (value3) {
            setState(() {
              dart = value3!;
            });
          },
          title: Text(
            "dart",
            style: t1,
          ),
        ),
        ElevatedButton(
            onPressed: () {
              myDialog("you chose", texlang);
            },
            child: Text("apply"))
      ],
    );
  }

  RadioListTile<dynamic> radioListTileFun(val, tit, subtit) {
    return RadioListTile(
      value: val,
      groupValue: _radioValue2,
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (value1) {
        setState(() {
          _radioValue2 = value1;
        });
      },
      title: Text(
        tit,
        style: t1,
      ),
      subtitle: Text(
        subtit,
        style: t1,
      ),
    );
  }

  Column bulidRadioFun() {
    return Column(
      children: [
        Text(
          "gusss the answer: 2+2=?",
          style: t1,
        ),
        radioChoseFun(3),
        radioChoseFun(4),
        radioChoseFun(5),
      ],
    );
  }

  myDialog(txt1, txt2) {
    var ad = AlertDialog(
      content: Container(
        height: 199,
        width: 100,
        child: Column(
          children: [
            Text(
              "$txt1",
              style: TextStyle(color: xresultColor, fontSize: 20),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "$txt2",
                style: t1,
              ),
            )
          ],
        ),
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return ad;
        });
  }

  Row radioChoseFun(int val) {
    return Row(
      children: [
        Radio(
            value: val,
            groupValue: _radioValue,
            onChanged: (val) {
              setState(() {
                _radioValue = val;
                xresult = val == 4 ? "CorrectAnswer" : "WrongAnswer";
                xresultColor = val == 4 ? Colors.green : Colors.red;
                myDialog(xresult, "correctAnswer is 4");
              });
            }),
        Text(
          "$val",
          style: t1,
        )
      ],
    );
  }

  Column carsoulSliderFun() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text("slider1", style: t1, textAlign: TextAlign.center),
        CarouselSlider(
          options: CarouselOptions(
              enableInfiniteScroll: false,
              pauseAutoPlayOnTouch: true,
              autoPlayAnimationDuration: Duration(seconds: 3),
              autoPlay: true,
              enlargeCenterPage: true,
              height: 444,
              initialPage: 0,
              onPageChanged: (int index, _) {
                setState(() {
                  _currentIndex = index;
                });
              }),
          items: imgList.map((imgurl) {
            return Container(
              // margin: EdgeInsets.symmetric(horizontal: 10),
              width: 400,
              height: 400,
              child: Image.asset(imgurl, fit: BoxFit.fill),
            );
          }).toList(),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            circulColorFun(0),
            circulColorFun(1),
            circulColorFun(2),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "slider2",
          style: t1,
          textAlign: TextAlign.center,
        ),
        CarouselSlider.builder(
          itemCount: imgList.length,
          itemBuilder: (_, int index, int realIndex) {
            return Container(
              // margin: EdgeInsets.symmetric(horizontal: 10),
              width: 400,
              height: 400,
              child: Image.asset(imgList[index], fit: BoxFit.fill),
            );
          },
          options: CarouselOptions(
            autoPlayAnimationDuration: Duration(seconds: 2),
            autoPlay: true,
            enlargeCenterPage: true,
            height: 444,
            initialPage: 2,
            scrollDirection: Axis.vertical,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Container circulColorFun(index) {
    return Container(
      width: 20,
      height: 20,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentIndex == index ? Colors.green : Colors.red,
      ),
    );
  }

  Column textspecsFun() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SelectableText(
          "ldsfjlkdsfjjkjlkgjdflkj;lksjdljkdfslkjdflkdflkkkkkkkkkkkkkkkkkkkflsalksjdljkdfslkjdflkdflkkkkkkkkkkkkkkkkkkkflsalksjdljkdfslkjdflkdflkkkkkkkkkkkkkkkkkkkflsa",
          showCursor: true,
          cursorColor: Colors.blueGrey,
          cursorWidth: 10,
          style: t1,
          toolbarOptions:
              ToolbarOptions(copy: true, paste: true, selectAll: true),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 200,
          height: 40,
          color: Colors.orange,
          child: Text(
            "Clipped Clipped Clipped Clipped kg;'lkg;'jk;ljfg;ljg;ljgpouijpjjgjjjjjjjjjjpoijgpoijgpifjgClipped Clipped Clipped Clipped Clipped Clipped ",
            style: t1,
            overflow: TextOverflow.clip,
            softWrap: false,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 200,
          height: 40,
          color: Colors.orange,
          child: Text(
            "Clipped Clipped Clipped Clipped kg;'lkg;'jk;ljfg;ljg;ljgpouijpjjgjjjjjjjjjjpoijgpoijgpifjgClipped Clipped Clipped Clipped Clipped Clipped ",
            style: t1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 200,
          height: 40,
          color: Colors.orange,
          child: Text(
              "Clipped Clipped Clipped Clipped kg;'lkg;'jk;ljfg;ljg;ljgpouijpjjgjjjjjjjjjjpoijgpoijgpifjgClipped Clipped Clipped Clipped Clipped Clipped ",
              style: t1,
              overflow: TextOverflow.fade),
        )
      ],
    );
  }

  void flushbarFun(BuildContext context) {
    Flushbar(
      mainButton: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)))),
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text("close"),
      ),
      title: "thid is Title",
      borderColor: Colors.blueAccent,
      duration: Duration(seconds: 3),
      flushbarPosition: FlushbarPosition.TOP,
      message: "this is a message",
      messageText: Text(
        "this is message",
        style: t1,
      ),
      backgroundColor: Colors.orange,
    ).show(context);
  }

  void tosatFun(BuildContext context) {
    showToast(
      'This is normal toast with animation',
      context: context,
      animation: StyledToastAnimation.scale,
      reverseAnimation: StyledToastAnimation.fade,
      position:
          StyledToastPosition(align: Alignment.bottomCenter, offset: 140.0),
      animDuration: Duration(seconds: 1),
      duration: Duration(seconds: 4),
      curve: Curves.elasticOut,
      reverseCurve: Curves.linear,
    );
  }

  void snackbarFun(BuildContext context) {
    final snackBar = SnackBar(
      content: Text(
        'snackbar text',
        style: t1,
      ),
      backgroundColor: Colors.orange,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      duration: Duration(milliseconds: 2200),
      action: SnackBarAction(
          label: "undo",
          onPressed: () {
            setState(() {
              sti = "Fluuter Demo";
            });
          }),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void buildDilaogFun(BuildContext context) {
    final AlertDialog alert = AlertDialog(
      title: Text("dilog title"),
      content: Container(
          height: 200,
          child: Column(
            children: [
              Divider(
                color: Colors.green,
              ),
              Text('this alert done1'),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)))),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("close"),
                ),
              )
            ],
          )),
    );
    showDialog(
        barrierDismissible: false,
        barrierColor: Colors.orange.withOpacity(.1),
        context: context,
        builder: (BuildContext ctx) {
          return alert;
        });
  }

  // ignore: non_constant_identifier_names
  Widget MyText() {
    return Text(
      'You have pushed the button this many times:',
    );
  }
}
