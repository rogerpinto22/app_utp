import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Horario1 extends StatefulWidget {
  Horario1({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Horario1> {
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
                'http://www.utponiente.edu.mx/utp/doctos/CONVOCATORIA%20OFERTA%20EDUCATIVA%20UTP%202022-2023_OK.pdf',
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
