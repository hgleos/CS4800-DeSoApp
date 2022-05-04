import 'package:android_deso_app/Screens/Elements/app_bar.dart';
import 'package:android_deso_app/Screens/Elements/app_bottom_navigation_bar2.dart';
import 'package:flutter/material.dart';
import 'package:android_deso_app/constants.dart';
import 'package:android_deso_app/Screens/Components/string_extensions.dart';

class UpdateEmailPage extends StatefulWidget {
  const UpdateEmailPage({Key? key}) : super(key: key);

  @override
  State<UpdateEmailPage> createState() => _UpdateEmailPageState();
}

class _UpdateEmailPageState extends State<UpdateEmailPage> {
  final _formkey = GlobalKey<FormState>();
  bool obscurePassword = true;
  Color passwordEyeColor = Colors.grey;
  bool isPasswordFocused = false;

  void updatePasswordField() {
    setState(() => obscurePassword = !obscurePassword);
    if (obscurePassword == true) {
      passwordEyeColor = Colors.grey;
    } else {
      passwordEyeColor = Colors.blue;
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
                  'Change email address',
                  style: boldHeading,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  validator: (s) {
                    if (s!.isEmpty) {
                      return 'This is a required field.';
                    }
                    if (!s!.isValidEmail()) {
                      return 'Enter a valid email address.';
                    }
                  },
                  style: TextStyle(fontSize: 20),
                  decoration: const InputDecoration(
                    helperText: '',
                    hintText: 'new email address',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: TextFormField(
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
                        onPressed: () => updatePasswordField(),
                        icon: Icon(
                          obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: passwordEyeColor,
                          size: 25,
                        )),
                    helperText: '',
                    hintText: 'password',
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
