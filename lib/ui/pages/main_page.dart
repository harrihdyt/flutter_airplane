part of 'pages.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(
                18,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                  imgUrl: 'assets/icon_home.png', isSelected: true),
              CustomBottomNavigationItem(imgUrl: 'assets/icon_booking.png'),
              CustomBottomNavigationItem(imgUrl: 'assets/icon_card.png'),
              CustomBottomNavigationItem(imgUrl: 'assets/icon_settings.png'),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          buildContent(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
