import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class OffersDetails extends StatefulWidget {
  @override
  _OffersDetailsState createState() => _OffersDetailsState();
}

class _OffersDetailsState extends State<OffersDetails> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_important),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFE3E3E3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: <Widget>[
                  SizedBox(
                      width: size.width,
                      height: 292,
                      child: Carousel(
                        images: [
                          ExactAssetImage(
                            'assets/images/offer-bg.png',
                          ),
                          ExactAssetImage(
                            'assets/images/offers2.png',
                          ),
                          ExactAssetImage(
                            'assets/images/offers1.png',
                          ),
                        ],
                        dotSize: 4.0,
                        dotSpacing: 15.0,
                        dotColor: Colors.lightGreenAccent,
                        indicatorBgPadding: 5.0,
                        dotBgColor: Colors.white.withOpacity(0.0),
                        moveIndicatorFromBottom: 180.0,
                      )),
                  
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/viaggio.png',
                          width: 150,
                          height: 70,
                          fit: BoxFit.fill,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              child: RawMaterialButton(
                                onPressed: () {},
                                elevation: 2.0,
                                fillColor: Colors.white,
                                child: Image.asset(
                                  'assets/images/share-icon.png',
                                  width: 30,
                                  height: 30,
                                  fit: BoxFit.fill,
                                ),
                                shape: CircleBorder(),
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              child: RawMaterialButton(
                                onPressed: () {},
                                elevation: 2.0,
                                fillColor: Colors.white,
                                child: Image.asset(
                                  'assets/images/call-icon.png',
                                  width: 25,
                                  height: 25,
                                  fit: BoxFit.fill,
                                ),
                                shape: CircleBorder(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'افتح أفضل العروض القريبة',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Packed full with the best of international cuisine and great pairings, all your favorites on extensive buffet display.',
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      '44967021: هاتف',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'anticocafe.com : موقع الكتروني',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'info@anticocafe.com : البريد الإلكتروني',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'ساعات العمل',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'السبت- الخميس',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                    Text(
                      '14:00 إلى 23:30 م',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w100,
                          fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'الجمعه',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                    Text(
                      '14:00 م 23:30 من',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w100,
                          fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
