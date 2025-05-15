import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

/// display address
String? newCustomFunction(
  String? houseNumber,
  String? street,
  String? city,
  String? stateProvince,
  String? country,
  String? zipCode,
) {
  return '$houseNumber $street, $city, $stateProvince, $country $zipCode';
}

double doubleSum(List<double> doubleList) {
  double sum = 0.0;

  for (double num in doubleList) {
    sum += num;
  }
  return sum;
}

double totalPriceAfterShippingFee(
  double totalPrice,
  double shippingFee,
) {
  double sum = totalPrice + shippingFee;

  return sum;
}
