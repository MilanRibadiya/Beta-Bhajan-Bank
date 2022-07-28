import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:bhajan_bank/constants/text_size.dart';
import 'package:bhajan_bank/providers/size_provider.dart';

class InputModel extends StatefulWidget {
  const InputModel({Key? key}) : super(key: key);

  @override
  _InputModelState createState() => _InputModelState();
}

class _InputModelState extends State<InputModel> {
  TextEditingController _controller = TextEditingController();
  List<bool> isBookSelect = [
    true,
    false,
    false,
    true,
    true,
    false,
    true,
    false,
    false,
    true,
    true,
    false
  ];
  int count = 0;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaleFactor: 1.0, size: const Size(392.72, 838.90)),
          child: Container(
            child: Center(
              child: MaterialButton(
                onPressed: () {
                  getDialog();
                },
                color: Colors.orange,
                child: Text(
                  "Input Model",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void getDialog() {

    showDialog(
        context: context,
        builder: (BuildContext context) {
          var height=context.watch<SizeProvider>().getHeight();
          var width=context.watch<SizeProvider>().getWidth();
          return StatefulBuilder(
            builder: (context, setState) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                const EdgeInsets.only(left: 40),
                                child: Text(
                                  "દૈનિક લક્ષ્ય",
                                  style: TextStyle(
                                    color: Color(0xff008ABD),
                                    fontSize: f16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'baloo',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 8, top: 8, bottom: 8),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: Icon(
                                  Icons.cancel_rounded,
                                  color: Colors.black,
                                  size: width*0.07,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "માળા",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: f17,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'baloo',
                        ),
                      ),
                      Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 25, left: 25),
                            child: Image.asset(
                              "assets/images/robot.gif",
                              width: double.infinity,
                              height: height*0.2,
                              fit: BoxFit.fill,
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "દરરોજ તમે કેટલી માળા કરશો ?", 
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: f15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'baloo',
                        ),
                      ),
                      textInput(height,width),
                      // booksInput(),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50, right: 50, bottom: 20),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff008ABD),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(30))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 8,
                                  right: 20,
                                  left: 20),
                              child: Text(
                                "આગળ વધો",
                                style: TextStyle(
                                  fontSize: f16,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'baloo',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        });
  }

  Column textInput(var height,var width) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            width: double.infinity,
            height: height*0.1,
            color: Colors.grey.shade200,
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(7),
                    ],
                    keyboardType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SvgPicture.asset(
                    "assets/images/edit.svg",
                    height: 20,
                    width: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "વર્ષ દરમ્યાન ની કુલ માળા",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'baloo',
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "365",
          textAlign: TextAlign.center,
          maxLines: 1,
          style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Container(
            width: double.infinity,
            height: 1,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "નોંધ: હું નિયમિત માળા કરીશ",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            fontFamily: 'baloo',
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }

  Container booksInput() {
    return Container(
      child: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (context.watch<SizeProvider>().width/200).round(),
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15
          ),
          padding: EdgeInsets.only(right: 10,left: 20,bottom: 20),
          shrinkWrap: true,
          itemCount: 10,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  isBookSelect[index]
                      ? isBookSelect[index] = false
                      : isBookSelect[index] = true;
                });
              },
              child: Container(
                width: 50,
                child: Stack(
                  children: [
                    Container(
                        width: double.infinity,
                        height: double.infinity,
                        padding: EdgeInsets.only(top: 10,right: 10),
                        child: Image(
                          image: AssetImage(
                              "assets/images/book.png"),
                          fit: BoxFit.fill,
                        )),
                    Visibility(
                        visible: isBookSelect[index],
                        child: Align(
                            alignment:
                            Alignment.topRight,
                            child: Icon(
                              Icons
                                  .check_circle_rounded,
                              color: Colors.green,
                              size: 30,
                            )))
                  ],
                ),
              ),
            );
          }),
    );
  }
}
