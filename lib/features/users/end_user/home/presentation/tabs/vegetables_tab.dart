import 'package:flutter/material.dart';
import '../../../../../../core/utils/constants.dart';
import '../../../../../../core/utils/size_config.dart';
import '../../../../../../core/widgets/custom_caption.dart';
import '../../../../../../core/widgets/horizontal_scroll.dart';
import '../../../../../../core/widgets/item_model.dart';
import '../../../../../../core/widgets/space_widget.dart';
import '../product/functions/get_list_of_products_by_description.dart';

class VegetablesTab extends StatelessWidget {
  final List<ItemModel> products;

  const VegetablesTab(this.products, {super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemModel> mixedVegetablesPack =
        getListByDescription(products, kMixedVegetablesPack);
    List<ItemModel> organicVegetables =
        getListByDescription(products, kOrganicVegetables);
    List<ItemModel> alliumVegetables =
        getListByDescription(products, kAlliumVegetabels);
    List<ItemModel> rootVegetables =
        getListByDescription(products, kRootVegetabels);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomCaption(
              mainCaption: "Organic Vegetables",
              sale: "(20% Off)",
              subCaption: "Pick up from organic farms",
            ),
            Container(
              height: SizeConfig.defultSize! * 26,
              color: kwc,
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    HorizontalScroll(items: organicVegetables[index]),
                itemCount: organicVegetables.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const VerticalSpace(1),
            const CustomCaption(
              mainCaption: "Mixed Vegetables Pack",
              sale: "(10% Off)",
              subCaption: "Vegetable mix fresh pack",
            ),
            Container(
              height: SizeConfig.defultSize! * 26,
              color: kwc,
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    HorizontalScroll(items: mixedVegetablesPack[index]),
                itemCount: mixedVegetablesPack.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const VerticalSpace(1),
            const CustomCaption(
              mainCaption: "Allium Vegetables",
              sale: "(20% Off)",
              subCaption: "Fresh Allium Vegetables",
            ),
            Container(
              height: SizeConfig.defultSize! * 26,
              color: kwc,
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    HorizontalScroll(items: alliumVegetables[index]),
                itemCount: alliumVegetables.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const VerticalSpace(1),
            const CustomCaption(
              mainCaption: "Root Vegetables",
              sale: "(5% Off)",
              subCaption: "Fresh Root Vegetables",
            ),
            Container(
              height: SizeConfig.defultSize! * 26,
              color: kwc,
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    HorizontalScroll(items: rootVegetables[index]),
                itemCount: rootVegetables.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const VerticalSpace(1),
          ],
        ),
      ),
    );
  }
}
