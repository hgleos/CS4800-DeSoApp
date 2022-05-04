import 'package:android_deso_app/Screens/Elements/app_bar.dart';
import 'package:android_deso_app/Screens/Elements/app_bottom_navigation_bar2.dart';
import 'package:flutter/material.dart';
import 'package:android_deso_app/constants.dart';

class UpdateWalletPage extends StatefulWidget {
  const UpdateWalletPage({Key? key}) : super(key: key);

  @override
  State<UpdateWalletPage> createState() => _UpdateWalletPageState();
}

class _UpdateWalletPageState extends State<UpdateWalletPage> {
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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Text(
                    'Change wallet address',
                    style: boldHeading,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    validator: (s) {
                      if (s!.isEmpty) {
                        return 'This is a required field.';
                      }
                      if (true) {
                        return 'Enter a valid DeSo wallet address.';
                      }
                    },
                    maxLines: 3,
                    style: TextStyle(fontSize: 20),
                    decoration: const InputDecoration(
                      helperText: '',
                      hintText: 'new wallet address',
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
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 25),
                  child: Text(
                      'Changing your DeSo wallet address will update your future listings.',
                      style: regularTextStyle),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 45),
                    child: Text('Current wallet address:',
                        style: regularTextStyle),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                  ),
                  padding: EdgeInsets.all(5.0),
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  child: SelectableText(
                    'BC1YLiFNARSWF6qtXM5acrS7q8VWPeeS2gycVBtqLALkE4c1V3kx4US',
                    style: smallBold,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: AppBottomNavBar2(),
      ),
    );
  }
}
