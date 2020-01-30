import 'package:flutter/material.dart';

class task1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return task1State();
  }
}

class task1State extends State<task1> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Positioned(
            child: Text(
              'Welcome home',
              style: TextStyle(
                  fontSize: 15.5,
                  fontWeight: FontWeight.w600,
                  color: Colors.black38),
            ),
            top: 69,
            left: 22,
          ),
          Positioned(
            child: Text(
              'Alex Tobey',
              style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
            ),
            top: 88,
            left: 20,
          ),
          Positioned(
            top: 75,
            right: 20,
            child: Container(
              //height: 65,width: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Image.asset(
                'images/imag.jpg',
                height: 50,
                width: 50,
              ),
            ),
          ),
          Positioned(
            top: 165,
            left: 20,
            child: Image.asset(
              'images/power.png',
              height: 50,
              width: 50,
            ),
          ),
          Positioned(
              top: 165,
              left: 85,
              child: Text(
                '20.3',
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
              )),
          Positioned(
              top: 177,
              left: 153,
              child: Text(
                'Kwh',
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
              )),
          Positioned(
            child: Text(
              'Power usage for todey',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black38),
            ),
            top: 197,
            left: 85,
          ),
          cardconunt(Colors.deepOrange, Colors.white, Colors.white,
              Colors.black26, 260, 190, 20, 'Bathroom', '1 device'),
          cardconunt(Colors.white, Colors.deepOrange, Colors.black,
              Colors.black38, 260, 20, 190, 'Living room', '4 device'),
          cardconunt(Colors.white, Colors.deepOrange, Colors.black,
              Colors.black38, 420, 190, 20, 'Bed room', '2 device'),
          cardconunt(Colors.white, Colors.deepOrange, Colors.black,
              Colors.black38, 420, 20, 190, 'Living room', '1 device'),
          Positioned(
            bottom: 0,
            child: Container(
              width: 360,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.purple[900],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple,
                      blurRadius: 5.0,
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Divider(
                      color: Colors.deepPurple[200],
                      indent: 120,
                      endIndent: 120,
                      height: 15,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 30),
                    child: Text(
                      'Quick remote access',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3.0, left: 30),
                    child: Text(
                      'Swipe up to get fast access to your wireless \n remote control',
                      style: TextStyle(
                          color: Colors.deepPurple[200],
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

cardconunt(Color backc, Color iconc, Color titlec, Color subtitlec, double t,
    double r, double l, String title, String subtitle) {
  return Positioned(
      top: t,
      right: r,
      left: l,
      child: Container(
        height: 145,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: backc,
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 5.0,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                Icons.hot_tub,
                color: iconc,
                size: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0, left: 15.0),
              child: InkWell(
                child: Text(
                  '${title}',
                  style: TextStyle(
                      color: titlec, fontSize: 22, fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                '${subtitle}',
                style: TextStyle(color: subtitlec, fontSize: 15),
              ),
            ),
          ],
        ),
      ));
}
