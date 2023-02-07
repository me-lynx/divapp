import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              child: Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: _image.image,
                            fit: BoxFit.cover)), // Background
                    child: BackdropFilter(
                      filter: _imageFilter,
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Center(
                          child: Container(
                            width: double.maxFinite,
                            height: 400,
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(20),
                              backgroundBlendMode: BlendMode.srcIn,
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 40,
                                ),
                                const Text(
                                  "Div.app",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Poppins-Black",
                                    fontSize: 40,
                                  ),
                                ),
                                const SizedBox(height: 50),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: "Username",
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: "Password",
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.black,
                                  child: TextButton(
                                    child: const Text(
                                      'LOGIN',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Image get _image => Image.asset("assets/images/woman_home.jpg");

  ImageFilter get _imageFilter =>
      ImageFilter.blur(sigmaX: 8, sigmaY: 8, tileMode: TileMode.repeated);
}
