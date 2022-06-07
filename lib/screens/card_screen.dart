import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cards Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              nameCard: 'Casita volteada',
              imgUrl:
                  'https://cdn.wegow.com/media/artist-media/the-neighbourhood/the-neighbourhood-1523877815.-1x1780.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              nameCard: 'El vecindario',
              imgUrl:
                  'https://es.rollingstone.com/wp-content/uploads/2022/02/The-Neighbourhood-podria-despedirse-de-los-escenarios.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imgUrl:
                  'https://knowinsiders.com/stores/news_dataimages/dunglt/112020/03/12/5516_the-neighbourhood.jpg?rt=20201103125521',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imgUrl:
                  'https://studiosol-a.akamaihd.net/letras/500x500/fotos/e/9/0/2/e902ecffdfe38c74800eb5b48673c337.jpg',
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ));
  }
}
