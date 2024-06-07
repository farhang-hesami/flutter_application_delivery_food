import 'package:flutter/material.dart';
import 'package:flutter_application_delivery_food/constants.dart';
import 'package:flutter_application_delivery_food/models/cart_products.dart';
import 'package:flutter_application_delivery_food/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: defaultPadding * 3, left: defaultPadding),
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 30.0,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: defaultPadding,
            ),
            child: Text(
              'My Cart',
              style: GoogleFonts.ubuntu(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(height: defaultPadding),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding * 2,
              ),
              child: SizedBox(
                width: double.infinity,
                child: ListView.builder(
                  itemCount: demoCartProducts.length,
                  itemBuilder: (context, index) {
                    return CardCart(demoCartProducts[index]);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            'assets/images/shape11.png',
          ),
          Expanded(
            child: Container(
              height: 200.0,
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: defaultPadding,
                vertical: defaultPadding,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 15.0,
                        height: 15.0,
                        child: Icon(
                          Icons.discount,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Do you have a Coupon? ',
                          style: GoogleFonts.ubuntu(
                            fontSize: 14.0,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'apply',
                              style: GoogleFonts.ubuntu(
                                fontSize: 14.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: defaultPadding * 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: GoogleFonts.ubuntu(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '1200 DA',
                        style: GoogleFonts.ubuntu(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'T.x',
                        style: GoogleFonts.ubuntu(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '200 DA',
                        style: GoogleFonts.ubuntu(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1400 DA',
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                        width: 210.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: defaultPadding,
                              ),
                              Text(
                                'Finalize Order',
                                style: GoogleFonts.ubuntu(
                                  color: Colors.black,
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
    );
  }

  Container CardCart(CartProducts cartProducts) {
    return Container(
      margin: EdgeInsets.only(
        bottom: defaultPadding,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/shape10.png',
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(cartProducts.image),
              ),
              SizedBox(
                height: defaultPadding * 2,
                width: 10.0,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cartProducts.title,
                        style: GoogleFonts.ubuntu(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        cartProducts.price,
                        style: GoogleFonts.ubuntu(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: defaultPadding,
                      ),
                      Row(
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
