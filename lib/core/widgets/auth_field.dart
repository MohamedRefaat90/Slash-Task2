import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthField extends StatelessWidget {
  final String lable;

  final String hint;
  final Widget preIcon;
  final bool isPass;
  final TextEditingController controller;
  final void Function(String)? onChange;
  const AuthField(
      {super.key,
      required this.lable,
      required this.preIcon,
      required this.hint,
      this.isPass = false,
      required this.controller,
      this.onChange});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(lable, style: const TextStyle(fontSize: 16)),
        SizedBox(height: 10.h),
        TextFormField(
          controller: controller,
          onChanged: onChange,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 197, 195, 178)),
                  borderRadius: BorderRadius.circular(8)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 197, 195, 178)),
                  borderRadius: BorderRadius.circular(8)),
              hintText: hint,
              prefixIcon: preIcon,
              suffixIcon: isPass
                  ? IconButton(
                      icon: const Icon(Icons.visibility),
                      onPressed: () {},
                    )
                  : null),
        )
      ],
    );
  }
}
