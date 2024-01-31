import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final IconData prefixIcon;

  const CustomTextFormField({
    Key? key,
    required this.labelText,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: constraints.maxWidth * 0.3,
              child: Center(child: Text(labelText)),
            ),
            Container(
              width: constraints.maxWidth * 0.7,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(prefixIcon),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: labelText,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
