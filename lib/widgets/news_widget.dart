import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class NewsWidget extends StatefulWidget {
  NewsWidget(
      {required this.newsTitle,
      required this.previewDetails,
      this.image = const AssetImage("assets/images/sbu-building-real.png"),
      required this.newsUrl,
      super.key});

  String newsTitle;
  String previewDetails;
  String newsUrl;
  AssetImage image;

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  late TextEditingController _controller;
  late WebViewController _webviewController;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _webviewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            debugPrint('WebView is loading (progress : $progress%)');
          },
          onPageStarted: (String url) {
            debugPrint('Page started loading: $url');
          },
          onPageFinished: (String url) {
            debugPrint('Page finished loading: $url');
          },
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      );
  }

  Future<void> _openInWebview(String url) async {
    final canLaunch = await url_launcher.canLaunchUrl(Uri.parse(url));
    if (!mounted) return;
    if (canLaunch) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => Scaffold(
            appBar: AppBar(title: Text(url)),
            body: WebViewWidget(
                controller: _webviewController..loadRequest(Uri.parse(url))),
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('URL $url can not be launched.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.173,
      width: screenWidth * 0.896,
      decoration: BoxDecoration(
        color: const Color(0xFF7A0C31).withOpacity(0.9),
        borderRadius: BorderRadius.circular(screenWidth * 0.042),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        textDirection: TextDirection.rtl,
        children: [
          Container(
            width: screenWidth * 0.375,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: widget.image,
                fit: BoxFit.fitWidth,
                alignment: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(screenWidth * 0.042)),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.083),
              child: Column(
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.newsTitle,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: const Color(0xFFAFBBC1),
                          fontFamily: "BTitr",
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: screenHeight * 0.014,
                  ),
                  Text(widget.previewDetails,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: const Color(0xFFAFBBC1),
                          fontFamily: "BNazanin",
                          fontSize: screenWidth * 0.027,
                          fontWeight: FontWeight.bold)),
                  TextButton(
                      onPressed: () {
                        _controller.text = widget.newsUrl;
                        FocusScope.of(context).requestFocus(FocusNode());
                        _openInWebview('http://${_controller.text}');
                      },
                      child: Text(
                        "مطالعه بیشتر...",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: const Color(0xFFAFBBC1),
                            fontSize: screenWidth * 0.025,
                            fontFamily: "BNazanin",
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            decorationColor: const Color(0xFFAFBBC1),
                            decorationThickness: screenWidth * 0.006),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
