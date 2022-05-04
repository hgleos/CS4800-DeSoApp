import 'package:flutter/material.dart';

desoAppBar(BuildContext context, bool loggedIn) {
  if (loggedIn) {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: SizedBox(
        width: MediaQuery.of(context).size.width * 0.40,
        child: TextButton(
          onPressed: () {},
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
                child: Image(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('lib/assets/DeSo App Logo.png')),
              ),
              Text(
                "DeSoApp",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
            onPressed: () {},
            child: Image(
              fit: BoxFit.contain,
              image: AssetImage('lib/assets/default profile image.png'),
            ))
      ],
    );
  } else {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: SizedBox(
        width: MediaQuery.of(context).size.width * 0.40,
        child: TextButton(
          onPressed: () {},
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
                child: Image(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('lib/assets/DeSo App Logo.png')),
              ),
              Text(
                "DeSoApp",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 10),
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Sign In",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
        )
      ],
    );
  }
}
