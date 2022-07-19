import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../provider/launcer_provider.dart';

/// The above class is a class that contains the code for the Gensoed Merch page.

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
                  fontSize: 19,
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
                    imageUrl: 'paket1',
                    item: 'Paket 1',
                    price: '270.000',
                  ),
                  GensoedItemWidget(
                    imageUrl: 'paket2',
                    item: 'Paket 2',
                    price: '220.000',
                  ),
                  GensoedItemWidget(
                    imageUrl: 'paket3',
                    item: 'Paket 3',
                    price: '130.000',
                  ),
                  GensoedItemWidget(
                    imageUrl: 'paket4',
                    item: 'Paket Ber-3',
                    price: '445.000',
                  ),
                  GensoedItemWidget(
                    imageUrl: 'paket5',
                    item: 'Paket 5',
                    price: '250.000',
                  ),
                  GensoedItemWidget(
                    imageUrl: 'paket6',
                    item: 'Paket 6',
                    price: '205.000',
                  ),
                  GensoedItemWidget(
                    imageUrl: 'kaos',
                    item: 'Kaos/T-shirt',
                    price: '75.000-80.000',
                  ),
                  GensoedItemWidget(
                    imageUrl: 'request',
                    item: 'CO Request Lengan Panjang',
                    price: '5.000',
                  ),
                  GensoedItemWidget(
                    imageUrl: 'jaket_gensoed',
                    item: 'Jaket Gensoed',
                    price: '155.000',
                  ),
                  GensoedItemWidget(
                    imageUrl: 'stiker',
                    item: 'Stiker Gensoed',
                    price: '4.000',
                  ),
                  GensoedItemWidget(
                    imageUrl: 'ganci',
                    item: 'Gantungan Kunci Gensoed',
                    price: '8.000-10.000',
                  ),
                  GensoedItemWidget(
                    imageUrl: 'totebag',
                    item: 'Totebag Gensoed',
                    price: '60.000',
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

/// A `StatelessWidget` that displays an image, an item name, and a price

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
