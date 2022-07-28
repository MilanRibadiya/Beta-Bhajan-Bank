import 'package:bhajan_bank/providers/size_provider.dart';
import 'package:bhajan_bank/screens/registration.dart';
import 'package:bhajan_bank/widgets/confirmation_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class MemberProvider with ChangeNotifier {
  var name = ["Ghanshyam", "Varni", "Nilkanth", "Hari", "Swaminarayan"];
  var currentUser=1;
  List<Widget>? list;
  List<Color> col = [
    Colors.orange,
    Colors.red,
    Colors.blue,
    Colors.amber,
    Colors.pinkAccent
  ];

  createList(BuildContext context){
    list=List<Widget>.generate(3, (index) {
      return GestureDetector(
        onTap: () {
          changeCurrentMember(index);
          Navigator.pop(context);
        },
        child: Container(
          padding: EdgeInsets.all(4),
          decoration: context.read<MemberProvider>().currentUser == index ? BoxDecoration(
            color: Colors.white,
              border:Border.all(width: 3.5,color: Color(0xff57F567)),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(color: Color(0xff14AA23A1),spreadRadius: 5,offset: Offset(2,2),blurRadius: 3),
              ]
        ) :null,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: context.read<MemberProvider>().currentUser == index ? Color(0xffC8FFCD) : Colors.white,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: context.read<MemberProvider>().currentUser == index ? Color(0xff14AA23) : Color(0xff008ABD), width: 2),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: SvgPicture.asset(
                              "assets/svg/avatar.svg",
                              fit: BoxFit.fill,
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          conformationDialog(context);
                          debugPrint("Delete ${index.toString()}");
                        },
                        child: Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Icon(
                                Icons.cancel,
                                size: 30,
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: currentUser == index ? Color(0xff14AA23) : Color(0xff008ABD),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        name[index],
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ))
              ],
            ),
          ),
        ),
      );
    });

    if (list!.length < 5) {
      list!.add(
        IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Registration()));
          },
          icon: Icon(
            Icons.add_circle_rounded,
            size: 80,
            color: Colors.grey.shade500,
          ),
          splashColor: Color(0xff008ABD),
        ),
      );
    }
  }

  changeCurrentMember(int selectedMember){
    if(selectedMember!=currentUser)
      {
        currentUser=selectedMember;
        debugPrint(selectedMember.toString());
        notifyListeners();
      }
  }
}