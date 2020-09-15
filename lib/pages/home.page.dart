import 'package:flutter/material.dart';
import 'package:shopping_design/widgets/category/category-list.widget.dart';
import 'package:shopping_design/widgets/products/product-list.widget.dart';
import 'package:shopping_design/widgets/seach-box.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 60,
            ),
            SearchBox(),
            SizedBox(
              height: 30,
            ),
            Text('Categories', style: Theme.of(context).textTheme.headline),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              child: CategoryList(),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Selling',
                  style: Theme.of(context).textTheme.headline,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text('See all'),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 320,
              child: ProductList(
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
