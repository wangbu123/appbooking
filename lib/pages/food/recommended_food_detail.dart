import 'package:app_booking/utils/colors.dart';
import 'package:app_booking/utils/dimensions.dart';
import 'package:app_booking/widgets/app_icon.dart';
import 'package:app_booking/widgets/big_text.dart';

import 'package:app_booking/widgets/exandable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class RecommenededFoodDetail extends StatelessWidget {
      const  RecommenededFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        body:   CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 70,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.clear),
                  AppIcon(icon: Icons.shopping_cart_checkout_outlined)
                ],
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(20), 
                child: Container(   
                  
                  child: Center(child: BigText(size:Dimensions.font26, text: "Viet Nam") ),
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 5,bottom: 10),
                  decoration: BoxDecoration (
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20)
                    )
                  ),
                )
              ),
              pinned: true,
              backgroundColor: AppColors.yellowColor,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/image/room_1.jpg",
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                  
                  ),           
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    child: ExpandableTextWidget(text: "dasjodfasdasdasdasdasd"),
                    margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                  )
                ],
              )
            )
          ],
        ),
        bottomNavigationBar: Column(
          mainAxisSize:   MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20*2.5,
                right: Dimensions.width20*2.5,
                top: Dimensions.height10,
                bottom:  Dimensions.height10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,   
                    backroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                  BigText(text: "\$12. "+" X "+" 0 ", color: AppColors.mainBlackColor,size: Dimensions.font26,),  
                 AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,   
                    backroundColor: AppColors.mainColor,
                    icon: Icons.add),
                ],
              ),
            ),
            Container(
        height: 120,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white),
              child: Icon(
                Icons.favorite,
                color: AppColors.mainColor,

              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              child: BigText(
                text: "450k | Add to cart",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor),
            )
          ],
        ),
      ),
          ],
        ),
    );
  }
}