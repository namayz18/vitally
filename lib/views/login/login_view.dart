import 'package:flutter/material.dart';
import 'package:vitally/core/extensions/text_styles.dart';
import 'package:vitally/main.dart';
import 'package:vitally/widgets/button/custom_button.dart';
import 'package:vitally/widgets/button/custom_icon_button.dart';
import 'package:vitally/widgets/button/custom_icon_text_button.dart';
import 'package:vitally/widgets/text/appbar_title_view.dart';
import 'package:vitally/widgets/textfield/custom_textfield.dart';
import 'package:vitally/widgets/textfield/password_textfield.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
              'login to continue to Forge.',
              style: context.subTitle,
            ),
          ),
          const SizedBox(height: 30),
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
          const SizedBox(height: 16),
          Row(
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Forgot password?', style: context.textButton),
              ),
            ],
          ),
          const SizedBox(height: 30),
          CustomButton(
            title: 'Log in',
            onPress: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MainView(),
                ),
              );
            },
          ),
          const SizedBox(height: 30),
          Center(
            child: Text(
              'or continue with',
              style: context.subTitle,
            ),
          ),
          const SizedBox(height: 30),
          const CustomIconTextButton(
            icon: "assets/icons/Google.svg",
            title: 'Log In with Google',
          ),
          const SizedBox(height: 16),
          const CustomIconTextButton(
            icon: "assets/icons/apple.svg",
            title: 'Log In with Apple',
          ),
          const SizedBox(height: 16),
          const CustomIconTextButton(
            icon: "assets/icons/Facebook.svg",
            title: 'Log In with Facebook',
          ),
        ],
      ),
    );
  }
}
