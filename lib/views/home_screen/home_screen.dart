import 'package:shop_ease/consts/consts.dart';
import 'package:shop_ease/consts/lists.dart';
import 'package:shop_ease/views/home_screen/components/featured_button.dart';
import 'package:shop_ease/widgets_common/home_buttons.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child:Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration:const InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText:searchanything,
                  hintStyle: TextStyle(color: textfieldGrey),
                ),
              ),
            ),
            10.heightBox,
            Expanded(child:
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
              children: [
                //swipers brands
                VxSwiper.builder(
                    aspectRatio:16/9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: slidersList.length,
                    itemBuilder: (context,index) {
                      return Image.asset(
                        slidersList[index],
                        fit: BoxFit.fill,
                      ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal:8 )).make();

                    }),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:List.generate(2, (index)=>homeButtons(
                      height: context.screenHeight*0.15,
                      width: context.screenWidth/2.5,
                      icon: index ==0 ? icTodaysDeal :icFlashDeal,
                      title: index == 0 ? todayDeal : flashsale
                  )),
                ),
                // second slider
                10.heightBox,
                VxSwiper.builder(
                    aspectRatio:16/9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: secondSlidersList.length,
                    itemBuilder: (context,index) {
                      return Image.asset(
                        secondSlidersList[index],
                        fit: BoxFit.fill,
                      ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal:8 )).make();
                    }),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(3, (index)=> homeButtons(
                    height: context.screenHeight*0.15,
                    width: context.screenWidth/3.5,
                    icon: index==0 ? icTopCategories : index ==1 ?icBrands : icTopSeller,
                    title: index ==0 ?icBrands:topSellers,
                  )),
                ),
                20.heightBox,
                Align(
                  alignment: Alignment.centerLeft,
                  child:  featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make(),
                ),
                20.heightBox,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
               child: Row(
                  children: List.generate(3, (index)=>Column(
                    children: [
                      featuredButton(icon: featuredImages1[index],title: freaturedTitles1[index]),
                    10.heightBox,
                      featuredButton(icon: featuredImages2[index],title: freaturedTitles2[index]),

                    ],
                  )),
                ),)
              ],
            ),),)


          ],
        )
      ),
    );
  }
}
