import 'package:shop_ease/consts/consts.dart';
import 'package:shop_ease/consts/lists.dart';
import 'package:shop_ease/views/profile_screen/components/details_card.dart';
import 'package:shop_ease/widgets_common/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // Edit profile button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      // TODO: Implement edit profile functionality
                    },
                    child: const Icon(Icons.edit, color: whiteColor),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Image.asset(
                      imgProfile2,
                      width: 100,
                      fit: BoxFit.cover,
                    ).box.roundedFull.clip(Clip.antiAlias).make(),
                    10.widthBox,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Dummy User".text.fontFamily(semibold).white.make(),
                          "customer@example.com".text.white.make(),
                        ],
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: whiteColor),
                      ),
                      onPressed: () {
                        // TODO: Implement logout functionality
                      },
                      child: "Logout".text.fontFamily(semibold).white.make(),
                    ),
                  ],
                ),
              ),
              20.heightBox,
              // Details Cards Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailsCard(
                      count: "00",
                      title: " in your cart",
                      width: context.screenWidth / 3.4),
                  detailsCard(
                      count: "32",
                      title: " in your wishlist",
                      width: context.screenWidth / 3.4),
                  detailsCard(
                      count: "675",
                      title: " in your orders",
                      width: context.screenWidth / 3.4),
                ],
              ),
              20.heightBox,
              // Buttons Section (Scrollable)
              Expanded(
                child: ListView.separated(
                  itemCount: profileButtonsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Image.asset(
                        profileButtonsIcon[index],
                        width: 22,
                      ),
                      title:
                      profileButtonsList[index].text.fontFamily(semibold).make(),
                      onTap: () {
                        // TODO: Implement profile button functionality
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(color: lightGrey);
                  },
                )
                    .box
                    .white
                    .rounded
                    .margin(const EdgeInsets.all(12))
                    .padding(const EdgeInsets.symmetric(horizontal: 16))
                    .shadowSm
                    .make(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
