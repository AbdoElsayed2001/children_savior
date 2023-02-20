import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils.dart';


class CheckTerms extends StatelessWidget {
  const CheckTerms({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isChecked = false.obs;
    return Row(
      children: [
        Obx(
          () => Checkbox(
            visualDensity: const VisualDensity(horizontal: -2.0, vertical:2),
            value: isChecked.value,
            onChanged: (value) {
              isChecked.value = value!;
            },
          ),
        ),
        RichText(
          text: TextSpan(
            text: 'I agree with our ',
            style: appStyle(
              fontFamily: 'Inter',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
            children: [
              TextSpan(
                text: 'Terms',
                style: appStyle(
                  fontFamily: 'Inter',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue,
                ),
              ),
              TextSpan(
                text: ' and ',
                style: appStyle(
                  fontFamily: 'Inter',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              TextSpan(
                text: 'Conditions',
                style: appStyle(
                  fontFamily: 'Inter',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
