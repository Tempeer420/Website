import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;
import 'package:website/main_page/header_field.dart';

class CVPage extends StatelessWidget {
  const CVPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Lottie.asset(
              'assets/animations/cloud_animation.json',
              fit: BoxFit.cover,
              repeat: true,
            ),
          ),
          Column(
            children: [
              const HeaderField(),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24, bottom: 8),
                      child: Center(
                        child: ElevatedButton.icon(
                          onPressed: () async {
                            const cvUrl = 'assets/cv/CV.pdf';
                            if (Theme.of(context).platform == TargetPlatform.android ||
                                Theme.of(context).platform == TargetPlatform.iOS) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Öppnar CV i webbläsaren...')),
                              );
                              await launchUrl(Uri.parse(cvUrl));
                            } else {
                              html.AnchorElement(href: cvUrl)
                                ..setAttribute('download', 'CV.pdf')
                                ..click();
                            }
                          },
                          icon: const Icon(Icons.download, color: Colors.black),
                          label: const Text('Ladda ner CV', style: TextStyle(color: Colors.black)),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                            backgroundColor: Colors.white,
                            minimumSize: const Size(0, 0),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    Center(
                      child: Material(
                        elevation: 8,
                        borderRadius: BorderRadius.circular(16),
                        child: Container(
                          constraints: const BoxConstraints(
                            maxWidth: 720,
                            maxHeight: 1018,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 24,
                                spreadRadius: 2,
                                offset: Offset(0, 8),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset('assets/cv/1.png', fit: BoxFit.contain),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Center(
                      child: Material(
                        elevation: 8,
                        borderRadius: BorderRadius.circular(16),
                        child: Container(
                          constraints: const BoxConstraints(
                            maxWidth: 720,
                            maxHeight: 1018,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 24,
                                spreadRadius: 2,
                                offset: Offset(0, 8),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset('assets/cv/2.png', fit: BoxFit.contain),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}