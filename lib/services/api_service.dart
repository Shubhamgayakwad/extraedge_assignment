import 'dart:convert';
import 'package:extraedge_assignment/services/request_urls.dart';
import 'package:extraedge_assignment/utils/sharedPrefrences.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String url;
  final dynamic body;

  http.Client client = http.Client();

  ApiService({required this.url, this.body});

  static String baseUrl = RequestUrls.baseUrl;

  ///POST
  Future<http.Response> post() async {
    debugPrint("Request Url: ${baseUrl + url}");
    var token = await SharedPreference.getAccessToken();
    return client
        .post(
          Uri.parse(baseUrl + url),
          headers: {
            "Accept": "application/json",
            'Content-type': 'application/json',
            'Content-Language': "mobile",
            'Authorization': "Bearer $token"
          },
          body: json.encode(body),
        )
        .timeout(const Duration(minutes: 1));
  }

  ///GET
  Future<http.Response> get() async {
    debugPrint("Request Url: ${baseUrl + url}");
    var token = await SharedPreference.getAccessToken();
    return client.get(
      Uri.parse(baseUrl + url),
      headers: {
        "Accept": "application/json",
        'Content-type': 'application/json',
        'Content-Language': "mobile",
        'Authorization': "Bearer $token"
      },
    ).timeout(const Duration(minutes: 1));
  }

  // DELETE
  Future<http.Response> delete() {
    return client.delete(
      Uri.parse(url),
      headers: {
        "Accept": "application/json",
        'Content-type': 'application/json',
        'Content-Language': "mobile",
        'Authorization': "Bearer "
      },
    ).timeout(const Duration(minutes: 1));
  }

  // PUT
  Future<http.Response> put() {
    return client
        .put(
          Uri.parse(url),
          headers: {
            "Accept": "text/plain",
            'Content-type': 'application/json',
            'Content-Language': "mobile",
          },
          body: json.encode(body),
        )
        .timeout(const Duration(minutes: 1));
  }
}
