part of 'widgets.dart';

class CustomBotton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final double width;
  final EdgeInsets margin;

  const CustomBotton({
    super.key,
    required this.title,
    required this.onPressed,
    this.width = double.infinity,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: 55,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 18,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              defaultRadius,
            ),
          ),
        ),
      ),
    );
  }
}
