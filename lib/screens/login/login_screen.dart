import 'package:finance_app_one/common/app_utils.dart';
import 'package:finance_app_one/common/colors.dart';
import 'package:finance_app_one/components/backgroud.dart';
import 'package:finance_app_one/components/button_nm.dart';
import 'package:finance_app_one/components/common_card.dart';
import 'package:finance_app_one/screens/bottom_nav/bottom_nav.dart';
import 'package:finance_app_one/screens/home/home_main.dart';
import 'package:finance_app_one/screens/login/components/input_box.dart';
import 'package:flutter/material.dart';
import '../../common/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(child: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double height = constraints.maxHeight;
        double width = constraints.maxWidth;
        textBox({
          required IconData icon,
          required String label,
          required String defaultText,
          IconData? secondaryIcon,
        }) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(fontSize: 15, color: nevada),
              ),
              const SizedBox(
                height: cardPadding / 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(icon),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    defaultText,
                    style: const TextStyle(fontSize: 18, color: cinder),
                  ),
                  secondaryIcon == null ? Container() : Spacer(),
                  secondaryIcon == null ? Container() : Icon(secondaryIcon),
                ],
              )
            ],
          );
        }

        _logo() {
          return const CircleAvatar(
            radius: 60,
            backgroundColor: eastBay,
            child: Text(
              'NM',
              style: TextStyle(
                  color: cardWhite, fontSize: 45, fontWeight: FontWeight.bold),
            ),
          );
        }

        _extraButton() {
          return Row(
            children: const [
              Text("Signup"),
              Spacer(),
              Text("Forgot Password"),
            ],
          );
        }

        _bottomBar() {
          return Row();
        }

        return SingleChildScrollView(
          child: SizedBox(
            height: height,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: _logo(),
                  height: height * 0.35,
                ),
                const SizedBox(
                  height: 50,
                ),
                CommonCard(
                    width: width,
                    child: textBox(
                      icon: Icons.mail_outline,
                      label: "Email Address",
                      defaultText: "username@gmail.com",
                    )),
                const SizedBox(
                  height: 20,
                ),
                CommonCard(
                    width: width,
                    child: textBox(
                        icon: Icons.lock_outline,
                        label: "Password",
                        defaultText: "*********",
                        secondaryIcon: Icons.remove_red_eye_outlined)),
                const SizedBox(
                  height: 20,
                ),
                ButtonNM(
                    label: 'Login',
                    width: width,
                    onClick: () {
                      print("object");
                      pushReplacement(context, const BottomNav());
                    }),
                const SizedBox(
                  height: 10,
                ),
                _extraButton()
              ],
            ),
          ),
        );
      },
    ));
  }
}
