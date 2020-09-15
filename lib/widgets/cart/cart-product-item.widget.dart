import 'package:flutter/material.dart';

class CartProductItem extends StatelessWidget {
  final String image;
  final String title;
  final double price;

  const CartProductItem(
    this.title,
    this.price,
    this.image,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.all(5),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.all(10),
            child: Image.asset(
              image,
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(
                  '\$ $price',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 30,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          alignment: Alignment.center,
                          child: FlatButton(
                            onPressed: () {},
                            child: Text('+'),
                          ),
                        ),
                        Container(
                          width: 40,
                          alignment: Alignment.center,
                          child: Text('1'),
                        ),
                        Container(
                          width: 40,
                          alignment: Alignment.center,
                          child: FlatButton(
                            onPressed: () {},
                            child: Text('-'),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
