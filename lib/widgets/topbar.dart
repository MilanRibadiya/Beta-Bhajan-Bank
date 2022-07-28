import 'package:bhajan_bank/widgets/switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  String title;
  Color titleColor, switchColor, thumbColor;
  bool isBack,isSwitch, language;
  void onBackTap;
  TopBar(this.title, this.isBack, this.titleColor,this.isSwitch, this.language,
      this.switchColor, this.thumbColor,this.onBackTap,
      {Key? key})
      : super(key: key);
  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff008ABD),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Visibility(
                replacement: SizedBox(width: 48,height: 48),
                visible: Navigator.canPop(context),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    CupertinoIcons.chevron_back,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
            ),

          Text(
            widget.title,
            style: TextStyle(
              color: widget.titleColor,
              fontSize: 25,
                fontWeight: FontWeight.w700
            ),
          ),
          Visibility(
            visible: widget.isSwitch,
            replacement: SizedBox(width: 56.5,),
            child: LanguageSwitch(widget.switchColor)
          ),
        ],
      ),
    );
  }
}
