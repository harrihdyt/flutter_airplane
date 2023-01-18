part of 'widgets.dart';

class PhotoItem extends StatelessWidget {
  final String imgUrl;
  const PhotoItem({
    super.key,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.only(
        right: 16,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              imgUrl,
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(18)),
    );
  }
}
