import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../data/values/strings.dart';

class PdfViewer extends StatefulWidget {
  const PdfViewer({Key? key}) : super(key: key);

  @override
  State<PdfViewer> createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer> {
  /// remote PDF Path
  String remotePDFpath = "";

  /// InitState
  @override
  void initState() {
    super.initState();
    setState(() {
      createFileOfPdfUrl().then((f) {
        setState(() {
          remotePDFpath = f.path;
        });
      });
      print("Remote Path Value == $remotePDFpath");
    });
  }

  /// Function for calling
  Future<File> createFileOfPdfUrl() async {
    Completer<File> completer = Completer();
    print("Start download file from internet!");
    var permissionStatus = await Permission.storage.request();
    print("Permission Status == ${permissionStatus}");
    if (permissionStatus.isGranted) {
      try {
        const url = AppStrings.pdfFile;
        final filename = url.substring(url.lastIndexOf("/") + 1);
        var request = await HttpClient().getUrl(Uri.parse(url));
        var response = await request.close();
        var bytes = await consolidateHttpClientResponseBytes(response);
        var dir = await getApplicationDocumentsDirectory();
        print("Download files");
        print("${dir.path}/$filename");
        File file = File("${dir.path}/$filename");
        print("File Name Here ==>> $file");
        await file.writeAsBytes(bytes, flush: true);
        completer.complete(file);
      } catch (e) {
        throw Exception('Error parsing asset file!');
      }
    }
    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("View"),
        ),
        body: remotePDFpath == ""
            ? const Center(child: CircularProgressIndicator())
            : PDFView(
                filePath: remotePDFpath,
                enableSwipe: true,
                swipeHorizontal: false,
                autoSpacing: false,
                pageFling: true,
                pageSnap: true,
                fitPolicy: FitPolicy.BOTH,
                preventLinkNavigation: false,
                // if set to true the link is handled in flutter
                onRender: (_pages) {
                  setState(() {});
                },
                onError: (error) {
                  setState(() {});
                  print(error.toString());
                },
                onPageError: (page, error) {
                  setState(() {});
                  print('$page: ${error.toString()}');
                },
                onViewCreated: (PDFViewController pdfViewController) {},
                onLinkHandler: (String? uri) {
                  print('goto uri: $uri');
                },
                onPageChanged: (int? page, int? total) {
                  print('page change: $page/$total');
                  setState(() {});
                },
              ));
  }
}
