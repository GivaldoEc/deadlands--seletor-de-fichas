import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_dealer/presentation/tools/router/routes.dart';

class InitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, CHIPS);
                },
                child: Container(
                  child: Text(
                    'Chip Dealer',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30.sp),
                  ),
                ),
              ),
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
