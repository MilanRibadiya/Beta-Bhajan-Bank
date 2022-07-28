import 'package:flutter/material.dart';

class Coin extends StatelessWidget {
  const Coin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
          BorderRadius.circular(5)),
      child: Row(
        children: [
          SizedBox(width: 3),
          Image.asset("assets/images/ic_coin.png",height: 18,),
          SizedBox(width: 3),
          Container(
            width: 35,
            alignment: Alignment.center,
            child: Text(
              "145",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                height: 2,
                fontSize: 14,
                fontFamily: 'baloo',
              ),
              maxLines: 1,
              overflow:
              TextOverflow.ellipsis,
            ),
          ),
          SizedBox(width: 5),
        ],
      ),
    );
  }
}
