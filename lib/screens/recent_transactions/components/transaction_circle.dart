import 'package:finance_app_one/common/colors.dart';
import 'package:finance_app_one/common/constants.dart';
import 'package:finance_app_one/components/circular_avatar.dart';
import 'package:finance_app_one/components/circular_border.dart';
import 'package:flutter/material.dart';

class TransactionCircle extends StatelessWidget {
  const TransactionCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const spaLocation = [
      Alignment(0.0, -1.0),
      Alignment(1.0, -0.5),
      Alignment(-1.0, -0.5),
      Alignment(0.8, 0.7),
      Alignment(-0.8, 0.7)
    ];
    _multiCircularBg() {
      return CircularBorder(
          color: nevada.withAlpha(100),
          borderWidth: 1,
          padding: defaultPadding * 1.7,
          radius: 275,
          child: const CircularBorder(
              color: borderColour,
              borderWidth: 25,
              padding: defaultPadding,
              radius: 130,
              child: CircularBorder(
                color: eastBay,
                borderWidth: 3,
                padding: 4,
                radius: 50,
                child: CircularAvatar(
                  imageUrl: "assets/profile_main.jpg",
                  radius: 30,
                ),
              )));
    }

    _spatialAvatar(AlignmentGeometry alignmentGeometry, String img) {
      return Align(
        alignment: alignmentGeometry,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(55),
              boxShadow: const [
                BoxShadow(
                  color: linkWater,
                  offset: Offset(5, 5),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ),
              ]),
          child: CircularBorder(
            borderWidth: 1.5,
            color: cardWhite,
            padding: 2,
            radius: 55,
            child: CircularAvatar(
              radius: 50,
              imageUrl: img,
            ),
          ),
        ),
      );
    }

    _spatialProfiles() {
      return SizedBox(
        width: 275,
        height: 325,
        child: Stack(
            children: List.generate(
                spaLocation.length,
                (index) => _spatialAvatar(
                    spaLocation[index], "assets/prof${index + 1}.jpg"))),
      );
    }

    return Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding * 2),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [_multiCircularBg(), _spatialProfiles()],
        ));
  }
}
