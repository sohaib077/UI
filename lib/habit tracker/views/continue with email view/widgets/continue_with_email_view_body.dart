import 'package:flutter/material.dart';
import 'package:ui/habit tracker/views/continue with email view/widgets/create_account_text_button.dart';
import 'package:ui/habit tracker/views/continue with email view/widgets/custom_label.dart';
import 'package:ui/habit tracker/views/continue with email view/widgets/custom_next_button.dart';
import 'package:ui/habit tracker/views/continue with email view/widgets/forgot_password_text_button.dart';
import 'package:ui/habit%20tracker/views/continue%20with%20email%20view/widgets/CustomTextFormField.dart';

class ContinueWithEmailViewBody extends StatefulWidget {
  const ContinueWithEmailViewBody({
    super.key,
  });

  @override
  State<ContinueWithEmailViewBody> createState() =>
      _ContinueWithEmailViewBodyState();
}

class _ContinueWithEmailViewBodyState extends State<ContinueWithEmailViewBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SizedBox(
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const CustomLabel(label: 'E-MAIL'),
            CustomTextFormField(
              controller: emailController,
              hintText: 'Enter your e-mail',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            const CustomLabel(label: 'PASSWORD'),
            CustomTextFormField(
              controller: passwordController,
              hintText: 'Enter your password',
              keyboardType: TextInputType.text,
              obscureText: true,
            ),
            const SizedBox(height: 15),
            const ForgotPasswordTextButton(),
            const Spacer(flex: 1),
            const CreateAccountTextButton(),
            const SizedBox(height: 15),
            const CustomNextButton(),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
