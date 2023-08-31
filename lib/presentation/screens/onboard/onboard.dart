part of 'onboard_imports.dart';

@RoutePage()
class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  OnBoardViewModel onBoardViewModel = OnBoardViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              MyAssets.mainLogo,
              color: MyColors.primaryColor,
              height: 42.h,
              width: 139.w,
            ),
            63.heightBox,
            PageView(
              controller: onBoardViewModel.pageController,
              children: const [
                OnBoardFirst(),
                OnBoardSecond(),
                OnBoardThird(),
              ],
            ).expand(),
            61.h.heightBox,
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.primaryColor,
                    minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11.r))),
                child: "Get Started"
                    .text
                    .color(Colors.white)
                    .size(16.sp)
                    .fontWeight(FontWeight.w700)
                    .make()),
            61.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Skip"
                    .text
                    .color(MyColors.primaryColor)
                    .size(16.sp)
                    .fontWeight(FontWeight.w700)
                    .make(),
                SmoothPageIndicator(
                  controller: onBoardViewModel.pageController,
                  count: 3,
                  effect: const WormEffect(
                      activeDotColor: MyColors.primaryColor,
                      dotHeight: 8.0,
                      dotWidth: 8.0),
                  onDotClicked: ((index) {}),
                ),
                "Next"
                    .text
                    .color(MyColors.primaryColor)
                    .size(16.sp)
                    .fontWeight(FontWeight.w700)
                    .make()
              ],
            )
          ],
        ),
      ))),
    );
  }
}
