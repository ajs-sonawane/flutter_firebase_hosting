import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_hosting/ui/pages/bars_screen.dart';
import 'package:flutter_firebase_hosting/ui/pages/cups_screen.dart';
import 'package:flutter_firebase_hosting/ui/pages/dairy_screen.dart';
import 'package:flutter_firebase_hosting/ui/pages/snacks_screen.dart';
import 'package:flutter_firebase_hosting/ui/widgets/app_widgets.dart';
import 'package:flutter_firebase_hosting/ui/widgets/gif_renderer_widget.dart';
import 'package:flutter_firebase_hosting/ui/widgets/product_item_card.dart';
import 'package:flutter_firebase_hosting/ui/widgets/topbar_menu_item_widget.dart';
import 'package:flutter_firebase_hosting/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<String> _menu = ["All Snacks", "Bars", "Cups", "Dairy"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primary,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return WebLayout();
          } else {
            return MobileLayout();
          }
        },
      ),
    );
  }
}

class WebLayout extends StatelessWidget {
  const WebLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _bodyContent(context);
  }

  Widget _bodyContent(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: size.height),
        child: Column(
          children: [topBar(context), content(context)],
        ),
      ),
    );
  }

  Widget topBar(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 20.0),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 6.0,horizontal: 4.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.black)),
            child: Text("wtuExports",
                style: TextStyle(
                    // height: size.height * 0.001,
                    // fontFamily: 'Rubik',
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.013)),
          ),
          SizedBox(width: 12.0),
          Expanded(
            flex: 14,
            child: TextInputFormField(
              height: 45.0,
              cursorColor: Colors.black,
              autofocus: false,
              readOnly: false,
              obscureText: false,
              color: Colors.white,
              hintText: "Search Entries",
              hintTextStyle: TextStyle(fontSize: 12.0),
              prefixIcon: Icon(
                CupertinoIcons.search,
                color: Colors.black26,
                size: 20.0,
              ),
              suffixIcon: Container(
                width: 25.0,
                margin: EdgeInsets.all(10.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8.0)),
                child: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
            ),
          ),
          Spacer(),
          TopBarMenuItemWidget(text: "About Us"),
          Spacer(),
          TopBarMenuItemWidget(text: "Pricing"),
          Spacer(),
          TopBarMenuItemWidget(text: "Resources"),
          Spacer(),
          TopBarMenuItemWidget(text: "Support"),
        ],
      ),
    );
  }

  Widget content(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.85,
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GIFRendererWidget(size: size.width * 0.18,),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Text(
                    //   "healthy",
                    //   style: TextStyle(
                    //       height: size.height * 0.0012,
                    //       // fontFamily: 'Rubik',
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: size.width * 0.1),
                    // ),
                    Text("Single platform for \nyour global supply \nchain.",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Rubik',
                            fontSize: size.width * 0.026)),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ProductItemCard(
                        layout: "web",
                        prodName: "Fresh Peaches",
                        amount: "90",
                        calories: "50",
                        networkIMGurl:
                            "https://www.nicepng.com/png/detail/82-822232_nith-river-milling-supplies-food-manufacturers-and-cereal.png",
                      ),
                      ProductItemCard(
                        layout: "web",
                        prodName: "Granola Bar",
                        amount: "50",
                        calories: "50",
                        networkIMGurl:
                            "https://www.pngkit.com/png/detail/251-2516634_w450-roasted-cashew-nuts-cashew.png",
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ProductItemCard(
                      layout: "web",
                      prodName: "Strawberries",
                      amount: "90",
                      calories: "50",
                      networkIMGurl:
                          "https://www.nicepng.com/png/detail/82-822232_nith-river-milling-supplies-food-manufacturers-and-cereal.png",
                    ),
                    ProductItemCard(
                      layout: "web",
                      prodName: "Fruit Yogurt",
                      amount: "50",
                      calories: "14",
                      networkIMGurl:
                          "https://www.pngkit.com/png/detail/251-2516634_w450-roasted-cashew-nuts-cashew.png",
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Spacer(),
          Column(
            children: [
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.linear_scale)),
              IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
              IconButton(onPressed: () {}, icon: Icon(Icons.flutter_dash)),
              Spacer(),
              Container(
                // color: Colors.grey,
                height: 50,
                width: 50,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Center(
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: IconButton(
                            iconSize: 20.0,
                            onPressed: () {},
                            icon: Icon(Icons.add_shopping_cart_rounded)),
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: 8.0,
                          backgroundColor:MyColors.primary,
                        ),
                        CircleAvatar(
                          radius: 4.0,
                          backgroundColor: Colors.red,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  MobileLayout({Key? key}) : super(key: key);
  var scrollController = ScrollController();
  var globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return _bodyContent(context);
  }

  Widget _bodyContent(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      endDrawer: _rhDrawer(context),
      body: SingleChildScrollView(
        controller: scrollController,
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: size.height),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    searchBar(context),
                    content(context),
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: size.height * 0.25,
                    color: Color(0xff263238),
                  ),
                  Container(
                    height: size.height * 0.18,
                    color: Color(0xff455a64),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget searchBar(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextInputFormField(
            height: 45.0,
            cursorColor: Colors.black,
            autofocus: false,
            readOnly: false,
            obscureText: false,
            color: Colors.white,
            hintText: "Search Entries",
            hintTextStyle: TextStyle(fontSize: 12.0),
            prefixIcon: Icon(
              CupertinoIcons.search,
              color: Colors.black26,
              size: 20.0,
            ),
            suffixIcon: Container(
              width: 25.0,
              margin: EdgeInsets.all(10.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8.0)),
              child: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Colors.white,
                size: 20.0,
              ),
            ),
            contentPadding:
                EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
          ),
        ),
        SizedBox(width: 8.0),
        _cartBtn(context)
        // IconButton(
        //     onPressed: () {
        //
        //     },
        //     icon: Icon(CupertinoIcons.list_dash))
      ],
    );
  }

  Widget content(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      controller: scrollController,
      shrinkWrap: true,
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          expandedHeight: size.height * 0.5,
          pinned: false,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              // height: size.height * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GIFRendererWidget(size: size.width * 0.4),
                      SizedBox(width: 12.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 6.0,horizontal: 4.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: Colors.black)),
                            child: Text("wtuExports",
                                style: TextStyle(
                                  // height: size.height * 0.001,
                                  // fontFamily: 'Rubik',
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.018)),
                          ),
                          Text("Single platform for \nyour global supply \nchain.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Rubik',
                                  fontSize: size.width * 0.05)),
                        ],
                      ),
                    ],
                  ),
                  // Text(
                  //   "healthy",
                  //   style: TextStyle(
                  //       height: size.height * 0.0012,
                  //       // fontFamily: 'Rubik',
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: size.width * 0.11),
                  // ),
                  // Text("Be healthy on the go.",
                  //     style: TextStyle(
                  //         fontWeight: FontWeight.w900,
                  //         fontSize: size.width * 0.032)),
                ],
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            ProductItemCard(
              layout: "mobile",
              prodName: "Fresh Peaches",
              amount: "90",
              calories: "50",
              networkIMGurl:
                  "https://www.nicepng.com/png/detail/82-822232_nith-river-milling-supplies-food-manufacturers-and-cereal.png",
            ),
            ProductItemCard(
              layout: "mobile",
              prodName: "Granola Bar",
              amount: "50",
              calories: "50",
              networkIMGurl:
                  "https://www.pngkit.com/png/detail/251-2516634_w450-roasted-cashew-nuts-cashew.png",
            ),
            ProductItemCard(
              layout: "mobile",
              prodName: "Fresh Peaches",
              amount: "90",
              calories: "50",
              networkIMGurl:
                  "https://www.nicepng.com/png/detail/82-822232_nith-river-milling-supplies-food-manufacturers-and-cereal.png",
            ),
            ProductItemCard(
              layout: "mobile",
              prodName: "Granola Bar",
              amount: "50",
              calories: "50",
              networkIMGurl:
                  "https://www.pngkit.com/png/detail/251-2516634_w450-roasted-cashew-nuts-cashew.png",
            ),
            ProductItemCard(
              layout: "mobile",
              prodName: "Strawberries",
              amount: "90",
              calories: "50",
              networkIMGurl:
                  "https://www.nicepng.com/png/detail/82-822232_nith-river-milling-supplies-food-manufacturers-and-cereal.png",
            ),
            ProductItemCard(
              layout: "mobile",
              prodName: "Fruit Yogurt",
              amount: "50",
              calories: "14",
              networkIMGurl:
                  "https://www.pngkit.com/png/detail/251-2516634_w450-roasted-cashew-nuts-cashew.png",
            ),
          ]),
        ),
      ],
    );
  }

  Widget _rhDrawer(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.6,
        child: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                title: Text("All Snacks"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Bars"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Cups"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Dairy"),
                onTap: () {},
              ),
            ],
          ),
        ));
  }

  Widget _cartBtn(BuildContext context) {
    return Container(
      // color: Colors.grey,
      height: 50,
      width: 50,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Center(
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0)),
              child: IconButton(
                  iconSize: 20.0,
                  onPressed: () {},
                  icon: Icon(Icons.add_shopping_cart_rounded)),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 8.0,
                backgroundColor: MyColors.primary,
              ),
              CircleAvatar(
                radius: 4.0,
                backgroundColor: Colors.red,
              ),
            ],
          )
        ],
      ),
    );
  }
}
