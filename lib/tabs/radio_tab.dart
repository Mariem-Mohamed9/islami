import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/radio_item.dart';

class RadioTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    return DefaultTabController(
      initialIndex: 0,
        length: 2 ,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppTheme.black,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TabBar(

                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: AppTheme.primary,
                  borderRadius: BorderRadius.circular(12),
                ),
                unselectedLabelStyle: TextStyle(color: Colors.white , fontSize: 16 , fontWeight: FontWeight.normal),
                labelStyle: TextStyle(color: Colors.black , fontSize: 16 , fontWeight:FontWeight.bold),
                tabs:[
                Tab(text: 'Radio' ),
                Tab(text: 'Reciters'),
              ],

              ),
            ),
            SizedBox(height: screenSize.height * 0.02,),
            SizedBox(
              height:screenSize.height * 0.6,
              width:double.infinity,
              child: TabBarView(children: [
                ListView.builder(itemBuilder:(context , index) => RadioItem(), itemCount: 20,),
                ListView.builder(itemBuilder:(context , index) => RadioItem(), itemCount: 20,),
                
                
    ]
                  
              
              ),
            )


          ],





    ),


    );


  }
}
