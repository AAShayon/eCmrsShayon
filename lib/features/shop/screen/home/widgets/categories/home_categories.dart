import 'package:ecmrsdesignshayon/common/widgets/image_text/vertical_image_text.dart';
import 'package:ecmrsdesignshayon/features/shop/screen/sub_category/sub_categories.dart';
import 'package:ecmrsdesignshayon/utils/constant/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return  VerticalImageText(image: AppImages.shoeIcon, title: 'shoe',onTap: ()=>Get.to(()=>const ProductSubCategories()),);
          }),
    );
  }
}