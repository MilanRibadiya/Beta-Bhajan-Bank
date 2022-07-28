import 'package:bhajan_bank/providers/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/*Widget languageSwitch(Color switchColor,bool language){
  return Container(
      height: 30,
      width: 50,
      margin: EdgeInsets.only(right: 7),
      decoration: BoxDecoration(
        color: switchColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(left: 10,child: Text(language ? "ગુ" : "",style: TextStyle(color: switchColor == Colors.white ? Color(0xff008ABD) :Colors.white,),)),
          // Positioned(left: 10,child: AnimatedTextKit(animatedTexts: [FadeAnimatedText(widget.language ? "ગુ" : "",textStyle: const TextStyle(color: Colors.white),)],isRepeatingAnimation: false,)),
          Switch.adaptive(
              value: language,
              activeTrackColor: Colors.transparent,
              inactiveTrackColor: Colors.transparent,
              inactiveThumbColor: switchColor == Colors.white ? Color(0xff008ABD) : Colors.white,
              activeColor: switchColor == Colors.white ? Color(0xff008ABD) : Colors.white,
              onChanged: (val) {
                  language = val;
              }),
          Positioned(right: 10,child: Text(language ? "" : "E",style: TextStyle(color: switchColor == Colors.white ? Color(0xff008ABD) :Colors.white,fontSize: 12),)),
        ],
      ));
}*/

class LanguageSwitch extends StatelessWidget {
  Color switchColor;

  LanguageSwitch(this.switchColor,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 27,
        width: 50,
        margin: EdgeInsets.only(right: 7),
        decoration: BoxDecoration(
          color: switchColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color(0xff008ABD))
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(left: 10,child: Text(context.watch<LanguageProvider>().language ? "ગુ" : "",style: TextStyle(color: switchColor == Colors.white ? Color(0xff008ABD) :Colors.white,fontFamily: 'baloo',height: 1.5),)),
            // Positioned(left: 10,child: AnimatedTextKit(animatedTexts: [FadeAnimatedText(widget.language ? "ગુ" : "",textStyle: const TextStyle(color: Colors.white),)],isRepeatingAnimation: false,)),
            Switch.adaptive(
                value: context.watch<LanguageProvider>().language,
                activeTrackColor: Colors.transparent,
                inactiveTrackColor: Colors.transparent,
                inactiveThumbColor: switchColor == Colors.white ? Color(0xff008ABD) : Colors.white,
                activeColor: switchColor == Colors.white ? Color(0xff008ABD) : Colors.white,
                onChanged: (val) {
                  context.read<LanguageProvider>().changeLanguage(val);
                }),
            Positioned(right: 10,child: Text(context.watch<LanguageProvider>().language ? "" : "E",style: TextStyle(color:switchColor == Colors.white ? Color(0xff008ABD) :Colors.white,fontSize: 12),)),
          ],
        ));
  }
}


// class LanguageSwitch extends StatefulWidget {
//   Color switchColor;
//   LanguageSwitch(this.switchColor,{Key? key}) : super(key: key);
//
//   @override
//   _LanguageSwitchState createState() => _LanguageSwitchState();
// }
//
// class _LanguageSwitchState extends State<LanguageSwitch> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: 30,
//         width: 50,
//         margin: EdgeInsets.only(right: 7),
//         decoration: BoxDecoration(
//           color: widget.switchColor,
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Stack(
//           alignment: Alignment.center,
//           children: [
//             Positioned(left: 10,child: Text(context.watch<LanguageProvider>().language ? "ગુ" : "",style: TextStyle(color: widget.switchColor == Colors.white ? Color(0xff008ABD) :Colors.white,),)),
//             // Positioned(left: 10,child: AnimatedTextKit(animatedTexts: [FadeAnimatedText(widget.language ? "ગુ" : "",textStyle: const TextStyle(color: Colors.white),)],isRepeatingAnimation: false,)),
//             Switch.adaptive(
//                 value: context.watch<LanguageProvider>().language,
//                 activeTrackColor: Colors.transparent,
//                 inactiveTrackColor: Colors.transparent,
//                 inactiveThumbColor: widget.switchColor == Colors.white ? Color(0xff008ABD) : Colors.white,
//                 activeColor: widget.switchColor == Colors.white ? Color(0xff008ABD) : Colors.white,
//                 onChanged: (val) {
//                     context.read<LanguageProvider>().changeLanguage(val);
//                 }),
//             Positioned(right: 10,child: Text(context.watch<LanguageProvider>().language ? "" : "E",style: TextStyle(color: widget.switchColor == Colors.white ? Color(0xff008ABD) :Colors.white,fontSize: 12),)),
//           ],
//         ));
//   }
// }
