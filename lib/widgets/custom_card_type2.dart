import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key, required this.imgUrl, this.nameCard})
      : super(key: key);
  final String imgUrl;
  final String? nameCard;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      clipBehavior: Clip.antiAlias,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imgUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (nameCard != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                child: Text(nameCard!),
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10)),
        ],
      ),
    );
  }
}
