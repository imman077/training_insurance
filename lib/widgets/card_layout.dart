import 'package:appikorn_madix_widgets/box_appi/box_appi.dart';
import 'package:appikorn_madix_widgets/text_appi/text_appi.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:training_project/router/app_router.dart';

Widget cardLayout(
    {required BuildContext context,
    required Widget child,
    required String title,
    required String path}) {
  return Center(
    child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 550),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        appiNavigate(context: context, path: path);
                      },
                      icon: Icon(Icons.arrow_back)),
                  Spacer(),
                  TextAppi(
                    text: title,
                    textStyle: Style(
                      $text.fontSize(20),
                      $text.fontWeight(FontWeight.w600),
                      $text.color(Color(0xff151515)),
                    ),
                  ),
                  Spacer(),
                  SizedBox()
                ],
              ),
              SizedBox(
                height: 20,
              ),
              BoxAppi(
                  radius: 32,
                  shadowBlur: 10,
                  shadowColor: Color(0xff151515).withOpacity(0.2),
                  border: Border.all(color: Color(0xffF2F0F5), width: 1),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: child,
                  )),
            ],
          ),
        )),
  );
}
