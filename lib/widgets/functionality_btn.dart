import 'package:bhajan_bank/providers/size_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';


class FunctionalityButton extends StatelessWidget {
  const FunctionalityButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var width=context.watch<SizeProvider>().getWidth();
    var height=context.watch<SizeProvider>().getHeight();
    return Container(
      width: width*0.35,
      height: width*0.22,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xffA96D1B),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: width*0.1,
            width: width*0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Color(0xffA96D1B)
            ),
            padding: EdgeInsets.all(8),
            child: SvgPicture.asset("assets/svg/ic_niyam_submit.svg",color: Colors.white,height: width*0.08,),
          ),
          Text("Report",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
