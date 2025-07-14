import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:website/main_page/header_field.dart';
import 'package:flutter/foundation.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'web_pdf_viewer.dart';

class CVPage extends StatelessWidget {
  const CVPage({super.key});

  @override
  Widget build(BuildContext context) {
    const driveId = '1-sWplUuEzLRt0fa-YOeZ2NZjziEF8WFN';
    const pdfUrl = 'https://drive.google.com/uc?export=download&id=$driveId';
    final previewUrl = 'https://drive.google.com/file/d/$driveId/preview';

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
                child: kIsWeb
                    ? WebPdfViewer(url: previewUrl)
                    : SfPdfViewer.network(pdfUrl),
              ),
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