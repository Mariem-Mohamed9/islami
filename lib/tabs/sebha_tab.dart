import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;

  double angle = 0;

  int index = 0;

  List<String> azkar = [
    'سبحان الله',
    'الله اكبر',
    'لا حول ولا قوة الا بالله',
    'الحمد لله',

  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    return Padding(

      padding: const EdgeInsets.symmetric(horizontal:  16.0 , vertical: 8),
      child: Column(
        children: [
          Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
            style: TextStyle
              (color: Colors.white, fontSize: 36 , fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: screenSize.height * 0.02,
          ),
          Image.asset('assets/images/sebha_tail.png'),
          SizedBox(
            width: screenSize.width * 0.8,
            child: Stack(
              alignment: Alignment.center,
              children: [
                InkWell(
                  onTap: onClicked,
                    child:
                    Transform.rotate(
                      angle: angle,
                        child: Image.asset('assets/images/sebha_body.png'))),
                SizedBox(
                  width: screenSize.width * 0.8,
                  child: Column(
                    children: [
                      Text(azkar[index], style: TextStyle
                        (color: Colors.white, fontSize: 36 , fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                      Text('$counter', style: TextStyle
                        (color: Colors.white, fontSize: 36 , fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),
                )
              ],
            ),
          )



        ],
      ),
    );


  }

  void onClicked(){
    counter++;
    angle += 20;
    if(counter % 33 == 0){
      index++;
    }
    if(index == azkar.length){
      index = 0;
      counter = 0;
    }



    setState(() {});
  }
}
