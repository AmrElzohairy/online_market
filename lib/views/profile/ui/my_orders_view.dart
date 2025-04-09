import 'package:flutter/material.dart';
import 'package:online_market/core/widgets/build_custom_app_bar.dart';
import 'package:online_market/views/home/ui/widgets/products_list.dart';

class MyOrdersView extends StatelessWidget {
  const MyOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(context: context, title: "My Orders"),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: ProductsList(
          shrinkWrap: false,
          physics: BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
