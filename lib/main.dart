import 'dart:io';

import 'package:flutter/material.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/loading.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:lehttp_overrides/lehttp_overrides.dart';

void main() {
  if (Platform.isAndroid) {
    HttpOverrides.global = LEHttpOverrides();
  }
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Loading(),
      '/home': (context) => const Home(),
      '/location': (context) => const ChooseLocation()
    },
  ));
}
