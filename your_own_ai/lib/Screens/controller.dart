import 'package:flutter/material.dart';
import 'package:your_own_ai/Screens/demo.dart';
import 'package:your_own_ai/Screens/route.dart';
import 'package:your_own_ai/openAi/ImageGeneration/image_apicall.dart';
import 'package:your_own_ai/openAi/textCompletion/completionsapi.dart';

import '../openAi/ImageGeneration/image_response.dart';
import '../openAi/textCompletion/completionsapi.dart';

/// Controller for [DailyForecastRoute].
///
/// This controller handles three operations:
///   1.  The controller checks if there is a forecast stored in
///       shared_preferences for the current day. If so, that value is set
///       as the [dailyForecast] value.
///   2.  If there is no forecast already stored, the controller uses the
///       [CompletionsApi] to get a "forecast" using the OpenAI API.
///   3.  Once a forecast has been obtained using either step 1 or step 2,
///       the controller calls a view Widget appropriate for the current
///       host device screen size.
class DailyForecastController extends State<DailyForecastRoute> {
  String? dailyForecast;

  @override
  Widget build(BuildContext context) {
    // Return the view appropriate for the device screen size
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        debugPrint('Host device screen width: ${constraints.maxWidth}');

        return FutureBuilder(
          future:
              // CompletionsApi.getForecast(constraints.maxWidth < 300 ? 6 : 9),
              ImageCall.getImage(),
          builder: (BuildContext context, AsyncSnapshot<ImageResponse> sstr) {
            return DailyForecastViewPhone(this);
          },
        );
      },
    );
  }
}
