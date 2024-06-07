import 'package:flutter/material.dart';
import 'package:flutter_application_delivery_food/constants.dart';
import 'package:flutter_application_delivery_food/models/best_sellers_products.dart';
import 'package:flutter_application_delivery_food/models/categories_icons.dart';
import 'package:flutter_application_delivery_food/models/for_you_products.dart';
import 'package:flutter_application_delivery_food/screens/product_details.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/shape1.png',
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: defaultPadding * 4,
                    left: defaultPadding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.place_outlined,
                            size: 40.0,
                            color: Colors.white,
                          ),
                          Text(
                            'Erbil, Iraq',
                            style: GoogleFonts.ubuntu(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: defaultPadding,
                            ),
                            child: ClipOval(
                              child: SizedBox(
                                height: 50.0,
                                child: Image.asset(
                                  'assets/images/userfinal.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: defaultPadding),
                      Text(
                        'Hello\nFarhang Hesami',
                        style: GoogleFonts.ubuntu(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: defaultPadding,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: defaultPadding,
                              ),
                              height: 50.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              child: TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.search_outlined,
                                    color: Colors.black,
                                  ),
                                  hintText: 'Search...',
                                  hintStyle: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14.0,
                                  ),
                                  disabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: defaultPadding,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: defaultPadding),
                            child: Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                              child: Image.asset(
                                'assets/icons/settings.png',
                                scale: 20.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: defaultPadding * 2,
                      ),
                      SizedBox(
                        height: 120.0,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: demoCategories.length,
                          itemBuilder: (context, index) {
                            return categories(demoCategories[index]);
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: defaultPadding * 2,
            ),
            Container(
              padding: EdgeInsets.only(left: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Best Sallers',
                    style: GoogleFonts.ubuntu(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: defaultPadding * 2,
                  ),
                  SizedBox(
                    height: 250.0,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: demoBestSellesProducts.length,
                      itemBuilder: (context, index) {
                        return CardBestSallers(
                            context, demoBestSellesProducts[index]);
                      },
                    ),
                  ),
                  SizedBox(
                    height: defaultPadding * 2,
                  ),
                  Text(
                    'For you',
                    style: GoogleFonts.ubuntu(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  SizedBox(
                    height: 250.0,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: demoProductsForYou.length,
                      itemBuilder: (context, index) {
                        return CardForYou(context, demoProductsForYou[index]);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100.0,
        padding: EdgeInsets.all(defaultPadding),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50.0),
            ),
          ),
          color: Colors.white,
          elevation: 3.0,
          child: TabBar(
            labelColor: Colors.orangeAccent,
            unselectedLabelColor: Colors.grey[600],
            controller: _tabController,
            indicator: UnderlineTabIndicator(borderSide: BorderSide.none),
            onTap: (value) {},
            tabs: [
              Icon(Icons.home_outlined, size: 30.0),
              Icon(Icons.favorite_outlined, size: 30.0),
              Icon(Icons.shopping_basket_outlined, size: 30.0),
              Icon(Icons.person_outlined, size: 30.0),
            ],
          ),
        ),
      ),
    );
  }

  Container CardForYou(BuildContext context, ProductsForYou productsForYou) {
    return Container(
      width: MediaQuery.of(context).size.width - defaultPadding * 4,
      margin: EdgeInsets.only(
        right: defaultPadding,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset('assets/images/shape2.png'),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              productsForYou.image,
              scale: 2.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: defaultPadding * 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  productsForYou.category,
                  style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  productsForYou.title,
                  style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: defaultPadding,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: defaultPadding * 3,
              right: defaultPadding * 1.5,
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.favorite_outline,
                size: 40.0,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: defaultPadding * 1.5,
              right: defaultPadding * 1.5,
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                productsForYou.price,
                style: GoogleFonts.ubuntu(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductDetailsScreen(
                      title: productsForYou.title,
                      image: productsForYou.image,
                      category: productsForYou.category,
                      price: productsForYou.price,
                    ),
                  ),
                );
              },
              child: Image.asset(
                'assets/images/shape2.png',
                color: Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container CardBestSallers(
      BuildContext context, BestSellesProducts bestSellesProducts) {
    return Container(
      width: MediaQuery.of(context).size.width - defaultPadding * 4,
      margin: EdgeInsets.only(
        right: defaultPadding,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset('assets/images/shape2.png'),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              bestSellesProducts.image,
              scale: 2.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: defaultPadding * 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  bestSellesProducts.category,
                  style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  bestSellesProducts.title,
                  style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: defaultPadding,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: defaultPadding * 3,
              right: defaultPadding * 1.5,
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.favorite_outline,
                size: 40.0,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: defaultPadding * 1.5,
              right: defaultPadding * 1.5,
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                bestSellesProducts.price,
                style: GoogleFonts.ubuntu(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductDetailsScreen(
                      title: bestSellesProducts.title,
                      image: bestSellesProducts.image,
                      price: bestSellesProducts.price,
                      category: bestSellesProducts.category,
                    ),
                  ),
                );
              },
              child: Image.asset(
                'assets/images/shape2.png',
                color: Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding categories(CategoriesIcons categoriesIcons) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Container(
          height: 120.0,
          width: 120.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Spacer(),
                SizedBox(
                  height: 50.0,
                  width: 50.0,
                  child: Image.asset(categoriesIcons.icon),
                ),
                Text(
                  categoriesIcons.title,
                  style: GoogleFonts.ubuntu(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
