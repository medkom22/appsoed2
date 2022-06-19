import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../provider/launcer_provider.dart';

// void main() {
//   runApp(MyApp());
// }

class GensoedMerchView extends GetView {
  const GensoedMerchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Gensoed Merch',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff373737),
                ),
              ),
              const SizedBox(),
              const SizedBox(
                height: 50,
              ),
              GridView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 6 / 8,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 10,
                ),
                children: const <Widget>[
                  GensoedItemWidget(
                    imageUrl: 'jaket_gensoed',
                    item: 'Jaket Gensoed',
                    price: '130.000',
                  ),
                  GensoedItemWidget(
                    imageUrl: 'paket_berlima',
                    item: 'Paket ber-5',
                    price: '625.000',
                  ),
                  GensoedItemWidget(
                    imageUrl: 'paket_bertiga',
                    item: 'Paket ber-3',
                    price: '380.000',
                  ),
                  GensoedItemWidget(
                    imageUrl: 'totebag',
                    item: 'Totebag Gensoed',
                    price: '30.000',
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 50, bottom: 100),
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 0.5,
                      offset: Offset(0, 3),
                    )
                  ],
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xffFDB731),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Get.defaultDialog(
                        title: 'Gensoed Merch',
                        middleText: 'Menuju link Shopee Gensoed Merch',
                        textCancel: 'Batal',
                        textConfirm: 'Oke',
                        onConfirm: () async {
                          await LauncherProvider.launcherURL(
                            'https://linktr.ee/gensoed.merch',
                          );
                          Get.back();
                        },
                        onCancel: () {
                          Get.back();
                        });
                  },
                  child: const Text(
                    'Click Here',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GensoedItemWidget extends StatelessWidget {
  final String? imageUrl, item, price;
  const GensoedItemWidget(
      {Key? key, required this.imageUrl, this.item, this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: const Color(0xffFDB731),
      ),
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/$imageUrl.png',
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            item ?? 'Item',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xffFFFFFF),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Rp $price',
            style: const TextStyle(
              color: Color(0xffFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}
