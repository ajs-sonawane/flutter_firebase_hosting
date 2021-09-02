import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductItemCard extends StatelessWidget {
  final String? networkIMGurl;
  final String? prodName;
  final String? calories;
  final String? amount;

  const ProductItemCard(
      {Key? key, this.networkIMGurl, this.prodName, this.calories, this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // color: Colors.grey,
      height: size.height*0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: size.height * 0.2,
                width: size.width * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.yellow,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(networkIMGurl!),
                  ),
                ),
              ),
              Positioned(
                bottom: 15,
                right: 15,
                child: Container(
                  // height: 25,
                  // width: 50,
                  padding: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: Colors.grey[300],
                  ),
                  child: Center(
                    child: Icon(Icons.add, color: Colors.black54, size: 18.0),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            width: size.width * 0.2,
            // color: Colors.red,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      prodName!,
                      style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: size.width * 0.02),
                    ),
                    Text(
                      "$calories calories",
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: size.width * 0.01),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  "₹",
                  style: TextStyle(
                      fontWeight: FontWeight.w900, fontSize: size.width * 0.01),
                ),
                Text(
                  amount!,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
