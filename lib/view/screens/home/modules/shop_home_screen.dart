import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/controller/auth_controller.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/view/screens/flash_sale/flash_sale_view.dart';
import 'package:sixam_mart/view/screens/home/widget/bad_weather_widget.dart';
import 'package:sixam_mart/view/screens/home/widget/grocery/basic_medicine_nearby_view.dart';
import 'package:sixam_mart/view/screens/home/widget/grocery/just_for_you_view.dart';
import 'package:sixam_mart/view/screens/home/widget/grocery/most_popular_item_view.dart';
import 'package:sixam_mart/view/screens/home/widget/grocery/special_offer_view.dart';
import 'package:sixam_mart/view/screens/home/widget/grocery/visit_again_view.dart';
import 'package:sixam_mart/view/screens/home/widget/banner_view.dart';
import 'package:sixam_mart/view/screens/home/widget/grocery/category_view.dart';

class ShopHomeScreen extends StatelessWidget {
  const ShopHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isLoggedIn = Get.find<AuthController>().isLoggedIn();
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.shopModuleBannerBg),
            fit: BoxFit.cover,
          ),
        ),
        child: const Column(
          children: [
            BadWeatherWidget(),
            BannerView(isFeatured: false),
            SizedBox(height: 12),
          ],
        ),
      ),
      const CategoryView(),
      const FlashSaleView(),
      const MostPopularItemView(isFood: false, isShop: true),
      const SpecialOfferView(isFood: false, isShop: true),
      isLoggedIn ? const VisitAgainView() : const SizedBox(),
      const ProductWithCategoriesView(fromShop: true),
      const JustForYouView(),
    ]);
  }
}
