import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double price;

  const ProductPage(
      {Key key,
      @required this.image,
      @required this.title,
      @required this.description,
      @required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolld) {
        return [
          SliverAppBar(
            backgroundColor: Colors.white.withOpacity(0),
            elevation: 0.0,
            expandedHeight: 500,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Hero(
                tag: image,
                child: Image.asset(
                  image,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          )
        ];
      },
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              right: 10,
              left: 10,
            ),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              description,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Details',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            ),
          ),
        ],
      ),
    ));
  }
}
