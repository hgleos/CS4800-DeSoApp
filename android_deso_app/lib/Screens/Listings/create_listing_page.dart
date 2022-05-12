import 'dart:developer';
import 'dart:io';

import 'package:android_deso_app/Database/database.dart';
import 'package:android_deso_app/Database/listing.dart';
import 'package:android_deso_app/Screens/Elements/app_bar.dart';
import 'package:android_deso_app/Screens/Elements/app_bottom_navigation_bar2.dart';
import 'package:flutter/material.dart';
import 'package:android_deso_app/constants.dart';
import 'package:android_deso_app/Screens/Components/string_extensions.dart';
import 'dart:async';

import 'package:image_picker/image_picker.dart';


class CreateListingPage extends StatefulWidget {
  const CreateListingPage({Key? key}) : super(key: key);

  @override
  State<CreateListingPage> createState() => _CreateListingPageState();
}

class _CreateListingPageState extends State<CreateListingPage> {
  TextEditingController title = TextEditingController();
  TextEditingController price = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  List<XFile>? _imageFileList = [];

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Scaffold(
        appBar: desoAppBar(context, loggedIn),
          body: Center(
            child: SafeArea(
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
                        onPressed: () {
                          if(_formkey.currentState!.validate() && _imageFileList!.length != 0){
                            // creating a Listing and adding it to the "database" by using createListing()
                            createListing(Listing(generateListingID(), title.text, loggedInUser, price.text));
                            Navigator.pop(context);
                          };

                        },
                        style: elevatedButtonStyle,
                        child: Text(
                          'Publish your listing',
                        )),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: TextFormField(
                      controller: title,
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
                      controller: price,
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
                      maxLines: 2,
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
                          selectImages();

                        },

                        style: elevatedButtonStyle,
                        child: Text(
                          'Upload your images',
                        )),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: GridView.builder(
                          itemCount: _imageFileList!.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Stack(
                                fit: StackFit.expand,
                                children: [Image.file(
                                  File(_imageFileList![index].path),
                                  fit: BoxFit.cover,
                                ),
                                  Positioned(
                                    right: -5,
                                      top: -5,
                                      child: IconButton(
iconSize: 30,
                                        color: Colors.red,
                                        icon: Icon(Icons.delete),
                                        onPressed: () {
                                          setState(() {
                                            _imageFileList!.removeAt(index);

                                          });
                                        },
                                      ),

                                  )
                                ],

                              ),
                            );
                          }),
                    ),
                  )

                ],
              ),
            ),
          ),

      ),
    );
  }


  void selectImages() async{
    final List<XFile>? selectedImages = await _picker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      _imageFileList!.addAll(selectedImages);
    }
    setState(() {

    });
  }
}
