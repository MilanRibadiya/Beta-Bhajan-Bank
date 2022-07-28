import 'package:bhajan_bank/constants/text_size.dart';
import 'package:bhajan_bank/providers/main_frame_provider.dart';
import 'package:bhajan_bank/screens/niyam_submission.dart';
import 'package:bhajan_bank/widgets/coin.dart';
import 'package:bhajan_bank/widgets/switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black54,
          offset: Offset(0, 5),
          spreadRadius: 3,
          blurRadius: 10,
        )
      ]),
      child: GestureDetector(
        onHorizontalDragUpdate: (drag) {
          if (drag.delta.dx > 1) {
            context
                .read<MainFrameProvider>()
                .openDrawer();
          } else if (drag.delta.dx < -1) {
            context.read<MainFrameProvider>().closeDrawer();
          }
        },
        // child: Container(
        //   color: Colors.white,
        //   child: Column(
        //     children: [
        //       Container(
        //         color: Color(0xff008ABD),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           mainAxisSize: MainAxisSize.max,
        //           children: [
        //             Padding(
        //               padding: const EdgeInsets.only(bottom: 8),
        //               child: IconButton(
        //                 onPressed: () {
        //                   print("Tap");
        //                 },
        //                 icon: const Icon(
        //                   Icons.menu_rounded,
        //                   color: Colors.white,
        //                   size: 35,
        //                 ),
        //               ),
        //             ),
        //             Text(
        //               "Home",
        //               style: TextStyle(
        //                   color: Colors.white,
        //                   fontSize: 25,
        //                   fontWeight: FontWeight.w700),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.only(right: 10),
        //               child: Row(
        //                 children: [
        //                   IconButton(
        //                     icon: Icon(
        //                       Icons.notifications,
        //                       color: Colors.white,
        //                       size: 30,
        //                     ),
        //                     onPressed: () {},
        //                   ),
        //                   Container(
        //                     decoration: BoxDecoration(
        //                         color: Colors.white,
        //                         borderRadius:
        //                             BorderRadius.circular(5)),
        //                     padding: EdgeInsets.all(3),
        //                     child: Row(
        //                       children: [
        //                         Icon(
        //                           Icons.album_rounded,
        //                         ),
        //                         SizedBox(width: 3),
        //                         Container(
        //                           width: 40,
        //                           alignment: Alignment.center,
        //                           child: Text(
        //                             "145",
        //                             style: TextStyle(
        //                                 fontWeight: FontWeight.bold,
        //                                 height: 1.5,
        //                                 fontSize: 16),
        //                           ),
        //                         ),
        //                         SizedBox(width: 5),
        //                       ],
        //                     ),
        //                   )
        //                 ],
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       SingleChildScrollView(
        //         child: Row(
        //           children: [
        //             Expanded(
        //               child: Column(
        //                 children: [
        //                   Container(
        //                     height: 230,
        //                     decoration: BoxDecoration(
        //                       color: Colors.white,
        //                     ),
        //                     child: Container(
        //                       decoration: BoxDecoration(
        //                         borderRadius: BorderRadius.only(
        //                           bottomLeft: Radius.circular(50),
        //                         ),
        //                         color: Color(0xff008ABD),
        //                       ),
        //                     ),
        //                   ),
        //                   Container(
        //                     color: Color(0xff008ABD),
        //                     padding: EdgeInsets.only(right: 15),
        //                     child: Container(
        //                       width: double.infinity,
        //                       decoration: BoxDecoration(
        //                         color: Colors.white,
        //                         borderRadius: BorderRadius.only(
        //                             topRight: Radius.circular(30)),
        //                       ),
        //                       child: Padding(
        //                         padding: const EdgeInsets.symmetric(
        //                             vertical: 20, horizontal: 15),
        //                         child: Column(
        //                           children: [
        //                             Row(
        //                               mainAxisAlignment:
        //                               MainAxisAlignment.spaceBetween,
        //                               crossAxisAlignment:
        //                               CrossAxisAlignment.center,
        //                               children: [
        //                                 Text(
        //                                   "Updates",
        //                                   style: TextStyle(
        //                                       fontSize: 22,
        //                                       fontWeight: FontWeight.bold),
        //                                 ),
        //                                 Text(
        //                                   "1/3",
        //                                   textAlign: TextAlign.center,
        //                                 ),
        //                               ],
        //                             ),
        //                             SizedBox(
        //                               height: 10,
        //                             ),
        //                             Container(
        //                               height: 90,
        //                               decoration: BoxDecoration(
        //                                 color: Color(0xffF1F4FD),
        //                                 borderRadius: BorderRadius.circular(15),
        //                               ),
        //                               child: Row(
        //                                 children: [
        //                                   Container(
        //                                       decoration: BoxDecoration(
        //                                           color: Color(0xff008ABD),
        //                                           borderRadius:
        //                                           BorderRadius.circular(
        //                                               15)),
        //                                       child: Image.asset(
        //                                         "assets/images/logo.png",
        //                                         width: 130,
        //                                       )),
        //                                   Expanded(
        //                                     child: Padding(
        //                                       padding:
        //                                       const EdgeInsets.symmetric(
        //                                           horizontal: 8),
        //                                       child: Stack(
        //                                         children: [
        //                                           // Container(height: double.infinity,color: Colors.red,)
        //                                           Center(
        //                                             child: Container(
        //                                                 child: Text(
        //                                                   "આ મંગળવારે બધા હરિભક્તો મહારાજને રસ પુરી ધરાવશો.આ મંગળવારે બધા હરિભક્તો મહારાજને રસ પુરી ધરાવશો.",
        //                                                   softWrap: true,
        //                                                   style: TextStyle(
        //                                                       overflow:
        //                                                       TextOverflow
        //                                                           .ellipsis,
        //                                                       fontSize: 18,
        //                                                       fontFamily: "baloo",
        //                                                       height: 1.3),
        //                                                   maxLines: 2,
        //                                                 )),
        //                                           ),
        //                                           Align(
        //                                             alignment:
        //                                             Alignment.bottomRight,
        //                                             child: Container(
        //                                               decoration:
        //                                               BoxDecoration(
        //                                                 color:
        //                                                 Color(0xff008ABD),
        //                                                 borderRadius:
        //                                                 BorderRadius.only(
        //                                                     topLeft: Radius
        //                                                         .circular(
        //                                                         15),
        //                                                     bottomRight: Radius
        //                                                         .circular(
        //                                                         15)),
        //                                               ),
        //                                               padding:
        //                                               EdgeInsets.only(
        //                                                   left: 10,
        //                                                   right: 10,
        //                                                   top: 7,
        //                                                   bottom: 3),
        //                                               child: Text("રેસિપી",
        //                                                   style: TextStyle(
        //                                                     color:
        //                                                     Colors.white,
        //                                                     fontSize: 15,
        //                                                     height: 1.2,
        //                                                     fontFamily:
        //                                                     "baloo",
        //                                                   )),
        //                                             ),
        //                                           ),
        //                                         ],
        //                                       ),
        //                                     ),
        //                                   ),
        //                                 ],
        //                               ),
        //                             ),
        //                             SizedBox(
        //                               height: 20,
        //                             ),
        //                             Row(
        //                               mainAxisAlignment:
        //                               MainAxisAlignment.spaceBetween,
        //                               crossAxisAlignment:
        //                               CrossAxisAlignment.center,
        //                               children: [
        //                                 Text(
        //                                   "Your Selected Niyams",
        //                                   style: TextStyle(
        //                                       fontSize: 22,
        //                                       fontWeight: FontWeight.bold),
        //                                 ),
        //                                 Container(
        //                                   color: Color(0xffE5E5E5),
        //                                   padding: EdgeInsets.symmetric(vertical: 1,horizontal: 6),
        //                                   child: Row(
        //                                     children: [
        //                                       Icon(Icons.book_rounded),
        //                                       SizedBox(width: 5,),
        //                                       Text('Edit',style: TextStyle(fontSize: 18),)
        //                                     ],
        //                                   ),
        //                                 )
        //                               ],
        //                             ),
        //                             // ListView.builder(
        //                             //    itemCount: 5,
        //                             //     shrinkWrap: true,
        //                             //     physics: NeverScrollableScrollPhysics(),
        //                             //     itemBuilder: (context,position){
        //                             //
        //                             //   return Container(
        //                             //     color: Colors.orange,
        //                             //     height: 50,
        //                             //   );
        //                             // }),
        //                           ],
        //                         ),
        //                       ),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             Container(height: height,color: Colors.blue,)
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        child: Container(
          color: Color(0xff008ABD),
          child: Column(
            children: [
              Container(
                color: Color(0xff008ABD),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            if (context
                                .read<MainFrameProvider>()
                                .isOpen) {
                              context
                                  .read<MainFrameProvider>()
                                  .closeDrawer();
                            } else {
                              context
                                  .read<MainFrameProvider>()
                                  .openDrawer();
                            }
                          },
                          icon: const Icon(
                            Icons.menu_rounded,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        SizedBox(
                          width: 65,
                        )
                      ],
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          LanguageSwitch(Colors.white),
                          IconButton(
                            icon: Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: 28,
                            ),
                            onPressed: () {},
                          ),
                          Coin(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Color(0xff008ABD),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: LayoutBuilder(builder:
                            (BuildContext context,
                            BoxConstraints constraints) {
                          return MediaQuery(
                            data: MediaQuery.of(context).copyWith(
                                textScaleFactor: 1.0,
                                size: const Size(392.72, 838.90)),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                    minHeight:
                                    constraints.maxHeight,
                                    maxWidth:
                                    constraints.maxWidth),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      height: 200,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.only(
                                            bottomLeft:
                                            Radius.circular(
                                                50),
                                          ),
                                          color:
                                          Color(0xff008ABD),
                                        ),
                                        padding: EdgeInsets.only(
                                            left: 40,
                                            right: 20,
                                            top: 20,
                                            bottom: 20),
                                        child: ClipRRect(
                                            borderRadius:
                                            BorderRadius
                                                .circular(15),
                                            child: Image.asset(
                                              "assets/images/book.png",
                                              fit: BoxFit.fill,

                                            )),
                                      ),
                                    ),
                                    Container(
                                      color: Color(0xff008ABD),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                          BorderRadius.only(
                                              topRight: Radius
                                                  .circular(
                                                  30)),
                                        ),
                                        child: Padding(
                                          padding:
                                          const EdgeInsets
                                              .symmetric(
                                              vertical: 20,
                                              horizontal: 15),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                crossAxisAlignment:
                                                CrossAxisAlignment
                                                    .center,
                                                children: [
                                                  Text(
                                                    "Updates",
                                                    style: TextStyle(
                                                        fontSize:
                                                        f145,
                                                        fontWeight:
                                                        FontWeight
                                                            .bold),
                                                  ),
                                                  Text(
                                                    "1/3",
                                                    textAlign:
                                                    TextAlign
                                                        .center,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                height: 90,
                                                decoration:
                                                BoxDecoration(
                                                  color: Color(
                                                      0xffF1F4FD),
                                                  borderRadius:
                                                  BorderRadius
                                                      .circular(
                                                      15),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                        decoration: BoxDecoration(
                                                            color: Color(
                                                                0xff008ABD),
                                                            borderRadius: BorderRadius.circular(
                                                                15)),
                                                        child: Image
                                                            .asset(
                                                          "assets/images/temple_logo.png",
                                                          width:
                                                          130,
                                                        )),
                                                    Expanded(
                                                      child:
                                                      Padding(
                                                        padding: const EdgeInsets
                                                            .symmetric(
                                                            horizontal:
                                                            8),
                                                        child:
                                                        Stack(
                                                          children: [
                                                            // Container(height: double.infinity,color: Colors.red,)
                                                            Center(
                                                              child: Container(
                                                                  child: Text(
                                                                    "આ મંગળવારે બધા હરિભક્તો મહારાજને રસ પુરી ધરાવશો.આ મંગળવારે બધા હરિભક્તો મહારાજને રસ પુરી ધરાવશો.",
                                                                    softWrap: true,
                                                                    style: TextStyle(overflow: TextOverflow.ellipsis, fontSize: 16, fontFamily: "baloo", height: 1.3),
                                                                    maxLines: 2,
                                                                  )),
                                                            ),
                                                            Align(
                                                              alignment:
                                                              Alignment.bottomRight,
                                                              child:
                                                              Container(
                                                                decoration: BoxDecoration(
                                                                  color: Color(0xff008ABD),
                                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
                                                                ),
                                                                padding: EdgeInsets.only(left: 10, right: 10, top: 7, bottom: 3),
                                                                child: Text("રેસિપી",
                                                                    style: TextStyle(
                                                                      color: Colors.white,
                                                                      fontSize: 13,
                                                                      height: 1.2,
                                                                      fontFamily: "baloo",
                                                                    )),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                crossAxisAlignment:
                                                CrossAxisAlignment
                                                    .center,
                                                children: [
                                                  Text(
                                                    "Your Selected Niyams",
                                                    style: TextStyle(
                                                        fontSize:
                                                        f145,
                                                        fontWeight:
                                                        FontWeight
                                                            .bold),
                                                    overflow:
                                                    TextOverflow
                                                        .ellipsis,
                                                    softWrap:
                                                    true,
                                                    maxLines: 1,
                                                  ),
                                                  Container(
                                                    color: Color(
                                                        0xffE5E5E5),
                                                    padding: EdgeInsets
                                                        .symmetric(
                                                        vertical:
                                                        1,
                                                        horizontal:
                                                        6),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .book_rounded,
                                                          size:
                                                          20,
                                                        ),
                                                        SizedBox(
                                                          width:
                                                          5,
                                                        ),
                                                        Text(
                                                          'Edit',
                                                          style: TextStyle(
                                                              fontSize:
                                                              16),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                              ListView.builder(
                                                  itemCount: 5,
                                                  shrinkWrap:
                                                  true,
                                                  physics:
                                                  NeverScrollableScrollPhysics(),
                                                  itemBuilder:
                                                      (context,
                                                      position) {
                                                    return Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical:
                                                          8),
                                                      child:
                                                      Container(
                                                        height:
                                                        150,
                                                        child:
                                                        Stack(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                              const EdgeInsets.only(bottom: 20),
                                                              child:
                                                              Stack(
                                                                children: [
                                                                  Container(
                                                                    decoration: BoxDecoration(
                                                                      color: Color(0xffF1DCD7),
                                                                      borderRadius: BorderRadius.circular(13),
                                                                    ),
                                                                  ),
                                                                  SvgPicture.asset(
                                                                    "assets/svg/card_back.svg",
                                                                    color: Colors.white.withAlpha(90),
                                                                    height: double.infinity,
                                                                    width: double.infinity,
                                                                    fit: BoxFit.fitWidth,
                                                                  ),
                                                                  GestureDetector(
                                                                    onTap: (){
                                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> NiyamSubmission()));
                                                                    },
                                                                    child: Container(
                                                                      color: Colors.transparent,
                                                                      child: Row(
                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child: Padding(
                                                                              padding: const EdgeInsets.only(left: 25, bottom: 20),
                                                                              child: Column(
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    "માળા",
                                                                                    style: TextStyle(fontFamily: 'baloo', fontWeight: FontWeight.bold, fontSize: 23),
                                                                                    textAlign: TextAlign.left,
                                                                                  ),
                                                                                  Text(
                                                                                    "હું નિયમિત માળા કરીશ.",
                                                                                    style: TextStyle(fontFamily: 'baloo', fontSize: 18),
                                                                                  )
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(alignment: Alignment.centerRight, child: SvgPicture.asset("assets/svg/mala_niyam.svg")),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                              Alignment.bottomLeft,
                                                              child:
                                                              Row(
                                                                children: [
                                                                  SizedBox(width: 20),
                                                                  Container(
                                                                    padding: EdgeInsets.all(7),
                                                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), boxShadow: [
                                                                      BoxShadow(color: Colors.grey, spreadRadius: 0.2, blurRadius: 5, offset: Offset(0, 1))
                                                                    ]),
                                                                    child: SvgPicture.asset(
                                                                      "assets/svg/ic_niyam_submit.svg",
                                                                      height: 22,
                                                                      width: 22,
                                                                    ),
                                                                  ),
                                                                  SizedBox(width: 15),
                                                                  Container(
                                                                    padding: EdgeInsets.all(7),
                                                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), boxShadow: [
                                                                      BoxShadow(color: Colors.grey, spreadRadius: 0.2, blurRadius: 5, offset: Offset(0, 1))
                                                                    ]),
                                                                    child: SvgPicture.asset(
                                                                      "assets/svg/ic_function.svg",
                                                                      height: 22,
                                                                      width: 22,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      Container(
                        width: 15,
                        color: Color(0xff008ABD),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
