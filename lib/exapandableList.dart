import 'package:flutter/material.dart';
 import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:marquee/marquee.dart';
import 'Drower1.dart';
import 'main.dart';
import 'styles.dart';

class Myexpand1 extends StatefulWidget {
  static const routeName = '/x1';

  @override
  _Myexpand1State createState() => _Myexpand1State();
}

class _Myexpand1State extends State<Myexpand1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: bar1,
        drawer: Mydrower(),
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 70,
              child: Card(
                color: Colors.teal,
                child: Marquee(
                  text: "Simble Marquee",
                  blankSpace: 100,
                 // pauseAfterRound: Duration(seconds: 5),
                  accelerationDuration: Duration(microseconds: 300),
                  
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 70,
              child: Card(
                color: Colors.teal,
                child: Marquee(
                  text: "Simble Marquee",
                  blankSpace: 50,
                  scrollAxis: Axis.vertical,
                 // pauseAfterRound: Duration(seconds: 3),
                  accelerationDuration: Duration(microseconds: 30),
                ),
              ),
            ),
          ],
        ));
  }

  ListView expandableListFun(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ExpansionTile(
            backgroundColor: Colors.orangeAccent,
            leading: Icon(Icons.account_circle),
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text(
              "Account",
              style: t1,
            ),
            children: [
              Divider(
                color: Colors.blueGrey,
              ),
              Card(
                color: Colors.amberAccent,
                child: ListTile(
                  leading: Icon(Icons.add),
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text(
                    "Sign up!",
                    style: t2,
                  ),
                  subtitle: Text(
                    "Where  You can register A new Acount",
                    style: t3,
                  ),
                  onTap: () {
                    tosatFun(context);
                  },
                ),
              ),
              Card(
                color: Colors.amberAccent,
                child: ListTile(
                  leading: Icon(Icons.account_circle),
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text(
                    "Log In!!",
                  ),
                  subtitle: Text(
                    "Where  You can LogIn A new Acount",
                  ),
                  onTap: () {
                    tosatFun(context);
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ExpansionTile(
            backgroundColor: Colors.orangeAccent,
            leading: Icon(Icons.message),
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text(
              "More Information",
              style: t1,
            ),
            children: [
              Divider(
                color: Colors.blueGrey,
              ),
              Card(
                color: Colors.amberAccent,
                child: ListTile(
                  leading: Icon(Icons.phone),
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text(
                    "Contact",
                    style: t2,
                  ),
                  subtitle: Text(
                    "Where  You can calls",
                    style: t3,
                  ),
                  onTap: () {
                    tosatFun(context);
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
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
}
