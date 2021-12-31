import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:simple_sneaker_shop/app/app.dart';

void main() {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () => runApp(const App()),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
