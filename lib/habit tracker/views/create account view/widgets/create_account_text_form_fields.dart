import 'package:flutter/material.dart';
import 'package:ui/habit%20tracker/views/continue%20with%20email%20view/widgets/CustomTextFormField.dart';
import 'package:ui/habit%20tracker/views/continue%20with%20email%20view/widgets/custom_label.dart';

class CreateAccountTextFormFields extends StatelessWidget {
  const CreateAccountTextFormFields({
    super.key,
    required this.nameController,
    required this.surNameController,
    required this.dateController,
  });

  final TextEditingController nameController;
  final TextEditingController surNameController;
  final TextEditingController dateController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const CustomLabel(label: 'NAME'),
        CustomTextFormField(
          controller: nameController,
          hintText: 'Enter your name',
        ),
        const SizedBox(height: 20),
        const CustomLabel(label: 'SURNAME'),
        CustomTextFormField(
          controller: surNameController,
          hintText: 'Enter your suname',
        ),
        const SizedBox(height: 20),
        const CustomLabel(label: 'BIRTHDATE'),
        CustomTextFormField(
          controller: dateController,
          hintText: 'mm/dd/yyyy',
          keyboardType: TextInputType.datetime,
        ),
        const SizedBox(height: 200),
        // const Spacer(flex: 1),
        // const Spacer(flex: 2),
      ],
    );
  }
}
