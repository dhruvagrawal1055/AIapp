import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class ImageResponse {
  final int created;
  final List<dynamic>? data;
  const ImageResponse({
    required this.created,
    required this.data,
  });

// factory ImageResponse.fromResponse(Response response ) {
//      Map<String, dynamic> responseBody = json.decode(response.body);
//      List<dynamic> data = responseBody['data'];
//   return ImageResponse(
//     created: json['created'] as int,
//     data: json['data'] as List<dynamic>?,

//   );
// }
}