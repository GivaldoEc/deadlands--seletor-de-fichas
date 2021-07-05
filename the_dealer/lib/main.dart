import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:the_dealer/bloc/chip_cubit/chip_cubit.dart';
import 'package:the_dealer/presentation/tools/const/colors.dart';
import 'package:the_dealer/presentation/tools/router/router.dart';
import 'package:the_dealer/presentation/tools/router/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final RouteGenerator routeGenerator = RouteGenerator();

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_)=> ChipCubit()),
          ],
          child: MaterialApp(
            theme: ThemeData(scaffoldBackgroundColor: Color(B_BROWN)),
            debugShowCheckedModeBanner: false,
            onGenerateRoute: routeGenerator.generateRoute,
            initialRoute: SPLASHSCREEN,
          ),
        );
      },
    );
  }
}
