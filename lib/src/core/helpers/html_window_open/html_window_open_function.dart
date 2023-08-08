import 'dart:html' as html;

void htmlWindowOpen(String url, String name, [String? options]) => html.window.open(
      url,
      name,
      options,
    );
