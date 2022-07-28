import 'package:bhajan_bank/providers/member_provider.dart';
import 'package:bhajan_bank/providers/size_provider.dart';
import 'package:bhajan_bank/widgets/topbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class MemberSelection extends StatefulWidget {
  bool isBack;
  MemberSelection(this.isBack, {Key? key}) : super(key: key);

  @override
  State<MemberSelection> createState() => _MemberSelectionState();
}

class _MemberSelectionState extends State<MemberSelection> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    context.read<MemberProvider>().createList(context);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaleFactor: 1.0, size: const Size(392.72, 838.90)),
          child: Column(
            children: [
              TopBar("SELECT MEMBER", widget.isBack, Colors.white, true,
                  true, Colors.white, Colors.white, () {}),
              Expanded(
                child: Stack(
                  children: [
                    GridView.count(
                      crossAxisCount: (context.watch<SizeProvider>().width/200).round().toInt(),
                      children: context.watch<MemberProvider>().list!,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 30,
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 40),
                    ),
                    Align(alignment: Alignment.bottomRight,child: Image.asset("assets/images/person.png",fit: BoxFit.contain,))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
