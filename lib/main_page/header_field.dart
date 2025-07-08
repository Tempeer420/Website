import 'package:flutter/material.dart';

class HeaderField extends StatelessWidget {
  const HeaderField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67,
      width: double.infinity,
      color: const Color(0x1C8B8B8B),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Axel Olsson',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Arimo',
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'CV',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Arimo',
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}