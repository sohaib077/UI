import 'package:flutter/material.dart';
import 'package:ui/core/shared_methods.dart';
import 'package:ui/habit tracker/views/create account view/widgets/create_account_text_form_fields.dart';
import 'package:ui/habit%20tracker/views/continue%20with%20email%20view/widgets/custom_next_button.dart';
import 'package:ui/habit%20tracker/views/create%20account%20view/create%20account%20view2.dart';

class CreateAccountView1Body extends StatefulWidget {
  const CreateAccountView1Body({
    super.key,
  });

  @override
  State<CreateAccountView1Body> createState() => _CreateAccountView1BodyState();
}

class _CreateAccountView1BodyState extends State<CreateAccountView1Body> {
  TextEditingController nameController = TextEditingController();
  TextEditingController surNameController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    nameController.dispose();
    surNameController.dispose();
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: CreateAccountTextFormFields(
            nameController: nameController,
            surNameController: surNameController,
            dateController: dateController,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomNextButton(onPressed: (){navigateTo(context, const CreateAccountView2());},),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
