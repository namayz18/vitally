import 'package:flutter/material.dart';
import 'package:vitally/core/extensions/text_styles.dart';
import 'package:vitally/views/login/login_view.dart';
import 'package:vitally/widgets/button/custom_icon_button.dart';
import 'package:vitally/widgets/text/appbar_title_view.dart';
import 'package:vitally/widgets/button/custom_icon_text_button.dart';
import 'package:vitally/widgets/button/custom_button.dart';
import 'package:vitally/widgets/textfield/custom_textfield.dart';
import 'package:vitally/widgets/textfield/password_textfield.dart';
import 'package:vitally/widgets/textfield/regular_textfield.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    emailController.addListener(_printLatestValue);
    passwordController.addListener(_printLatestValue);
  }

  void _printLatestValue() {
    setState(() {});
  }

  void _showPassword(BuildContext context) {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomBackButton(
            onPress: () => Navigator.pop(context),
          ),
          const SizedBox(height: 16),
          const AppbarTitleView(title: 'Let\'s get started.'),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Sign up to continue to vitally.',
              style: context.subTitle,
            ),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'First Name',
                        style: context.title,
                      ),
                    ),
                    const SizedBox(height: 4),
                    RegularTextField(
                      controller: firstNameController,
                      hintText: 'Enter your first name',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Last Name',
                        style: context.title,
                      ),
                    ),
                    const SizedBox(height: 4),
                    RegularTextField(
                      controller: lastNameController,
                      hintText: 'Enter your last name',
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Email',
              style: context.title,
            ),
          ),
          const SizedBox(height: 4),
          CustomTextField(controller: emailController),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Password',
              style: context.title,
            ),
          ),
          const SizedBox(height: 4),
          PasswordTextField(
            controller: passwordController,
            passwordVisible: _passwordVisible,
            onTap: _showPassword,
          ),
          const SizedBox(height: 30),
          const CustomButton(
            title: 'Sign up',
          ),
          const SizedBox(height: 30),
          Center(
            child: Text(
              'or',
              style: context.subTitle,
            ),
          ),
          const SizedBox(height: 16),
          const CustomIconTextButton(
            icon: "assets/icons/Google.svg",
            title: 'Sign up with Google',
          ),
          const SizedBox(height: 16),
          const CustomIconTextButton(
            icon: "assets/icons/apple.svg",
            title: 'Sign up with Apple',
          ),
          const SizedBox(height: 16),
          const CustomIconTextButton(
            icon: "assets/icons/Facebook.svg",
            title: 'Sign up with Facebook',
          ),
          const SizedBox(height: 30),
          CustomButton(
            title: 'Login with existing account',
            onPress: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LoginView(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
