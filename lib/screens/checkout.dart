import 'package:ecom/components/custom_button.dart';
import 'package:ecom/components/list_card.dart';
import 'package:ecom/utils/custom_theme.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final carts = ['1', '2'];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: carts.length,
            itemBuilder: (context, index) {
              return ListCard();
            },
          ),
          priceFooter(),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Custombutton(text: 'CheckOut', onPress: () {}, loading: false),
          ),
        ],
      ),
    );
  }

  priceFooter() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            height: 2.0,
            color: CustomTheme.grey,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              children: [
                Text('Total'),
                Spacer(),
                Text('Price'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
