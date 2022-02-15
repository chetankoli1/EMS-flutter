import 'dart:async';

import 'package:ems/helper/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  int _btnState = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50.0,
            ),
            const Center(
              child: SizedBox(
                height: 150.0,
                width: 150.0,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/arclogo.jpg"),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                        hintText: "Enter Name",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Name";
                        }
                        return null;
                      },
                      onFieldSubmitted: (value) {},
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        hintText: "Enter Email",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Email";
                        }
                        return null;
                      },
                      onFieldSubmitted: (value) {},
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Password";
                        }
                        return null;
                      },
                      onFieldSubmitted: (value) {},
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        inputValidation();
                      },
                      child: const Text("Register"),
                      style: ElevatedButton.styleFrom(
                        primary: kPrimaryColor,
                        fixedSize: const Size(200, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  inputValidation() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      _formKey.currentState!.save();
      Navigator.pushNamed(context, "home");
    }
  }

  clickFucn() {
    setState(() {
      _btnState = 1;
    });

    Timer(const Duration(milliseconds: 3300), () {
      setState(() {
        _btnState = 2;
      });
    });
  }
}
