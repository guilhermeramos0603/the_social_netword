// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_social_network/app/util/colors.dart';
import 'package:the_social_network/presentation/components/text_field_input.dart';
import 'package:the_social_network/presentation/controllers/signup_controller.dart';

class MobileSignupPage extends StatefulWidget {
  final SignupController signupController;
  const MobileSignupPage({super.key, required this.signupController});

  @override
  State<MobileSignupPage> createState() => _MobileLoginPageState();
}

class _MobileLoginPageState extends State<MobileSignupPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            children: [
              Flexible(
                flex: 2,
                child: Container(),
              ),
              SvgPicture.asset(
                'assets/ic_instagram.svg',
                color: primaryColor,
                height: 64,
              ),
              const SizedBox(
                height: 64,
              ),
              Stack(
                children: [
                  (widget.signupController.image != null)
                      ? CircleAvatar(
                          radius: 64,
                          backgroundImage: MemoryImage(
                            widget.signupController.image!,
                          ),
                        )
                      : const CircleAvatar(
                          radius: 64,
                          backgroundImage: AssetImage("assets/no_user.jpg"),
                        ),
                  Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                      onPressed: () async {
                        await widget.signupController.selectImage();
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.add_a_photo,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                  textEditingController: _usernameController,
                  hintText: "Enter your username",
                  textInputType: TextInputType.text,
                  isPass: false),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                  textEditingController: _bioController,
                  hintText: "Enter your bio",
                  textInputType: TextInputType.text,
                  isPass: false),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                  textEditingController: _emailController,
                  hintText: "Enter your E-mail",
                  textInputType: TextInputType.emailAddress,
                  isPass: false),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                  textEditingController: _passController,
                  hintText: "Enter your password",
                  textInputType: TextInputType.text,
                  isPass: true),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () => widget.signupController.createUser(
                  username: _usernameController.text,
                  bio: _bioController.text,
                  email: _emailController.text,
                  password: _passController.text,
                ),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    color: blueColor,
                  ),
                  child: const Text("Sign Up"),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Flexible(
                flex: 2,
                child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text("Don't have an account? "),
                  ),
                  GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text(
                        "Sign Up.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
