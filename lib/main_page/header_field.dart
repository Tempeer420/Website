import 'package:flutter/material.dart';
import 'package:website/main_page/main_content.dart';
import 'package:website/cv_page/cv_page.dart';

class HeaderField extends StatelessWidget {
  const HeaderField({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 18,
      shadowColor: Colors.black54,
      child: Container(
        height: 50,
        width: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Tappable "Axel Olsson" → opens home‐screen layout
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) {
                      return Scaffold(
                        body: Column(
                          children: const [
                            HeaderField(),   // white header again
                            Expanded(         // gives MainContent room to expand
                              child: MainContent(),
                            ),
                          ],
                        ),
                      );
                    }),
                  );
                },
                child: const Text(
                  'Axel Olsson',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Arimo',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),

            // Tappable "CV" → opens CV page
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const CVPage()),
                  );
                },
                child: const Text(
                  'CV',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Arimo',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}