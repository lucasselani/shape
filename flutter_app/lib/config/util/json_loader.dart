import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

dynamic loadJson(String path) async =>
    await jsonDecode(await rootBundle.loadString(path));
