import 'package:flutter/material.dart';
import 'package:ptc2/core/data/data_source/const.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/string_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/models/item.dart';
import 'package:ptc2/screens/ShoppingCart/ShoppingCartScreen.dart';
import 'package:ptc2/widgets/ScaffoldMessengerApp.dart';

class ButtonProduct extends StatelessWidget {
  final Item item;
  const ButtonProduct({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          onPressed: () {
            myCart.addItemToCart(item);
            ScaffoldMessengerApp.showSnackbar(
                context, StringManager.addItemCartText);
          },
          height: AppSizeScreen.screenHeight / 14,
          minWidth: AppSizeScreen.screenWidth / 2.8,
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: ColorManager.firstColor),
            borderRadius: BorderRadius.circular(AppSize.s20),
          ),
          child: Text(
            StringManager.addtocartText,
            style: StyleManager.button1(color: ColorManager.firstColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: AppPadding.p10),
          child: MaterialButton(
            color: ColorManager.firstColor,
            onPressed: () {
              myCart.addItemToCart(item);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ShoppingCartScreen()));
            },
            height: AppSizeScreen.screenHeight / 14,
            minWidth: AppSizeScreen.screenWidth / 2.4,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s20),
            ),
            child: Text(
              StringManager.buyNowText,
              style: StyleManager.button1(color: ColorManager.primary1Color),
            ),
          ),
        ),
      ],
    );
  }
}
