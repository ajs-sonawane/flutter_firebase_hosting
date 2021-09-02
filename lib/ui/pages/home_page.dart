import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_hosting/ui/widgets/app_widgets.dart';
import 'package:flutter_firebase_hosting/ui/widgets/product_item_card.dart';
import 'package:flutter_firebase_hosting/ui/widgets/topbar_menu_item_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<String> _menu = ["All Snacks", "Bars", "Cups", "Dairy"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: _bodyContent(context),
    );
  }

  Widget _bodyContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [topBar(context), content(context)],
      ),
    );
  }

  Widget topBar(BuildContext context) {
    return Row(
      children: [
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
        TopBarMenuItemWidget(text: "All Snacks"),
        Spacer(),
        TopBarMenuItemWidget(text: "Bars"),
        Spacer(),
        TopBarMenuItemWidget(text: "Cups"),
        Spacer(),
        TopBarMenuItemWidget(text: "Diary"),
      ],
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(),
                Container(
                  height: size.height*0.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "healthy",
                        style: TextStyle(
                            height: size.height * 0.0012,
                            // fontFamily: 'Rubik',
                            fontWeight: FontWeight.bold,
                            fontSize: size.width * 0.1),
                      ),
                      Text("Be healthy on the go.",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: size.width * 0.03)),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ProductItemCard(
                      prodName: "Granola Bar",
                      amount: "70",
                      calories: "50",
                      networkIMGurl:
                          "https://www.nicepng.com/png/detail/82-822232_nith-river-milling-supplies-food-manufacturers-and-cereal.png",
                    ),
                    ProductItemCard(
                      prodName: "Roasted Nuts",
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
                        prodName: "Fresh Peaches",
                        amount: "90",
                        calories: "50",
                        networkIMGurl:
                            "https://www.nicepng.com/png/detail/82-822232_nith-river-milling-supplies-food-manufacturers-and-cereal.png",
                      ),
                      ProductItemCard(
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
                      prodName: "Strawberries",
                      amount: "90",
                      calories: "50",
                      networkIMGurl:
                          "https://www.nicepng.com/png/detail/82-822232_nith-river-milling-supplies-food-manufacturers-and-cereal.png",
                    ),
                    ProductItemCard(
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
                          backgroundColor: Colors.amberAccent,
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
