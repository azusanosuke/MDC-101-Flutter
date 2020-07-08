import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

import 'model/products_repository.dart';
// ignore: directives_ordering
import 'package:Shrine/model/product.dart';

import 'supplemental/asymmetric_view.dart';

class HomePage extends StatelessWidget {
  // Make a collection of cards (102)
//  List<Card> _buildGridCards(BuildContext context) {
//    List<Product> products;
//    products = ProductsRepository.loadProducts(Category.all);
//
//    if (products == null || products.isEmpty) {
//      return const <Card>[];
//    }
//
//    // ignore: omit_local_variable_types
//    final ThemeData theme = Theme.of(context);
//    // ignore: omit_local_variable_types
//    final NumberFormat formatter = NumberFormat.simpleCurrency(
//        locale: Localizations.localeOf(context).toString());
//
//    return products.map((product) {
//      return Card(
//        clipBehavior: Clip.antiAlias,
//        // Adjust card heights (103)
//        elevation: 0,
//        child: Column(
//          // Center items on the card (103)
//          crossAxisAlignment: CrossAxisAlignment.center,
//          children: <Widget>[
//            AspectRatio(
//              aspectRatio: 18 / 11,
//              child: Image.asset(
//                product.assetName,
//                package: product.assetPackage,
//                fit: BoxFit.fitWidth,
//              ),
//            ),
//            Expanded(
//              child: Padding(
//                padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
//                child: Column(
//                  // Align labels to the bottom and center (103)
//                  mainAxisAlignment: MainAxisAlignment.end,
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  // Change innermost Column (103)
//                  children: <Widget>[
//                    // TODO: Handle overflowing labels (103)
//                    Text(
//                      product == null ? '' : product.name,
//                      style: theme.textTheme.button,
//                      softWrap: false,
//                      overflow: TextOverflow.ellipsis,
//                      maxLines: 1,
//                    ),
//                    const SizedBox(height: 4),
//                    Text(
//                      product == null ? '' : formatter.format(product.price),
//                      style: theme.textTheme.caption,
//                    ),
//                  ],
//                ),
//              ),
//            ),
//          ],
//        ),
//      );
//    }).toList();
//  }

  // TODO: Add a variable for Category (104)
  @override
  Widget build(BuildContext context) {
    // TODO: Return an AsymmetricView (104)
    // TODO: Pass Category variable to AsymmetricView (104)
    return Scaffold(
      // Add app bar (102)
      appBar: AppBar(
        // Add buttons and title (102)
        brightness: Brightness.light,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('Menu button');
          },
        ),
        title: const Text('SHRINE'),
        // Add trailing buttons (102)
        actions: <Widget>[
          IconButton(
            onPressed: () {
              print('Search button');
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            icon: Icon(Icons.tune),
            onPressed: () {
              print('Filter button');
            },
          ),
        ],
      ),
      // ignore: lines_longer_than_80_chars
      body: AsymmetricView(
          products: ProductsRepository.loadProducts(Category.all)
      ),
    );
  }
}
