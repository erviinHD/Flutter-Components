import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      clipBehavior: Clip.antiAlias,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage(
                'https://www.cinemascomics.com/wp-content/uploads/2022/03/Moon-Knight-no-estara-en-el-UCM.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
              alignment: AlignmentDirectional.centerEnd,
              child: Text('Awesome land'),
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10)),
        ],
      ),
    );
  }
}
