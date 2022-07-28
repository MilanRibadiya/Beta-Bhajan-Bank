import 'package:flutter/material.dart';

void conformationDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(onPressed: (){Navigator.of(context).pop();},icon: Icon(Icons.cancel_rounded,size: 25,),)),
                  Text("Confirmation",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,height: 0),),
                  SizedBox(height: 15,),
                  Text("Are you sure you want to remove this niyam from list?",style: TextStyle(),textAlign: TextAlign.center,),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(4),
                            child: FittedBox(
                              child: Text(
                                "Yes",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 1,),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xff008ABD),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(4),
                            child: FittedBox(
                              child: Text(
                                "No",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );

      });
}
