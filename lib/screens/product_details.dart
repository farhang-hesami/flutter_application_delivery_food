import 'package:flutter/material.dart';
import 'package:flutter_application_delivery_food/constants.dart';
import 'package:flutter_application_delivery_food/models/for_you_products.dart';
import 'package:flutter_application_delivery_food/screens/shoping_cart.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.category,
  });
  final String title, price, image, category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height:
                  MediaQuery.of(context).size.height * 2 / 3 + defaultPadding,
              child: Stack(
                children: [
                  Image.asset('assets/images/shape3.png'),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: defaultPadding,
                      right: defaultPadding,
                      top: defaultPadding * 1.6,
                    ),
                    child: Container(
                      margin: EdgeInsets.all(0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () => Navigator.pop(context),
                                child: Icon(
                                  Icons.arrow_back_ios_new,
                                  size: 30.0,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.favorite_outline,
                                size: 30.0,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Text(
                            category,
                            style: GoogleFonts.ubuntu(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: defaultPadding,
                          ),
                          Text(
                            title,
                            style: GoogleFonts.ubuntu(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: defaultPadding * 2,
                          ),
                          Image.asset(image),
                          const SizedBox(
                            height: defaultPadding * 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 40.0,
                                width: 40.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(0),
                                      elevation: 0.0,
                                      backgroundColor: Color(0xFFECEEED),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                      )),
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '1',
                                    style: GoogleFonts.ubuntu(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 40.0,
                                width: 40.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(0),
                                      elevation: 0.0,
                                      backgroundColor: Colors.orange,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                      )),
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: defaultPadding * 1.5,
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                price,
                                style: GoogleFonts.ubuntu(
                                  color: Colors.black,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                width: defaultPadding * 3,
                              ),
                              SizedBox(
                                height: 50.0,
                                width: 200.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0.0,
                                    backgroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5.0),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => ShoppingCart(),
                                    ));
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.shopping_cart_outlined,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: defaultPadding,
                                      ),
                                      Text(
                                        'Add',
                                        style: GoogleFonts.ubuntu(
                                          color: Colors.white,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: defaultPadding * 2,
            ),
            Container(
              height: 400.0,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/shape4.png',
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: defaultPadding * 3),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: defaultPadding * 2,
                        ),
                        child: Text(
                          'Related',
                          style: GoogleFonts.ubuntu(
                            color: Colors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      SizedBox(height: defaultPadding * 3),
                      Padding(
                        padding: const EdgeInsets.only(left: defaultPadding),
                        child: SizedBox(
                          height: 230.0,
                          width: double.infinity,
                          child: ListView.builder(
                            padding: EdgeInsets.all(0),
                            scrollDirection: Axis.horizontal,
                            itemCount: demoProductsForYou.length,
                            itemBuilder: (context, index) {
                              return CardRelated(demoProductsForYou[index]);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget CardRelated(ProductsForYou productsForYou) {
  return Container(
    margin: EdgeInsets.only(
      right: defaultPadding,
    ),
    child: Stack(
      children: [
        Container(
          child: Image.asset(
            'assets/images/shape5.png',
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              productsForYou.image,
              scale: 3.0,
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.only(
                bottom: defaultPadding * 2,
                left: defaultPadding * 2,
                right: defaultPadding,
              ),
              width: 240.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    productsForYou.title,
                    style: GoogleFonts.ubuntu(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    productsForYou.price,
                    style: GoogleFonts.ubuntu(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
