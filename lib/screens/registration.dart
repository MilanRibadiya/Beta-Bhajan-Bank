import 'dart:io';

import 'package:bhajan_bank/providers/registration_provider.dart';
import 'package:bhajan_bank/providers/size_provider.dart';
import 'package:bhajan_bank/screens/main_frame.dart';
import 'package:bhajan_bank/widgets/topbar.dart';
import 'package:bhajan_bank/widgets/wave_clip1.dart';
import 'package:bhajan_bank/widgets/wave_clip2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class Registration extends StatelessWidget {
  Registration({Key? key}) : super(key: key);

  final List<TextInputFormatter> nameRegx = [
    LengthLimitingTextInputFormatter(15),
    FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]")),
  ];

  @override
  Widget build(BuildContext context) {
    var width = context.watch<SizeProvider>().getWidth();
    var height = context.watch<SizeProvider>().getHeight() - MediaQuery.of(context).viewPadding.top;

    return Scaffold(
      body: SafeArea(
        child: MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaleFactor: 1.0, size: const Size(392.72, 838.90)),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: height),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    TopBar("BHAJAN BANK", true, Colors.white, true, false,
                        Colors.white, Color(0xff008ABD), () {}),
                    Container(
                      height: height * 0.6,
                      child: Stack(
                        children: [
                          ClipPath(
                            clipper: WaveClipper1(),
                            child: Container(
                              height: height*0.6,
                              width: width,
                              color: const Color(0xff008ABD).withOpacity(0.2),
                            ),
                          ),
                          ClipPath(
                            clipper: WaveClipper2(),
                            child: Container(
                              width: width,
                              height: height*0.57,
                              color: const Color(0xff008ABD).withOpacity(0.5),
                            ),
                          ),
                          ClipPath(
                            clipper: WaveClipper1(),
                            child: Container(
                              height: height * 0.55,
                              width: width,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xff024579),
                                    Color(0xff008ABD),
                                  ]
                                )
                              ),
                            ),
                          ),

                          Positioned.fill(
                            child: Padding(
                              padding: EdgeInsets.only(right: width*0.1,left: width*0.1,bottom: width*0.15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "REGISTRATION",
                                    style: TextStyle(
                                        fontFamily: "pop",
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  ),

                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () => context
                                            .read<RegistrationProvider>()
                                            .pickImage(),
                                        child: context
                                            .watch<
                                            RegistrationProvider>()
                                            .image !=
                                            null
                                            ? ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(
                                              80),
                                          child: Image.file(
                                            context
                                                .watch<
                                                RegistrationProvider>()
                                                .image!,
                                            height: 120,
                                            width: 120,
                                            fit: BoxFit.cover,
                                          ),
                                        )
                                            : SvgPicture.asset(
                                          "assets/svg/avatar.svg",
                                          height: 100,
                                          width: 100,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            TextFormField(
                                              controller: context
                                                  .watch<
                                                  RegistrationProvider>()
                                                  .surnameCont,
                                              cursorColor: Colors.white,
                                              decoration:
                                              const InputDecoration(
                                                hintText: 'Surname',
                                                hintStyle: TextStyle(
                                                  color: Colors.white
                                                ),
                                                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,)),
                                                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,)),
                                              ),
                                              inputFormatters: nameRegx,
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white
                                              ),
                                            ),
                                            TextFormField(
                                              controller: context
                                                  .watch<
                                                  RegistrationProvider>()
                                                  .nameCont,
                                              decoration:
                                              const InputDecoration(
                                                hintText: 'Name',
                                                hintStyle: TextStyle(
                                                    color: Colors.white
                                                ),
                                                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,)),
                                                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,)),
                                              ),
                                              style: TextStyle(
                                                fontSize: 18,
                                                  color: Colors.white
                                              ),
                                              inputFormatters: nameRegx,
                                            ),
                                            TextFormField(
                                              controller: context
                                                  .watch<
                                                  RegistrationProvider>()
                                                  .fatherCont,
                                              decoration:
                                              const InputDecoration(
                                                hintText: "Father's Name",
                                                hintStyle: TextStyle(
                                                    color: Colors.white
                                                ),
                                                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,)),
                                                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,)),
                                              ),
                                              style: TextStyle(
                                                fontSize: 18,
                                                  color: Colors.white
                                              ),
                                              inputFormatters: nameRegx,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      context
                                          .read<RegistrationProvider>()
                                          .selectDate(context);
                                    },
                                    child: AbsorbPointer(
                                      child: TextFormField(
                                        controller: context
                                            .watch<RegistrationProvider>()
                                            .dateCont,
                                        decoration: InputDecoration(
                                            prefixIcon: Icon(
                                              CupertinoIcons.calendar,
                                              size: 28,
                                              color: Colors.white,
                                            ),
                                            hintText: "Date of Birth",
                                          hintStyle: TextStyle(
                                              color: Colors.white
                                          ),
                                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,)),
                                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,)),
                                        ),
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 40,
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            context
                                                .read<
                                                RegistrationProvider>()
                                                .setMale();
                                          },
                                          style:
                                          ElevatedButton.styleFrom(
                                            primary: context
                                                .watch<
                                                RegistrationProvider>()
                                                .isMale
                                                ? Colors.white
                                                : Color(0xff008ABD),
                                            shape:
                                            RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  10),
                                              side: context
                                                  .watch<
                                                  RegistrationProvider>()
                                                  .isMale
                                                  ? BorderSide(color: Colors.transparent)
                                                  : BorderSide(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          icon: Icon(
                                            Icons
                                                .person_outline_rounded,
                                            color: context
                                                .watch<
                                                RegistrationProvider>()
                                                .isMale
                                                ? Color(0xff013B6E)
                                                : Colors.white,
                                          ),
                                          label: Text(
                                            "Male",
                                            style: TextStyle(
                                                color: context
                                                    .watch<
                                                    RegistrationProvider>()
                                                    .isMale
                                                    ? Color(0xff013B6E)
                                                    : Colors.white,
                                                fontSize: 18),
                                            maxLines: 1,
                                            overflow:
                                            TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      SizedBox(
                                        height: 40,
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            context
                                                .read<
                                                RegistrationProvider>()
                                                .setFemale();
                                          },
                                          style:
                                          ElevatedButton.styleFrom(
                                            primary: context
                                                .watch<
                                                RegistrationProvider>()
                                                .isMale
                                                ? Color(0xff008ABD)
                                                : Colors.white,
                                            shape:
                                            RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  10),
                                              side: context
                                                  .watch<
                                                  RegistrationProvider>()
                                                  .isMale
                                                  ? BorderSide(
                                                  color: Colors.white)
                                                  : BorderSide(color: Colors.transparent),
                                            ),
                                          ),
                                          icon: Icon(
                                            Icons
                                                .person_outline_rounded,
                                            color: context
                                                .watch<
                                                RegistrationProvider>()
                                                .isMale
                                                ? Colors.white
                                                : Color(0xff013B6E),
                                          ),
                                          label: Text(
                                            "Female",
                                            style: TextStyle(
                                                color: context
                                                    .watch<
                                                    RegistrationProvider>()
                                                    .isMale
                                                    ? Colors.white
                                                    : Color(0xff013B6E),
                                                fontSize: 18),
                                            maxLines: 1,
                                            overflow:
                                            TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Container(
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              SvgPicture.asset(
                                "assets/svg/temple.svg",
                                width: double.infinity,
                                height: 185,
                                fit: BoxFit.fill,
                                alignment: Alignment.topCenter,
                                color: Color(0xffD0EAF4),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: width*0.1, right: width*0.1,bottom: 40),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      context
                                          .read<
                                          RegistrationProvider>()
                                          .registerUser();
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MainFrame()));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xff008ABD),
                                        shape:
                                        RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius
                                                .circular(
                                                30))),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 8,
                                          horizontal: 20),
                                      child: FittedBox(
                                        child: Text(
                                          "REGISTER",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight:
                                              FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                    ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaleFactor: 1.0, size: const Size(392.72, 838.90)),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: width),
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TopBar("BHAJAN BANK", true, Colors.white, true, false,
                            Colors.white, Color(0xff008ABD), () {}),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(30),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color(0xffd2d2d2),
                                      spreadRadius: 0.2,
                                      blurStyle: BlurStyle.normal),
                                  BoxShadow(
                                    color: Color(0xffF9FDFF),
                                    spreadRadius: -5,
                                    blurRadius: 12.0,
                                    offset: Offset.zero,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 15, right: 15),
                                    child: Text(
                                      "REGISTRATION",
                                      style: TextStyle(
                                          fontFamily: "pop",
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff008ABD),
                                          fontSize: 22),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () => context
                                                  .read<RegistrationProvider>()
                                                  .pickImage(),
                                              child: context
                                                          .watch<
                                                              RegistrationProvider>()
                                                          .image !=
                                                      null
                                                  ? ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              80),
                                                      child: Image.file(
                                                        context
                                                            .watch<
                                                                RegistrationProvider>()
                                                            .image!,
                                                        height: 120,
                                                        width: 120,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    )
                                                  : SvgPicture.asset(
                                                      "assets/svg/avatar.svg",
                                                      height: 100,
                                                      width: 100,
                                                    ),
                                            ),
                                            SizedBox(width: 10),
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  TextFormField(
                                                    controller: context
                                                        .watch<
                                                            RegistrationProvider>()
                                                        .surnameCont,
                                                    decoration:
                                                        const InputDecoration(
                                                      hintText: 'Surname',
                                                    ),
                                                    inputFormatters: nameRegx,
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  TextFormField(
                                                    controller: context
                                                        .watch<
                                                            RegistrationProvider>()
                                                        .nameCont,
                                                    decoration:
                                                        const InputDecoration(
                                                      hintText: 'Name',
                                                    ),
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ),
                                                    inputFormatters: nameRegx,
                                                  ),
                                                  TextFormField(
                                                    controller: context
                                                        .watch<
                                                            RegistrationProvider>()
                                                        .fatherCont,
                                                    decoration:
                                                        const InputDecoration(
                                                      hintText: "Father's Name",
                                                    ),
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ),
                                                    inputFormatters: nameRegx,
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            context
                                                .read<RegistrationProvider>()
                                                .selectDate(context);
                                          },
                                          child: AbsorbPointer(
                                            child: TextFormField(
                                              controller: context
                                                  .watch<RegistrationProvider>()
                                                  .dateCont,
                                              decoration: InputDecoration(
                                                  prefixIcon: Icon(
                                                    CupertinoIcons.calendar,
                                                    size: 28,
                                                  ),
                                                  hintText: "Date of Birth"),
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              flex: 1,
                                              child: SizedBox(
                                                height: 40,
                                                child: ElevatedButton.icon(
                                                  onPressed: () {
                                                    context
                                                        .read<
                                                            RegistrationProvider>()
                                                        .setMale();
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: context
                                                            .watch<
                                                                RegistrationProvider>()
                                                            .isMale
                                                        ? Color(0xff008ABD)
                                                        : Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      side: context
                                                              .watch<
                                                                  RegistrationProvider>()
                                                              .isMale
                                                          ? BorderSide(
                                                              color: Color(
                                                                  0xff008ABD))
                                                          : BorderSide(),
                                                    ),
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .person_outline_rounded,
                                                    color: context
                                                            .watch<
                                                                RegistrationProvider>()
                                                            .isMale
                                                        ? Colors.white
                                                        : Color(0xff6D747F),
                                                  ),
                                                  label: Text(
                                                    "Male",
                                                    style: TextStyle(
                                                        color: context
                                                                .watch<
                                                                    RegistrationProvider>()
                                                                .isMale
                                                            ? Colors.white
                                                            : Color(0xff6D747F),
                                                        fontSize: 18),
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Flexible(
                                              flex: 1,
                                              child: SizedBox(
                                                height: 40,
                                                child: ElevatedButton.icon(
                                                  onPressed: () {
                                                    context
                                                        .read<
                                                            RegistrationProvider>()
                                                        .setFemale();
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: context
                                                            .watch<
                                                                RegistrationProvider>()
                                                            .isMale
                                                        ? Colors.white
                                                        : Color(0xff008ABD),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      side: context
                                                              .watch<
                                                                  RegistrationProvider>()
                                                              .isMale
                                                          ? BorderSide(width: 0)
                                                          : BorderSide(
                                                              color: Color(
                                                                  0xff6D747F)),
                                                    ),
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .person_outline_rounded,
                                                    color: context
                                                            .watch<
                                                                RegistrationProvider>()
                                                            .isMale
                                                        ? Color(0xff6D747F)
                                                        : Colors.white,
                                                  ),
                                                  label: Text(
                                                    "Female",
                                                    style: TextStyle(
                                                        color: context
                                                                .watch<
                                                                    RegistrationProvider>()
                                                                .isMale
                                                            ? Color(0xff6D747F)
                                                            : Colors.white,
                                                        fontSize: 18),
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            "assets/svg/temple.svg",
                                            width: double.infinity,
                                            height: 185,
                                            fit: BoxFit.cover,
                                            alignment: Alignment.topCenter,
                                            color: Color(0xffD0EAF4),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, right: 20),
                                            child: SizedBox(
                                              width: double.infinity,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  context
                                                      .read<
                                                          RegistrationProvider>()
                                                      .registerUser();
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              MainFrame()));
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    primary: Color(0xff008ABD),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30))),
                                                child: const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 8,
                                                      horizontal: 20),
                                                  child: FittedBox(
                                                    child: Text(
                                                      "REGISTER",
                                                      style: TextStyle(
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
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
            },
          ),
        ),
      ),
    );
  }
}
