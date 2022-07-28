import 'package:bhajan_bank/providers/mukhpath_vanchan_submission_provider.dart';
import 'package:bhajan_bank/providers/size_provider.dart';
import 'package:bhajan_bank/widgets/after_home_appbar.dart';
import 'package:bhajan_bank/widgets/functionality_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class NiyamSubmission extends StatelessWidget {
  const NiyamSubmission({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var height=context.watch<SizeProvider>().getHeight();
    var width=context.watch<SizeProvider>().getWidth();

    return Scaffold(
      body: SafeArea(
        child: MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaleFactor: 1.0, size: const Size(392.72, 838.90)),
          child: Container(
            color: Color(0xffFFFBEE),
            child: Column(
              children: [
                AfterHomeAppbar("મુખપાઠ"),
                Expanded(
                  child: Container(
                    color: Color(0xffFFFBEE),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width*0.05),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Target & Achievement",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                          ),
                          ListView.builder(
                              itemCount: 4,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, position) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4),
                                  child: Container(
                                    height: height*0.07,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                      colors: [
                                        context.watch<NiyamSubmissionProvider>().gradiantColorList[position][0],
                                        context.watch<NiyamSubmissionProvider>().gradiantColorList[position][1],
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                    borderRadius:BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(color: Colors.grey.shade400,offset: Offset(2,2),blurRadius: 10),
                                      ]
                                    ),
                                    child: Stack(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            SvgPicture.asset("assets/svg/bg_right_arrow.svg",color: Colors.white.withAlpha(50),),
                                            SvgPicture.asset("assets/svg/bg_right_arrow.svg",color: Colors.white.withAlpha(50)),
                                            SizedBox(width: 30,)
                                          ],
                                        ),
                                        Center(child: Text("સત્સંગી જીવન : 5 / 11",style: TextStyle(fontSize: 24,color: Colors.white,fontFamily: 'baloo',fontWeight: FontWeight.bold),),),

                                      ],
                                    ),
                                  ),
                                );
                              }),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FunctionalityButton(0xffA96D1B,"assets/svg/ic_niyam_submit.svg"),
                              FunctionalityButton(0xffA96D1B,"assets/svg/ic_mala.svg",name: "Mala",)
                            ],
                          ),
                          Container(width: double.infinity,color: Color(0xffC4945B),height: 0.5,),
                          Text("TODAY’S VACHANAMRUT :",style: TextStyle(color: Color(0xffA96D1B),fontSize: 20,fontWeight: FontWeight.bold,),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
