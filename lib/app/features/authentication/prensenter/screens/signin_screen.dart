import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
            height: size.height,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 58.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "BoltEvents ",
                        style: TextStyle(fontSize: 30),
                      ),
                      Icon(
                        Icons.bolt,
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Entre com sua conta",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            iconSize: 50,
                            alignment: Alignment.center,
                            onPressed: () => {
                                  Navigator.of(context)
                                      .pushReplacementNamed("/home")
                                },
                            icon: const Icon(
                              Icons.facebook,
                            )),
                        IconButton(
                            iconSize: 50,
                            onPressed: () => {},
                            icon: const Icon(
                              Icons.facebook,
                            ))
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "EventHouse enter with email ",
                        style: TextStyle(fontSize: 20),
                      ),
                      TextButton(
                          onPressed: () => {},
                          child: Text(
                            "is here.",
                            style: TextStyle(
                                fontSize: 20,
                                color: Theme.of(context).primaryColor),
                          ))
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
