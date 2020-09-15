import 'package:flutter/material.dart';
import 'package:shopping_design/widgets/cart/cart-product-list.widget.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              child: CartProductList(),
            ),
          ),
          Container(
            color: Colors.black12,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TOTAL',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '\$4250',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  margin: EdgeInsets.only(right: 20),
                  child: FlatButton(
                    child: Text(
                      'Checkout',
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget productList() {
  return Container(
    child: ListView(
      children: [
        // productItem(context, 'BeoPlay Speaker', '755', 'assets/product-1.png'),
        // productItem(
        //     context, 'Leather Wristwatch', '450', 'assets/product-2.png'),
        // productItem(
        //     context, 'Smart Bluetooth Speaker', '900', 'assets/product-3.png'),
        // productItem(context, 'Smart Luggage', '100', 'assets/product-4.png'),
        // productItem(context, 'Smartphone Case', '99', 'assets/product-5.png'),
        // productItem(context, 'Speakes Stand', '49', 'assets/product-6.png'),
        // productItem(context, 'AirPods', '199', 'assets/product-7.png'),
        productItem(),
        productItem(),
        productItem(),
        productItem(),
        productItem(),
        productItem(),
        productItem(),
      ],
    ),
  );
}

Widget productItem() {
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
            'assets/product-1.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Título do Produto'),
              Text(
                '\$200',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
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
