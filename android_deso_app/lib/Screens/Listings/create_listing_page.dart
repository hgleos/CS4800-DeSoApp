import 'package:android_deso_app/Screens/Elements/app_bar.dart';
import 'package:android_deso_app/Screens/Elements/app_bottom_navigation_bar2.dart';
import 'package:flutter/material.dart';
import 'package:android_deso_app/constants.dart';
import 'package:android_deso_app/Screens/Components/string_extensions.dart';

class CreateListingPage extends StatefulWidget {
  const CreateListingPage({Key? key}) : super(key: key);

  @override
  State<CreateListingPage> createState() => _CreateListingPageState();
}

class _CreateListingPageState extends State<CreateListingPage> {
  final _formkey = GlobalKey<FormState>();

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
                    'Create your listing',
                    style: boldHeading,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: elevatedButtonStyle,
                      child: Text(
                        'Upload your images',
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: TextFormField(
                    maxLength: 200,
                    textInputAction: TextInputAction.next,
                    validator: (s) {
                      if (s!.isEmpty) {
                        return 'This is a required field.';
                      }
                    },
                    style: TextStyle(fontSize: 20),
                    decoration: const InputDecoration(
                      helperText: '',
                      hintText: 'title',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.numberWithOptions(
                        decimal: true, signed: false),
                    textInputAction: TextInputAction.next,
                    validator: (s) {
                      if (s!.isEmpty) {
                        return 'This is a required field.';
                      }
                      if (!s!.isValidDouble()) {
                        return 'Enter a valid price.';
                      }
                    },
                    style: TextStyle(fontSize: 20),
                    decoration: const InputDecoration(
                      helperText: '',
                      hintText: 'price',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    validator: (s) {
                      if (s!.isEmpty) {
                        return 'This is a required field.';
                      }
                    },
                    style: TextStyle(fontSize: 20),
                    decoration: const InputDecoration(
                      helperText: '',
                      hintText: 'tags',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: TextFormField(
                    maxLines: 6,
                    maxLength: 1000,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontSize: 20),
                    decoration: const InputDecoration(
                      helperText: '',
                      hintText: 'description',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 10),
                  child: ElevatedButton(
                      onPressed: () {
                        _formkey.currentState!.validate();
                      },
                      style: elevatedButtonStyle,
                      child: Text(
                        'Publish your listing',
                      )),
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
