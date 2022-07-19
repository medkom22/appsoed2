import 'package:appsoed/app/modules/layanan_unsoed/model/dokumen_model.dart';
import 'package:appsoed/app/modules/layanan_unsoed/screens_layanan/reader_layanan.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens_layanan/reader_layanan.dart';
import '../model/dokumen_model.dart';

class LayananUnsoed extends GetView {
  const LayananUnsoed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Layanan Unsoed',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xff373737),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: Dokument.doc_list
                    .map(
                      (doc) => ListTile(
                        onTap: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ReaderScreen(doc),
                            ),
                          );
                        }),
                        title: Text(
                          doc.doc_title!,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff373737),
                              overflow: TextOverflow.ellipsis),
                        ),
                        subtitle: Text("${doc.page_num!} Pages"),
                        trailing: Text(
                          doc.doc_date!,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff373737),
                          ),
                        ),
                        leading: const Icon(
                          Icons.picture_as_pdf,
                          color: Color(0xffFDB731),
                          size: 30.0,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
