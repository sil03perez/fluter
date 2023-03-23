import 'package:appdos/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardtype1 extends StatelessWidget {
  const CustomCardtype1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Ea occansequat qui amet duis exercitation sit. Pariatur nulla dolor amet voluptate quis esse velit eiusmod laborum dolore labore duis. Commodo eiusmod occaecat sunt anim Lorem voluptate sunt duis aute mollit nulla eiusmod et. Esse excepteur in labore occaecat aliquip Lorem aliquip aliqua.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('cancelar'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('ok'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
