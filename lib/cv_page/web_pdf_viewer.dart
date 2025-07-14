// ignore: avoid_web_libraries_in_flutter
import 'dart:ui_web' as ui_web;
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:html';

class WebPdfViewer extends StatelessWidget {
  final String url;
  const WebPdfViewer({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    // Register a view factory for iframe using dart:ui_web
    // ignore: undefined_prefixed_name
    ui_web.platformViewRegistry.registerViewFactory(
      url,
      (int viewId) {
        final iframe = IFrameElement()
          ..src = url
          ..style.border = 'none'
          ..style.height = '100%'
          ..style.width = '100%';
        return iframe;
      },
    );
    return HtmlElementView(viewType: url);
  }
}