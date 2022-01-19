import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class MycolorPicker extends StatefulWidget {
  @override
  _MycolorPickerState createState() => _MycolorPickerState();
}

class _MycolorPickerState extends State<MycolorPicker> {
  Color currentcolor = Colors.teal;

  void changeColor(Color color) => setState(() => currentcolor = color);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              text: "num1 Hsv",
            ),
            Tab(
              text: "num2 Matrial",
            ),
            Tab(
              text: "num3 Block",
            )
          ]),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),

          children: [
            ///this show use of Color Picker And slide Picker using
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                      padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                      backgroundColor: MaterialStateProperty.all(currentcolor)),
                  onPressed: () {
                    showDialog(
                        barrierDismissible: false,
                        barrierColor: Colors.orange.withOpacity(.1),
                        context: context,
                        builder: (BuildContext ctx) {
                          return AlertDialog(
                            title: Text("dilog title"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Divider(
                                  color: Colors.green,
                                ),
                                SingleChildScrollView(
                                  child: ColorPicker(
                                    pickerColor: currentcolor,
                                    onColorChanged: changeColor,
                                  ),
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(ctx);
                                    },
                                    child: Text("close"))
                              ],
                            ),
                          );
                        });
                  },
                  child: Text(
                    "choseColor",
                    style: TextStyle(
                        color: useWhiteForeground(currentcolor)
                            ? const Color(0xffffffff)
                            : const Color(0xff000000)),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                      padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                      backgroundColor: MaterialStateProperty.all(currentcolor)),
                  onPressed: () {
                    showDialog(
                        barrierDismissible: false,
                        barrierColor: Colors.orange.withOpacity(.1),
                        context: context,
                        builder: (BuildContext ctx) {
                          return AlertDialog(
                            title: Text("dilog title"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Divider(
                                  color: Colors.green,
                                ),
                                SingleChildScrollView(
                                  child: SlidePicker(
                                    pickerColor: currentcolor,
                                    onColorChanged: changeColor,
                                    colorModel: ColorModel.rgb,
                                    enableAlpha: false,
                                    displayThumbColor: true,
                                    showIndicator: true,
                                    indicatorBorderRadius:
                                        BorderRadius.vertical(
                                            top: Radius.circular(25)),
                                  ),
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(ctx);
                                    },
                                    child: Text("close"))
                              ],
                            ),
                          );
                        });
                  },
                  child: Text(
                    "choseColor",
                    style: TextStyle(
                        color: useWhiteForeground(currentcolor)
                            ? const Color(0xffffffff)
                            : const Color(0xff000000)),
                  ),
                ),
              ],
            ),
            //this used for Matrial color
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                    padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                    backgroundColor: MaterialStateProperty.all(currentcolor)),
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,
                      barrierColor: Colors.orange.withOpacity(.1),
                      context: context,
                      builder: (BuildContext ctx) {
                        return AlertDialog(
                          title: Text("dilog title"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Divider(
                                color: Colors.green,
                              ),
                              SingleChildScrollView(
                                child: MaterialPicker(
                                  pickerColor: currentcolor,
                                  onColorChanged: changeColor,
                                  enableLabel: true,
                                ),
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(ctx);
                                  },
                                  child: Text("close"))
                            ],
                          ),
                        );
                      });
                },
                child: Text(
                  "choseColor",
                  style: TextStyle(
                      color: useWhiteForeground(currentcolor)
                          ? const Color(0xffffffff)
                          : const Color(0xff000000)),
                ),
              ),
            ),
            //this used for block Color
            Center(
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                      padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                      backgroundColor: MaterialStateProperty.all(currentcolor)),
                  onPressed: () {
                    showDialog(
                        barrierDismissible: false,
                        barrierColor: Colors.orange.withOpacity(.1),
                        context: context,
                        builder: (BuildContext ctx) {
                          return AlertDialog(
                            title: Text("dilog title"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Divider(
                                  color: Colors.green,
                                ),
                                SingleChildScrollView(
                                  child: BlockPicker(
                                    pickerColor: currentcolor,
                                    onColorChanged: changeColor,
                                  ),
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(ctx);
                                    },
                                    child: Text("close"))
                              ],
                            ),
                          );
                        });
                  },
                  child: Text(
                    "ChoseColor",
                    style: TextStyle(
                        color: useWhiteForeground(currentcolor)
                            ? const Color(0xffffffff)
                            : const Color(0xff000000)),
                  )),
            )
          ],
          ////
        ),
      ),
    );
  }
}
