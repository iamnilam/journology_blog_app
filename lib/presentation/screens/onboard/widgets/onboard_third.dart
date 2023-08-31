part of 'widget_imports.dart';

class OnBoardFirst extends StatelessWidget {
  const OnBoardFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/onboard1.png"),
        "Discover, engage and read the latest articles oras well as share your own thoughts and ideas with the community"
            .text
            .size(15)
            .align(TextAlign.center)
            .fontWeight(FontWeight.w500)
            .make(),

      ],
    );
  }
}
