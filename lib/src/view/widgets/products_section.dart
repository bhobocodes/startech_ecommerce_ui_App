import 'package:flutter/material.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> products = [
      {
        'product_title':
            'Lenovo IdeaPad 1 15AMN7 Ryzen 5 7520U 15.6" FHD Laptop',
        'thumbnail':
            'https://www.startech.com.bd/image/cache/catalog/laptop/lenovo/ideapad-1-15amn7/ideapad-1-15amn7-001-500x500.webp',
        'discount_price': null,
        'original_price': '61,500',
        'earn_point': '500',
        'save_money': null,
      },
      {
        'product_title': 'Dell S2425H 23.8" IPS 100Hz FHD Monitor',
        'thumbnail':
            'https://www.startech.com.bd/image/cache/catalog/monitor/dell/s2425h/s2425h-20-500x500.webp',
        'discount_price': '19,500',
        'original_price': '16,900 ',
        'earn_point': 'null',
        'save_money': '2,600',
      },
      {
        'product_title': 'EcoFlow River 3 Portable Power Station',
        'thumbnail':
            'https://www.startech.com.bd/image/cache/catalog/portable-power-station/ecoflow/river-3/river-3-005-500x500.webp',
        'discount_price': '	24,590৳',
        'original_price': '30,828৳ ',
        'earn_point': 'null',
        'save_money': ' 4,910৳',
      },
      {
        'product_title':
            'AOC AGON PRO AG276QKD 26.5" 480Hz QHD OLED Gaming Monitor',
        'thumbnail':
            'https://www.startech.com.bd/image/cache/catalog/monitor/aoc/agon-pro-ag276qkd/agon-pro-ag276qkd-001-500x500.webp',
        'discount_price': 'Price	109,000৳',
        'original_price': '119,900৳ ',
        'earn_point': null,
        'save_money': ' 10,900৳',
      },
    ];
    return Column(
      children: [
        Text(
          'Featured Product',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          'Check & Get Your Desired Product!',
          style: TextStyle(color: Colors.black.withOpacity(.5)),
        ),
        const SizedBox(height: 10),

        GridView.builder(
          shrinkWrap: true,
          primary: false,
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: .6,
          ),

          itemBuilder: (context, index) {
            final product = products[index];
            return LayoutBuilder(
              builder: (context, constraints) {
                return Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black.withOpacity(.1)),
                      ),

                      child: Column(
                        children: [
                          Image.network(product['thumbnail']),
                          Divider(color: Colors.black.withOpacity(.1)),
                          Text(
                            product['product_title'],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 8)),
                              Text(
                                product['discount_price'] ??
                                    product['original_price'],

                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              if (product['discount_price'] != null) ...[
                                const SizedBox(width: 5),

                                Text(
                                  '${product['original_price']}',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(.5),
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ],
                      ),
                    ),
                    product['earn_point'] == null &&
                            product['save money'] == null
                        ? const SizedBox()
                        : Positioned(
                            top: 15,
                            child: Container(
                              height: 30,
                              width: constraints.maxWidth * .7,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: Color(0XFF78078E),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  bottomRight: Radius.circular(40),
                                ),
                              ),
                              child: Text(
                                product['Save 2000'] != null
                                    ? 'save:200'
                                    : 'Earn Point:500',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}
