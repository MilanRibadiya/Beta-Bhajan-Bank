import 'package:bhajan_bank/providers/main_frame_provider.dart';
import 'package:bhajan_bank/screens/home_page.dart';
import 'package:bhajan_bank/screens/member_selection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class MainFrame extends StatefulWidget {
  const MainFrame({Key? key}) : super(key: key);

  @override
  _MainFrameState createState() => _MainFrameState();
}

class _MainFrameState extends State<MainFrame> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    return Scaffold(
      body: SafeArea(
        child: MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaleFactor: 1.0, size: const Size(392.72, 838.90)),
          child: Container(
            child: Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Color(0xff008ABD),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 5,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    /*Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MemberSelection(true)));*/
                                  },
                                  child: SvgPicture.asset(
                                    "assets/svg/avatar.svg",
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Ghanshyam ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                    overflow: TextOverflow.ellipsis),
                                IconButton(onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MemberSelection(true)));
                                }, icon: Icon(Icons.supervised_user_circle_rounded,size: 30,color: Colors.white,)),

                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              height: 1,
                              color: Colors.white.withAlpha(70),
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: [
                                    ListView.builder(
                                        itemCount: context
                                            .watch<MainFrameProvider>()
                                            .functionList
                                            .length,
                                        shrinkWrap: true,
                                        physics: NeverScrollableScrollPhysics(),
                                        itemBuilder: (context, position) {
                                          return Column(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  context
                                                      .read<MainFrameProvider>()
                                                      .changeSelectedPage(
                                                          position);
                                                  context
                                                      .read<MainFrameProvider>()
                                                      .closeDrawer();
                                                },
                                                child: Container(
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                    color: context
                                                                .watch<
                                                        MainFrameProvider>()
                                                                .selectedFeature ==
                                                            position
                                                        ? Colors.white
                                                        : null,
                                                    borderRadius: context
                                                                .watch<
                                                        MainFrameProvider>()
                                                                .selectedFeature ==
                                                            position
                                                        ? BorderRadius.only(
                                                            bottomRight:
                                                                Radius.circular(
                                                                    25),
                                                            topRight:
                                                                Radius.circular(
                                                                    25),
                                                          )
                                                        : null,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 25),
                                                    child: Row(
                                                      children: [
                                                        SvgPicture.asset(
                                                          context
                                                                  .watch<
                                                              MainFrameProvider>()
                                                                  .functionList[
                                                              position][1],
                                                          color: context
                                                                      .watch<
                                                              MainFrameProvider>()
                                                                      .selectedFeature ==
                                                                  position
                                                              ? Color(
                                                                  0xff008ABD)
                                                              : Colors.white,
                                                          height: 22,
                                                          width: 22,
                                                        ),
                                                        SizedBox(width: 15),
                                                        Text(
                                                          context
                                                                  .watch<
                                                              MainFrameProvider>()
                                                                  .functionList[
                                                              position][0],
                                                          style: TextStyle(
                                                              color: context
                                                                          .watch<
                                                                  MainFrameProvider>()
                                                                          .selectedFeature ==
                                                                      position
                                                                  ? Color(
                                                                      0xff008ABD)
                                                                  : Colors
                                                                      .white,
                                                              fontSize: 17,
                                                              fontWeight: context
                                                                          .watch<
                                                                  MainFrameProvider>()
                                                                          .selectedFeature ==
                                                                      position
                                                                  ? FontWeight
                                                                      .bold
                                                                  : null),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              if ([6, 8].contains(position))
                                                Column(
                                                  children: [
                                                    SizedBox(height: 20),
                                                    Container(
                                                      height: 1,
                                                      color: Colors.white
                                                          .withAlpha(70),
                                                    ),
                                                    SizedBox(height: 20),
                                                  ],
                                                )
                                            ],
                                          );
                                        }),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 25),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              SvgPicture.asset(
                                                  "assets/svg/ic_facebook.svg",
                                                  height: 35),
                                              SvgPicture.asset(
                                                  "assets/svg/ic_facebook.svg",
                                                  height: 35),
                                              SvgPicture.asset(
                                                  "assets/svg/ic_youtube.svg",
                                                  height: 35),
                                              SvgPicture.asset(
                                                  "assets/svg/ic_whatsapp.svg",
                                                  height: 35),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Copyright© 2022 KalakunjMandir.com",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 8,
                                                fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Privacy Policy | Terms and conditions",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 8),
                                              ),
                                              Text(
                                                "1.0",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: height * 0.05),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/svg/ic_log_out.svg",
                                    height: 22,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Log Out",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ],
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                AnimatedPositioned(
                  top:
                      context.watch<MainFrameProvider>().isOpen ? height * 0.1 : 0.0,
                  bottom:
                      context.watch<MainFrameProvider>().isOpen ? height * 0.1 : 0.0,
                  left:
                      context.watch<MainFrameProvider>().isOpen ? width * 0.75 : 0.0,
                  right: context.watch<MainFrameProvider>().isOpen
                      ? -width * 0.75
                      : 0.0,
                  duration: Duration(milliseconds: 300),
                  child: HomePage(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
