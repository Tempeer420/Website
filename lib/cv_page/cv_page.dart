import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:website/main_page/header_field.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CVPage extends StatelessWidget {
  const CVPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1) Animated cloud background
          Positioned.fill(
            child: Lottie.asset(
              'assets/animations/cloud_animation.json',
              fit: BoxFit.cover,
              repeat: true,
            ),
          ),

          // 2) Column med header + PDF + download-knapp
          Column(
            children: [
              // Din delade, tappbara header
              const HeaderField(),

              // PDF-viewern fyller resterande yta
              Expanded(
                child: SfPdfViewer.network(
                  'https://drive.google.com/uc?export=download&id=1-sWplUuEzLRt0fa-YOeZ2NZjziEF8WFN',
                ),
              ),

              // Ladda ner-knapp längst ner (valfritt)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: ElevatedButton.icon(
                  onPressed: () {
                    // TODO: implementera faktisk nedladdning (t ex url_launcher)
                  },
                  icon: const Icon(Icons.download),
                  label: const Text('Ladda ner CV'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 16,
                    ),
                    backgroundColor: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}