import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

import '../controllers/info_ukm_controller.dart';
import '../model/info_ukm_model.dart';

class InfoUkmView extends GetView<InfoUkmController> {
  const InfoUkmView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Info UKM',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff373737),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Card(
                child: VerticalCardPager(
                  titles: dataInfoUkm.map((e) {
                    InfoUkmModel model = e;
                    return model.namaUKM;
                  }).toList(),

                  images: dataInfoUkm.map((e) {
                    InfoUkmModel model = e;
                    return Card(
                      elevation: 10,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Stack(
                            children: [
                              Ink.image(
                                image: AssetImage(
                                  model.image.toString(),
                                ),
                                height: 180,
                                fit: BoxFit.contain,
                                child: InkWell(
                                  onTap: () {},
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            model.namaUKM.toString(),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff373737),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            model.keterangan.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF373737),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(
                            color: Color(0xff373737),
                            indent: 25,
                            endIndent: 25,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 25,
                              right: 25,
                            ),
                            child: Text(
                              model.deskripsi.toString(),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Color(0XFF373737),
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                  textStyle: const TextStyle(
                    color: Colors.transparent,
                  ), // optional
                  onPageChanged: (page) {},
                  onSelectedItem: (index) {},
                  initialPage: 0, // optional
                  align: ALIGN.CENTER, // optional
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
