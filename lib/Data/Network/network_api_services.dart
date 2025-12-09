import 'dart:convert';
import 'dart:io';
import 'package:hear_me/Data/Network/base_api_services.dart';
import 'package:hear_me/Data/app_exception.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response = await http
          .get(Uri.parse(url))
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException("No Internet Connection");
    }
    return responseJson;
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responseJson;
    try {
      final response = await http
          .post(
            Uri.parse(url),
            body: jsonEncode(data),
            headers: {'Content-Type': 'application/json'},
          )
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException("No Internet Connection");
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorizedException(response.body.toString());
      case 404:
      case 500:
        throw FetchDataException(
          "Error During Communication. Status Code: ${response.statusCode}",
        );
      default:
        throw FetchDataException(
          "Unexpected Error. Status Code: ${response.statusCode}",
        );
    }
  }
}
