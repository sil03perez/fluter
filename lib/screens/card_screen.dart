import 'package:appdos/widgets/Custom_card_type_2.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardtype1(),
            SizedBox(height: 10),
            CustomCardType2(
              name: '',
              imageUrl:
                  'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              imageUrl:
                  'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg',
              name: '',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              imageUrl:
                  'https://cdn.naturettl.com/wp-content/uploads/2017/02/22014001/top-tips-improve-landscapes-ross-hoddinott-11-1200x675-cropped.jpg',
              name: 'Un Hermoso paisaje',
            ),
            SizedBox(height: 100),
          ],
        ));
  }
}
