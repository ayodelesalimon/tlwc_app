import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewPlug extends StatefulWidget {
  final String url, title;

  const WebViewPlug({Key key, this.url, this.title}) : super(key: key);
  @override
  _WebViewPlugState createState() => _WebViewPlugState();
}

class _WebViewPlugState extends State<WebViewPlug> {
  final flutterWebViewPlugin = FlutterWebviewPlugin();
  final Set<JavascriptChannel> jsChannels = [
    JavascriptChannel(
        name: 'Print',
        onMessageReceived: (JavascriptMessage message) {
          print(message.message);
        }),
  ].toSet();
  @override
  void dispose() {
    super.dispose();
    flutterWebViewPlugin.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebviewScaffold(
        javascriptChannels: jsChannels,
        url: widget.url,
        mediaPlaybackRequiresUserGesture: false,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        withZoom: true,
        withLocalStorage: true,
        hidden: true,
        initialChild: Container(
          //color: Colors.redAccent,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
