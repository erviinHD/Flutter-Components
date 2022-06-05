import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 50,
      child: Column(
        children: const [
          FadeInImage(
            image: NetworkImage(
                'https://www.cinemascomics.com/wp-content/uploads/2022/03/Moon-Knight-no-estara-en-el-UCM.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
          )
        ],
      ),
    );
  }
}
