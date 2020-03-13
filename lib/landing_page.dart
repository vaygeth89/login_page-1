import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    FocusNode _emailFocusNode = FocusNode();
    FocusNode _passwordFocusNode = FocusNode();
    TextEditingController _emailController =
        TextEditingController(text: "myemail@example.com");
    TextEditingController _passwordController =
        TextEditingController(text: "************");
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20),
                height: MediaQuery.of(context).size.height,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2 - 50,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorDark,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 2),
                          blurRadius: 5,
                          spreadRadius: 0.5,
                          color: Colors.black.withAlpha(100))
                    ]),
                // child: SvgPicture.asset("assets/decoration.svg"),
              ),
              SvgPicture.asset(
                "assets/decoration.svg",
                fit: BoxFit.cover,
                matchTextDirection: true,
              ),
              Container(
                margin: EdgeInsets.only(top: 35),
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  "assets/decoration2.svg",
                  fit: BoxFit.cover,
                  // matchTextDirection: true,
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        height: 160,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 1),
                                  blurRadius: 3,
                                  spreadRadius: 0.1,
                                  color: Colors.black)
                            ],
                            color: Color(0xff1B1D1F)),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              TextField(
                                focusNode: _emailFocusNode,
                                controller: _emailController,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    alignLabelWithHint: true,
                                    labelText: "البريد الإلكتروني",
                                    labelStyle: TextStyle(
                                        color:
                                            Color(0xffC6C6C6).withOpacity(0.5),
                                        fontSize: 18),
                                    hintStyle: TextStyle(
                                        color: Color(0xffC6C6C6)
                                            .withOpacity(0.5))),
                              ),
                              TextField(
                                focusNode: _passwordFocusNode,
                                controller: _passwordController,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 23,
                                    letterSpacing: 1.5),
                                textInputAction: TextInputAction.done,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    alignLabelWithHint: true,
                                    labelText: "كلمة المرور",
                                    labelStyle: TextStyle(
                                        color:
                                            Color(0xffC6C6C6).withOpacity(0.5),
                                        fontSize: 18),
                                    hintStyle: TextStyle(
                                        color: Color(0xffC6C6C6)
                                            .withOpacity(0.5))),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 18, left: 10),
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width / 2 - 25),
                        child: InkWell(
                          child: Text(
                            "نسيت كلمة المرور؟",
                            style: TextStyle(
                                color: Color(0xff918CB4),
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                          onTap: () {},
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.fromLTRB(50, 25, 50, 25),
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 12),
                          width: MediaQuery.of(context).size.width - 2,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Theme.of(context).accentColor,
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 1),
                                    blurRadius: 3,
                                    spreadRadius: 0.1,
                                    color: Colors.black)
                              ]),
                          child: Text(
                            "دخول",
                            style: Theme.of(context)
                                .textTheme
                                .headline
                                .apply(color: Colors.white),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                              onTap: () {},
                              child:
                                  SvgPicture.asset("assets/twitter-icon.svg")),
                          InkWell(
                              onTap: () {},
                              child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 15),
                                  child: SvgPicture.asset(
                                      "assets/google-icon.svg"))),
                          InkWell(
                              onTap: () {},
                              child:
                                  SvgPicture.asset("assets/facebook-icon.svg")),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 60,
                right: MediaQuery.of(context).size.width / 2 - 60,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Text(
                          "تسجيل",
                          style: TextStyle(
                              color: Color(0xff8681AB),
                              fontFamily: 'Almarai',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "الشروط و الأحكام",
                        style: TextStyle(
                            color: Color(0xffFDFDFE),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
                ),
              )
            ],
          );
        }, childCount: 1))
      ]),
    );
  }
}
