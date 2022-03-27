import 'package:android_deso_app/Screens/Elements/app_bar.dart';
import 'package:android_deso_app/Screens/Elements/app_bottom_navigation_bar2.dart';
import 'package:flutter/material.dart';
import 'package:android_deso_app/constants.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _formkey = GlobalKey<FormState>();

  Color passwordEyeColor = Colors.grey;
  Color passwordEyeColor2 = Colors.grey;
  Color passwordEyeColor3 = Colors.grey;

  bool obscurePassword = true;
  bool obscurePassword2 = true;
  bool obscurePassword3 = true;

  void updatePasswordField(int index) {
    switch (index) {
      case 1:
        setState(() => obscurePassword = !obscurePassword);
        if (obscurePassword == true) {
          passwordEyeColor = Colors.grey;
        } else {
          passwordEyeColor = Colors.blue;
        }
        break;
      case 2:
        setState(() => obscurePassword2 = !obscurePassword2);
        if (obscurePassword2 == true) {
          passwordEyeColor2 = Colors.grey;
        } else {
          passwordEyeColor2 = Colors.blue;
        }
        break;
      case 3:
        setState(() => obscurePassword3 = !obscurePassword3);
        if (obscurePassword3 == true) {
          passwordEyeColor3 = Colors.grey;
        } else {
          passwordEyeColor3 = Colors.blue;
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Scaffold(
        appBar: desoAppBar(context, true),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Text(
                  'Change password',
                  style: boldHeading,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  obscureText: obscurePassword,
                  autocorrect: false,
                  enableSuggestions: false,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (s) {
                    if (s!.isEmpty) {
                      return 'This is a required field.';
                    }
                    if (true) {
                      return 'The password you have entered is incorrect.';
                    }
                  },
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () => updatePasswordField(1),
                        icon: Icon(
                          obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: passwordEyeColor,
                          size: 25,
                        )),
                    helperText: '',
                    hintText: 'current password',
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 30, right: 20, top: 10),
                  child: Text('Passwords must have at least 8 characters.',
                      style: regularTextStyle),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  obscureText: obscurePassword2,
                  autocorrect: false,
                  enableSuggestions: false,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (s) {
                    if (s!.isEmpty) {
                      return 'This is a required field.';
                    }
                  },
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () => updatePasswordField(2),
                        icon: Icon(
                          obscurePassword2
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: passwordEyeColor2,
                          size: 25,
                        )),
                    helperText: '',
                    hintText: 'new password',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  obscureText: obscurePassword3,
                  autocorrect: false,
                  enableSuggestions: false,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (s) {
                    if (s!.isEmpty) {
                      return 'This is a required field.';
                    }
                  },
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () => updatePasswordField(3),
                        icon: Icon(
                          obscurePassword3
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: passwordEyeColor3,
                          size: 25,
                        )),
                    helperText: '',
                    hintText: 'confirm new password',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: ElevatedButton(
                    onPressed: () {
                      _formkey.currentState!.validate();
                    },
                    style: elevatedButtonStyle,
                    child: Text(
                      'Update',
                    )),
              ),
            ],
          ),
        ),
        bottomNavigationBar: AppBottomNavBar2(),
      ),
    );
  }
}
