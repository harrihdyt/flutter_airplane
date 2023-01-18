part of 'pages.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_get_started.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fly Like a Bird',
                  style: whiteTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 32,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Explore new world with us and let\nyourself get an amazing experiences',
                  style: whiteTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                CustomBotton(
                  title: 'Get Started',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up');
                  },
                  width: 220.0,
                  margin: EdgeInsets.only(
                    top: 50,
                    bottom: 80,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
