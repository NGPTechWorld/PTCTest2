import 'package:flutter/material.dart';
import 'package:ptc2/core/data/data_source/const.dart';
import 'package:ptc2/core/utils/assets_manager.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/models/CartItem.dart';
import 'package:ptc2/screens/ShoppingCart/ShoppingCartScreen.dart';

class CartIcon extends StatefulWidget {
  final Color color;
  const CartIcon({super.key, required this.color});

  @override
  State<CartIcon> createState() => _CartIconState();
}

class _CartIconState extends State<CartIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ShoppingCartScreen()));
      },
      child: SizedBox(
        height: 50,
        width: 40,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Image.asset(
              AssetsManager.cartImage,
              height: 30,
              color: widget.color,
            ),
            Positioned(
              left: AppSize.s10,
              bottom: AppSize.s20,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: ColorManager.secoundColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                constraints: const BoxConstraints(
                    minWidth: AppSize.s24, maxHeight: AppSize.s24),
                child: Center(
                  child: ValueListenableBuilder<List<CartItem>>(
                    valueListenable: cartNotifier,
                    builder: (context, cart, _) {
                      return FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          cart.length.toString(),
                          style: StyleManager.body02_Semibold(
                            color: widget.color,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
