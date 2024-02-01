import 'package:ecommerce/component/main_header.dart';
import 'package:ecommerce/controller/controllers.dart';
import 'package:ecommerce/view/home/components/carousel_slider/carousel_loading.dart';
import 'package:ecommerce/view/home/components/carousel_slider/carousel_slider_view.dart';
import 'package:ecommerce/view/home/components/popular_category/popular_category_loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const MainHeader(),
          Obx(() {
            if (homeController.bannerList.isNotEmpty) {
              return CarouselSliderView(bannerList: homeController.bannerList);
            } else {
              return CarouselLoading();
            }
          }),
          Obx(() {
            if (homeController.popularCategoryList.isNotEmpty) {
              return const PopularCategoryLoading();
            } else {
              return PopularCategoryLoading();
            }
          }),
        ],
      ),
    );
  }
}
