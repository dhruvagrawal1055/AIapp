import 'package:flutter/material.dart';
import 'package:your_own_ai/Screens/controller.dart';

/// Displays the weather forecast with a title.
class WeatherForecast extends StatelessWidget {
  const WeatherForecast({
    Key? key,
    required this.state,
  }) : super(key: key);

  final DailyForecastController state;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(4.0),
          child: FractionallySizedBox(
            widthFactor: 0.6,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                "hlo",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: FractionallySizedBox(
            widthFactor: 0.8,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                state.dailyForecast ?? "hlo",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}