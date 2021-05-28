import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VWeb extends StatefulWidget {
// final String title,url;

  const VWeb({Key key}) : super(key: key);
  @override
  _VWebState createState() => _VWebState();
}

class _VWebState extends State<VWeb> {
  bool isLoading=true;

  final _key = UniqueKey();
   @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hello"),),
          body: Stack(
            children: [
          WebView(
            key: _key,
              initialUrl: "https://tlwc.faithpays.org/donations/together-it-is-possible-we-can-and-are-making-a-difference-4-2/?customize_changeset_uuid=cb67539b-1ff1-4938-b915-7df65f5cec94&customize_autosaved=on",
              javascriptMode: JavascriptMode.unrestricted,
         onPageFinished: (finish) {
                setState(() {
                  isLoading = false;
                });
              },
            ),
            isLoading ? Center( child: CircularProgressIndicator(),)
                      : Stack(),
          ],
        
      ),
    );
  }
}
