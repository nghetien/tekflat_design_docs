import 'dart:html' as html;

void downloadFileAsset({
  required String path,
  required String text,
}) {
  html.AnchorElement anchorElement = html.AnchorElement(href: path);
  anchorElement.download = text;
  anchorElement.click();
}
