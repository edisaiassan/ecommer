import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecom/utils/custom_theme.dart';
import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  int index;
  void Function() onPress;

  GridCard({
    super.key,
    required this.index,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: index % 2 == 0
          ? const EdgeInsets.only(left: 22)
          : const EdgeInsets.only(left: 22),
      decoration: CustomTheme.getCardDecoration(),
      child: InkWell(
        onTap: onPress,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32.0),
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: SizedBox(
                  width: double.infinity,
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://lucafoods.es/wp-content/uploads/2020/06/bolo%C3%B1esa-vegana-sin-carne-vurger-lucafoods-500x500.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          'Title',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      Text(
                        'Price',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
