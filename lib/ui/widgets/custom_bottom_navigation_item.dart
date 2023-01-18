part of 'widgets.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final String imgUrl;
  final bool isSelected;

  CustomBottomNavigationItem({
    super.key,
    required this.imgUrl,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imgUrl,
              ),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
              color: isSelected == true ? primaryColor : transparentColor,
              borderRadius: BorderRadius.circular(
                2,
              )),
        ),
      ],
    );
  }
}
