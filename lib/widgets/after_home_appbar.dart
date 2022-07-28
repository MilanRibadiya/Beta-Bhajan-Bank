import 'package:bhajan_bank/constants/text_size.dart';
import 'package:bhajan_bank/providers/size_provider.dart';
import 'package:bhajan_bank/widgets/coin.dart';
import 'package:bhajan_bank/widgets/switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AfterHomeAppbar extends StatelessWidget {
  String title;
  AfterHomeAppbar(this.title,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var width=context.watch<SizeProvider>().width;

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
          textScaleFactor: 1.0,
          size: const Size(392.72, 838.90)),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: Container(
              color: Color(0xff008ABD),
              padding: EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        CupertinoIcons.chevron_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),

                  Container(
                    width: width*0.4,
                    alignment: Alignment.center,
                    child: FittedBox(
                      child: Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: f155,
                            fontWeight: FontWeight.w700,
                          fontFamily: 'baloo'
                        ),
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      Coin(),
                      SizedBox(width: 10,),
                      Icon(CupertinoIcons.info_circle_fill,color: Colors.white,size: 26,),
                      SizedBox(width: 10,),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(bottom: 0,right: width*0.1,child: LanguageSwitch(Colors.white)),
        ],
      ),
    );
  }
}
