import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class FeaturedDetails extends StatefulWidget {
  @override
  _FeaturedDetailsState createState() => _FeaturedDetailsState();
}

class _FeaturedDetailsState extends State<FeaturedDetails> {
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
      //drawer: Drawer(),
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
                          'assets/images/featured-1.png',
                        ),
                        ExactAssetImage(
                          'assets/images/featured-2.png',
                        ),
                        ExactAssetImage(
                          'assets/images/featured-3.png',
                        )
                      ],
                      dotSize: 4.0,
                      dotSpacing: 15.0,
                      dotColor: Colors.lightGreenAccent,
                      indicatorBgPadding: 5.0,
                      dotBgColor: Colors.white.withOpacity(0.0),
                      borderRadius: true,
                      moveIndicatorFromBottom: 180.0,
                      noRadiusForIndicator: true,
                    ),
                  ),
                  Positioned(
                    left: 15,
                    top: 40,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context, true);
                      },
                      child: Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
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
                        Text(
                          "Antico Café",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 30.0),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          child: RawMaterialButton(
                            onPressed: () {},
                            elevation: 2.0,
                            fillColor: Colors.white,
                            child: Icon(
                              Icons.place,
                              color: Theme.of(context).primaryColor,
                              size: 20.0,
                            ),
                            shape: CircleBorder(),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          child: RawMaterialButton(
                            onPressed: () {},
                            elevation: 2.0,
                            fillColor: Colors.white,
                            child: Icon(
                              Icons.phone,
                              size: 20.0,
                              color: Theme.of(context).accentColor,
                            ),
                            shape: CircleBorder(),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 20,
                      width: 60,
                      margin: EdgeInsets.symmetric(vertical: 15.0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        onPressed: () {},
                        color: Colors.white,
                        child: Container(
                          child: Text(
                            "OPEN",
                            style: TextStyle(
                                color: Color(0xFF4CD964),
                                fontWeight: FontWeight.w700,
                                fontSize: 8.0),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquya m erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
                      style: TextStyle(color: Colors.black, fontSize: 12.0),
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
