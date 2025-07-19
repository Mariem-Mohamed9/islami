import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/quran/quran_service.dart';
import 'package:islami/tabs/quran/sura.dart';
import 'package:islami/tabs/quran/sura_details_screen.dart';
import 'package:islami/tabs/quran/sura_item.dart';

class QuranTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Text('Sura List',
            style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
        Expanded(
          child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20),
          itemBuilder: (_, index) {
            Sura sura = QuranService.suras[index];

            return InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(SuraDetailsScreen.routeName, arguments: sura );

            },
            child: SuraItem(sura ),
          );
          },




          itemCount: QuranService.suras.length,
          separatorBuilder: (_ , _) =>
              Divider(thickness: 1,color: AppTheme.white,
                indent:screenWidth * 0.1 ,
                endIndent:screenWidth * 0.1 ,

              ),


        ),
    ),
    ],
    );

  }
}
