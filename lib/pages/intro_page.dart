import 'dart:async';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);
  static final String id = "intro_page";

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  PageController _pageController = PageController(initialPage: 1);
  double _height = 300;
  Color _color = Colors.white12;
  int selectPage = 0;
  bool visibilty = false;

  _click(int select, double height) {
    _height = height;
    _color = Colors.white;
    Timer(Duration(milliseconds: 200), () {
      setState(() {
        selectPage = select;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.deepOrangeAccent,
        body: Stack(
          children: [
            // #text and pageview
            GestureDetector(
              onTap: (){
                setState(() {
                  _height = 300;
                  _color = Colors.white12;
                  Timer(Duration(milliseconds: 10), () {
                    setState(() {
                      selectPage = 0;
                    });
                  });
                });

              },
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    // #logo text
                    Text(
                      "Your Logo",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 33,
                          fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          _height = 300;
                          _color = Colors.white12;
                          Timer(Duration(milliseconds: 10), () {
                            setState(() {
                              selectPage = 0;
                            });
                          });
                        });

                      },
                      child: Container(
                        height: 250,
                        child: PageView(
                          controller: _pageController,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "All Your Favourite Dishes",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Order from your nearby restaraunt in the town,",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "You can easily order from anywhere, anytime",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "All Your Favourite Dishes",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Order from your nearby restaraunt in the town,",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "You can easily order from anywhere, anytime",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "All Your Favourite Dishes",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Order from your nearby restaraunt in the town,",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "You can easily order from anywhere, anytime",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: 3,
                      effect: WormEffect(
                        dotHeight: 8,
                        dotWidth: 8,
                        activeDotColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: AnimatedContainer(
                  curve: Curves.easeIn,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  duration: const Duration(milliseconds: 200),
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  height: _height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: _color,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  child: (selectPage == 0)
                      ? buttonsofColumn()
                      : selectPage == 1
                          ? signUpColumn()
                          : loginColumn(),
                ),
              ),
            ),
          ],
        ));
  }

  Widget loginColumn() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Sign In Account",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Sign In to continue",
            style: TextStyle(
                color: Colors.grey.shade500,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "EMAIL",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
              top: BorderSide(color: Colors.black12),
              bottom: BorderSide(color: Colors.black12),
              right: BorderSide(color: Colors.black12),
              left: BorderSide(color: Colors.black12),
            )),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "dawin.wong@gmail.com",
                  hintStyle: TextStyle(
                      color: Colors.grey.shade600, fontWeight: FontWeight.bold),
                  contentPadding: EdgeInsets.all(10)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "PASSWORD",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
              top: BorderSide(color: Colors.black12),
              bottom: BorderSide(color: Colors.black12),
              right: BorderSide(color: Colors.black12),
              left: BorderSide(color: Colors.black12),
            )),
            child: TextFormField(
              obscureText: visibilty,
              decoration: InputDecoration(
                  hintText: "********",
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          visibilty = !visibilty;
                        });
                      },
                      icon: (!visibilty)
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off)),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey.shade800,
                  fixedSize: Size(250, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              onPressed: () {},
              child: Text("Login")),
          SizedBox(
            height: 20,
          ),
          Text(
            "Already have an account? Login",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey.shade600),
          )
        ],
      ),
    );
  }

  Widget signUpColumn() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Create an account",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Sign up to continue",
            style: TextStyle(
                color: Colors.grey.shade500,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "NAME",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
              top: BorderSide(color: Colors.black12),
              bottom: BorderSide(color: Colors.black12),
              right: BorderSide(color: Colors.black12),
              left: BorderSide(color: Colors.black12),
            )),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Dawing Wong",
                  hintStyle: TextStyle(
                      color: Colors.grey.shade600, fontWeight: FontWeight.bold),
                  contentPadding: EdgeInsets.all(10)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "EMAIL",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
              top: BorderSide(color: Colors.black12),
              bottom: BorderSide(color: Colors.black12),
              right: BorderSide(color: Colors.black12),
              left: BorderSide(color: Colors.black12),
            )),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "dawin.wong@gmail.com",
                  hintStyle: TextStyle(
                      color: Colors.grey.shade600, fontWeight: FontWeight.bold),
                  contentPadding: EdgeInsets.all(10)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "PASSWORD",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
              top: BorderSide(color: Colors.black12),
              bottom: BorderSide(color: Colors.black12),
              right: BorderSide(color: Colors.black12),
              left: BorderSide(color: Colors.black12),
            )),
            child: TextFormField(
              obscureText: visibilty,
              decoration: InputDecoration(
                  hintText: "********",
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          visibilty = !visibilty;
                        });
                      },
                      icon: (!visibilty)
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off)),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10)),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent.shade700,
                  fixedSize: Size(250, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              onPressed: () {
              },
              child: Text("Get Started")),
          SizedBox(
            height: 20,
          ),
          Text(
            "Already have an account? Login",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey.shade600),
          )

        ],
      ),
    );
  }

  Column buttonsofColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.greenAccent.shade700,
                fixedSize: Size(250, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            onPressed: () {
              setState(() {
                _click(1, 600);
              });
            },
            child: Text("Get Started")),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.grey.shade800,
                fixedSize: Size(250, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            onPressed: () {
              setState(() {
                _click(2, 500);
              });
            },
            child: Text("Login")),
      ],
    );
  }
}
