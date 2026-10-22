import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:startech_project/src/view/widgets/custom_button.dart';
import 'package:startech_project/src/view/widgets/custom_card.dart';
import 'package:startech_project/src/view/widgets/custom_field.dart';
import 'package:startech_project/src/view/widgets/products_section.dart';
import '../../utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> sliders = [
      'https://www.startech.com.bd/image/cache/catalog/home/banner/2026/lenovo-amd-laptop-offer-fifa-wc-26-982x500.webp',
      'https://www.startech.com.bd/image/cache/catalog/home/banner/2026/tv-offer-home-banner-982x500.webp',
      'https://www.startech.com.bd/image/cache/catalog/home/banner/2026/projector-home-banner-982x500.webp',
    ];

    List<Map> images = [
      {'title': 'AC', 'icon': 'assets/images/ac.png'},
      {'title': 'BATTERY', 'icon': 'assets/images/battery.png'},
      {'title': 'DRONE', 'icon': 'assets/images/drone.png'},
      {'title': 'FREEZE', 'icon': 'assets/images/freeze.png'},
      {'title': 'GIMBAL', 'icon': 'assets/images/gimbal.png'},
      {'title': 'PORTABLE', 'icon': 'assets/images/portable ssd.png'},
      {'title': 'TV', 'icon': 'assets/images/tv.png'},
      {'title': 'WIFI', 'icon': 'assets/images/wifi.png'},
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: Icon(Icons.menu, color: Colors.white),
        title: Image.asset('assets/images/logo.png'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart, color: Colors.white),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // slider section
              CarouselSlider.builder(
                itemCount: sliders.length,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.primaryColor,
                      image: DecorationImage(
                        image: NetworkImage(sliders[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 150,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
              ),

              const SizedBox(height: 20),

              //Compare Product Section
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.secondaryColor,
                ),
                child: const Column(
                  children: [
                    Text(
                      'Compare products',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    SizedBox(height: 15),
                    CustomField(
                      hintText: 'Search and Select Product',
                      icon: Icons.search,
                    ),

                    SizedBox(height: 15),
                    CustomField(
                      hintText: 'Search and Select Product',
                      icon: Icons.search,
                    ),

                    SizedBox(height: 15),
                    CustomButton(title: 'View Comparison', isBorderType: true),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: CustomCard(
                      title: 'Laptop Finder',
                      icon: Icons.laptop,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Expanded(
                    child: CustomCard(
                      title: 'Raise a Complain',
                      icon: Icons.laptop,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Row(
                children: [
                  Expanded(
                    child: CustomCard(
                      title: 'Laptop Finder',
                      icon: Icons.laptop,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Expanded(
                    child: CustomCard(
                      title: 'Raise a Complain',
                      icon: Icons.laptop,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              Container(
                height: 50,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 10,
                      spreadRadius: .5,
                    ),
                  ],
                ),
                child: Marquee(
                  text: 'There once was a boy who told this story about a boy',
                ),
              ),

              Text(
                'Featured Category',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'Get Your Desired Product from Featured Category!',
                style: TextStyle(color: Colors.black.withOpacity(.5)),
              ),
              const SizedBox(height: 10),

              GridView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black.withOpacity(.1)),
                    ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            images[index]['icon'],
                            width: 30,
                            height: 30,
                          ),

                          Text(
                            images[index]['title'],
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),

              const SizedBox(height: 25),

              const ProductsSection(),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.5),
        backgroundColor: const Color(0xff081621),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined),
            label: "Offers",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.flash_on_outlined),
            label: "Happy Hour",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.computer_outlined),
            label: "PC Builder",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined),
            label: "Compare",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
