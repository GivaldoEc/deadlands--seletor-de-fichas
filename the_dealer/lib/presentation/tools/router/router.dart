import 'package:flutter/material.dart';
import 'package:the_dealer/presentation/pages/chip_sequence/chip_sequence_init.dart';
import 'package:the_dealer/presentation/pages/error_page.dart';
import 'package:the_dealer/presentation/pages/init/init.dart';
import 'package:the_dealer/presentation/pages/player_management/player_screen.dart';

import 'routes.dart';

class RouteGenerator {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SPLASHSCREEN:
        return MaterialPageRoute(
          builder: (_) => InitPage(),
        );

      case CHIPS:
        return MaterialPageRoute(
          builder: (_) => ChipSequenceInit(),
        );

      case PLAYERS:
        return MaterialPageRoute(
          builder: (_) => PlayerScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => ErrorPage(
            message: "O app se perdeu",
          ),
        );
    }
  }
}

materialRouteEvacation(Widget page) {
  MaterialPageRoute(builder: (_) => page);
}
