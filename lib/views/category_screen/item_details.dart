import 'package:shop_ease/consts/consts.dart';
import 'package:shop_ease/widgets_common/our_button.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
        ],
      ),
      body: Column(
          children: [
      Expanded(
      child: Padding(
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Swiper section
            VxSwiper.builder(
              autoPlay: true,
              height: 350,
              itemCount: 3,
              aspectRatio: 16 / 9,
              itemBuilder: (context, index) {
                return Image.asset(
                  imgFc5,
                  width: double.infinity,
                  fit: BoxFit.cover,
                );
              },
            ),
            10.heightBox,

            // Title and details section
            title!.text.size(16).color(darkFontGrey).fontFamily(semibold).make(),
            10.heightBox,

            // Rating
            VxRating(
              onRatingUpdate: (value) {},
              normalColor: textfieldGrey,
              selectionColor: golden,
              count: 5,
              size: 25,
              stepInt: true,
            ),
            10.heightBox,

            // Price
            "\$30,300".text.color(redColor).fontFamily(bold).size(18).make(),
            10.heightBox,

            // Seller info section
            Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Seller".text.white.fontFamily(semibold).make(),
                      5.heightBox,
                      "In House Brands"
                          .text
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .make(),
                    ],
                  ),
                ),
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.message_rounded,
                    color: darkFontGrey,
                  ),
                ),
              ],
            ).box
                .height(60)
                .padding(const EdgeInsets.symmetric(horizontal: 16))
                .color(textfieldGrey)
                .make(),

            // Color selection section
            20.heightBox,
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: "Color:".text.color(textfieldGrey).make(),
                    ),
                    Row(
                      children: List.generate(
                        3,
                            (index) => VxBox()
                            .size(40, 40)
                            .roundedFull
                            .color(Vx.randomPrimaryColor)
                            .margin(const EdgeInsets.symmetric(horizontal: 6))
                            .make(),
                      ),
                    ).box.padding(const EdgeInsets.all(8)).make(),
                  ],
                ).box.white.shadowSm.make(),

                10.heightBox,

                // Quantity row
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: "Quantity:".text.color(textfieldGrey).make(),
                    ),
                    Row(
                      children: [
                        IconButton(onPressed: () {}, icon: const Icon(Icons.remove)),
                        "0".text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                        10.widthBox,
                        "(0 available)".text.color(textfieldGrey).make(),
                      ],
                    ),
                  ],
                ).box.white.shadowSm.padding(const EdgeInsets.all(8)).make(),
              ],
            ),
          ],
        ),
      ),
    ),
    ),
    SizedBox(
    width: double.infinity,
    height: 60,
    child: ourButton(() {}, redColor, whiteColor, "Add to cart"),
    ),
    ],
    ),
    );
  }
}
