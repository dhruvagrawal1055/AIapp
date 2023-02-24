import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:your_own_ai/Screens/components/weather.dart';
import 'package:your_own_ai/Screens/controller.dart';

/// View for [DailyForecastRoute] for phone-sized devices.
class DailyForecastViewPhone extends StatelessWidget {
  final DailyForecastController state;

  const DailyForecastViewPhone(this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: WeatherForecast(state: state),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Text(
                  DateFormat.yMMMd().format(DateTime.now()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}