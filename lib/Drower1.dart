import 'package:flutter/material.dart';
import 'package:flutter_advanec_ui/colorPicker.dart';
 
import 'exapandableList.dart';
import 'imagePicker.dart';
import 'main.dart';
import 'styles.dart';
  
class Mydrower extends StatelessWidget {
  void selectScreen(BuildContext ctx, x) {
   /* switch (x) {
      case 1:
        Navigator.of(ctx)
            .push(MaterialPageRoute(builder: (ctx) => Myexpand1()));

        break;
      case 0:
       Navigator.of(ctx)
            .push(MaterialPageRoute(builder: (ctx) => MyHomePage()));
break;
      default:
    }*/
    x==0?
       Navigator.of(ctx)
            .push(MaterialPageRoute(builder: (ctx) => MyHomePage())):x==1?
        Navigator.of(ctx)
            .push(MaterialPageRoute(builder: (ctx) => Myexpand1())):x==2?
        Navigator.of(ctx)
            .push(MaterialPageRoute(builder: (ctx) => MyImagePicker())):
       Navigator.of(ctx)
            .push(MaterialPageRoute(builder: (ctx) => MycolorPicker()));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
              focusColor: Colors.red,
              title: Text(
                " Home",
                style: t1,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                selectScreen(context, 0);
              }),

          ListTile(
              focusColor: Colors.red,
              title: Text(
                " ExpandableList",
                style: t1,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                selectScreen(context, 1);
              }),
              ListTile(
              focusColor: Colors.red,
              title: Text(
                " Image Picker",
                style: t1,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                selectScreen(context, 2);
              }),
               ListTile(
              focusColor: Colors.red,
              title: Text(
                " ColorPicker",
                style: t1,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                selectScreen(context, 3);
              }),
        ],
      ),
    );
  }
} 