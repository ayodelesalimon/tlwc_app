import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewWeb extends StatefulWidget {
 final String title,url;

  const ViewWeb({Key key, this.title, this.url}) : super(key: key);
  @override
  _ViewWebState createState() => _ViewWebState();
}

class _ViewWebState extends State<ViewWeb> {
   @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }
  bool isLoading=true;

  final _key = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
          body: Stack(
            children: [
          WebView(
            key: _key,
              initialUrl: widget.url,
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
