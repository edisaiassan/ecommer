import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecom/utils/custom_theme.dart';
import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123.0,
      decoration: CustomTheme.getCardDecoration(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32.0),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: SizedBox(
                height: double.infinity,
                child: CachedNetworkImage(
                  imageUrl:
                      'https://lucafoods.es/wp-content/uploads/2020/06/bolo%C3%B1esa-vegana-sin-carne-vurger-lucafoods-500x500.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Text('Title'),
            ),
            Expanded(
              flex: 6,
              child: Text('Cantidad'),
            ),
            Expanded(
              flex: 6,
              child: Text('Precio'),
            ),
            
          ],
        ),
      ),
    );
  }
}
