import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 150;
  bool _sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 50,
              max: 500,
              activeColor: AppTheme.primary,
              divisions: 10,
              value: _sliderValue,
              onChanged: _sliderEnable
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null),
          // Checkbox(
          //     value: _sliderEnable,
          //     onChanged: (value) {
          //       _sliderEnable = value ?? true;
          //       setState(() {});
          //     }),
          CheckboxListTile(
              title: const Text('Enable Slider'),
              activeColor: AppTheme.primary,
              value: _sliderEnable,
              onChanged: (value) {
                _sliderEnable = value ?? true;
                setState(() {});
              }),
          // Switch(
          //     value: _sliderEnable,
          //     onChanged: (value) {
          //       _sliderEnable = value;
          //       setState(() {});
          //     }),
          SwitchListTile.adaptive(
              title: const Text('Enable Slider'),
              activeColor: AppTheme.primary,
              value: _sliderEnable,
              onChanged: (value) {
                _sliderEnable = value;
                setState(() {});
              }),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://www.dominomusic.com/res/WgXX/1200_1200/5A_9A---PC-Zackery-Michael---300dpi.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
