import 'package:e_commerce_app_with_firebase/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/theme.dart';

class CartTotal extends StatelessWidget {
  const CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white70,
            blurRadius: 6,
            spreadRadius: 3,
            blurStyle: BlurStyle.normal
          )
        ]
      ),
      child: Row(
        children: [
          Column(
            children: [
               TextUtils(
                  text: 'Total',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Get.isDarkMode? pinkClr.withOpacity(0.7):mainColor),
              Text(
                '\$ 650.08',
                style: TextStyle(
                    color: Get.isDarkMode? Colors.black:mainColor,

                  fontSize: 20,
                    fontWeight: FontWeight.bold,
                    height: 1.5),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: SizedBox(
              height: 60,
              child: ElevatedButton.icon(

                  onPressed: () {},
                  style: ElevatedButton.styleFrom(

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Get.isDarkMode ? pinkClr : mainColor,
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    elevation: 0,
                  ),
                  icon:  Icon(Icons.shopping_cart_outlined,color:Get.isDarkMode? Colors.white:Colors.black,),
                  label: TextUtils(
                    text: 'Check out',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
