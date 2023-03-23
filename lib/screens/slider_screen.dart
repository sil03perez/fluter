import 'package:appdos/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders and checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 500,
                activeColor: AppTheme.primary,
                value: _sliderValue,
                onChanged: _sliderEnabled
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),
            // Checkbox(
            //     value: _sliderEnabled,
            //     onChanged: (value) {
            //       _sliderEnabled = value ?? true;
            //       setState(() {});
            //     }),
            // CheckboxListTile(
            //     activeColor: AppTheme.primary,
            //     title: const Text('Habilitar Slider'),
            //     value: _sliderEnabled,
            //     onChanged: (value) => setState(() {
            //           _sliderEnabled = value ?? true;
            //         })),
            // Switch(
            //     activeColor: AppTheme.primary,
            //     value: _sliderEnabled,
            //     onChanged: (value) => setState(() {
            //           _sliderEnabled = value;
            //         })),

            SwitchListTile.adaptive(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Slider'),
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value;
                    })),
            const AboutListTile(),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://easydrawingguides.com/wp-content/uploads/2017/01/How-to-draw-batman-20.png'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
          ],
        ));
  }
}
