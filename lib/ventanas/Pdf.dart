import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Horario extends StatefulWidget {
  Horario({
    Key? key,
  }) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Horario> {
  late PdfViewerController _pdfViewerController;
  final GlobalKey<SfPdfViewerState> _pdfViewerStateKey = GlobalKey();
  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SfPdfViewer.network(
                'http://www.utponiente.edu.mx/utp/doctos/CALENDARIO%20ESCOLAR%20UTP%202021-2022_AUTORIZADO%20FIRMAS.pdf',
                controller: _pdfViewerController,
                key: _pdfViewerStateKey),
            bottomNavigationBar: BottomAppBar(
              child: Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.bookmark),
                      onPressed: () {
                        _pdfViewerStateKey.currentState!.openBookmarkView();
                      }),
                  Spacer(),
                  IconButton(
                      icon: Icon(Icons.arrow_drop_down_circle),
                      onPressed: () {
                        _pdfViewerController.jumpToPage(2);
                      }),
                  IconButton(
                      icon: Icon(Icons.zoom_in),
                      onPressed: () {
                        _pdfViewerController.zoomLevel = 2.25;
                      }),
                ],
              ),
            )));
  }
}
