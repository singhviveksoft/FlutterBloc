import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test/product/presentation/bloc/cartBloc.dart';
import 'package:flutter_bloc_test/product/presentation/bloc/cartState.dart';
import 'package:flutter_bloc_test/product/presentation/bloc/productEvent.dart';

class ProductList extends StatefulWidget {
  ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final List<String> _productList = [
    "Product Item 1",
    "Product Item 2",
    "Product Item 3",
    "Product Item 4",
    "Product Item 5",
    "Product Item 6",
    "Product Item 7",
  ];

  @override
  Widget build(BuildContext context) {
    int iteamCount = 0;
    return Scaffold(
      appBar: AppBar(title: Text('Product List'), actions: [
        BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            iteamCount = state.count;
            return Stack(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
                Text('$iteamCount'),
              ],
            );
          },
        )
      ]),
      body: _product(iteamCount),
    );
  }

  Widget _product(int addIteam) {
    return ListView.builder(
        itemCount: _productList.length,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              ListTile(
                trailing: GestureDetector(
                    onTap: () {
                      BlocProvider.of<CartBloc>(context)
                          .add(AddProductEvent(addIteamCount: ++addIteam));
                    },
                    child: Icon(Icons.add_shopping_cart)),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                title: Text(_productList[index]),
              ),
              Divider(
                color: Colors.black,
              ),
            ],
          );
        }));
  }
}
