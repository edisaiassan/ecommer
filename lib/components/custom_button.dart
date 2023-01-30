import 'package:ecom/components/loader.dart';
import 'package:ecom/utils/custom_theme.dart';
import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String text;
  final void Function() onPress;
  final bool loading;

  Custombutton({
    super.key,
    required this.text,
    required this.onPress,
    required this.loading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32.0),
        color: CustomTheme.yellow,
        boxShadow: CustomTheme.cardShadow,
      ),
      child: MaterialButton(
        onPressed: loading ? null : onPress,
        child: loading
            ? Loader()
            : Text(
                text,
                style: Theme.of(context).textTheme.titleSmall,
              ),
      ),
    );
  }
}
