import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

dynamic loadJson(String name) async =>
    await jsonDecode(await rootBundle.loadString("assets/json/$name"));
