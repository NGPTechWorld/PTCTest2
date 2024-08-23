import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ptc2/core/cart/cart_controller.dart';
import 'package:ptc2/core/utils/assets_manager.dart';
import 'package:ptc2/core/utils/color_manager.dart';
import 'package:ptc2/core/utils/style_manager.dart';
import 'package:ptc2/core/utils/values_manager.dart';
import 'package:ptc2/screens/ShoppingCart/ShoppingCartScreen.dart';

class CartIcon extends StatefulWidget {
  final Color color;
  const CartIcon({super.key, required this.color});

  @override
  State<CartIcon> createState() => _CartIconState();
}

class _CartIconState extends State<CartIcon> {
  CartController cartController = Get.find();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(const ShoppingCartScreen());
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
            GetX<CartController>(
              builder: (controller) => cartController.current.value == 0
                  ? Container()
                  : Positioned(
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
                          child: Text(
                            cartController.current.value.toString(),
                            style: StyleManager.body02_Semibold(
                              color: widget.color,
                            ),
                          ),
                        ),
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
