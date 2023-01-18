part of 'pages.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image_destination1.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              whiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: SafeArea(
          child: Column(
            children: [
              //!Note: Emblem
              Container(
                width: 108,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_emblem.png',
                    ),
                  ),
                ),
              ),

              //!title
              Container(
                margin: EdgeInsets.only(
                  top: 256,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lake Ciliwung',
                            overflow: TextOverflow.ellipsis,
                            style: whiteTextStyle.copyWith(
                              fontWeight: semiBold,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            'Tangerang',
                            style: whiteTextStyle.copyWith(
                              fontWeight: light,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          margin: EdgeInsets.only(
                            right: 5,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/icon_star.png',
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '4.5',
                          style: whiteTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              //!Desc
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(
                    18,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //!about
                    Text(
                      'About',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Berada di jalur jalan provinsi yang menghubungkan Denpasar\nSingaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                      style: blackTextStyle.copyWith(height: 2),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    //!Photos
                    Text(
                      'Photos',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        PhotoItem(imgUrl: 'assets/image_photo1.png'),
                        PhotoItem(imgUrl: 'assets/image_photo2.png'),
                        PhotoItem(imgUrl: 'assets/image_photo3.png'),
                      ],
                    ),
                    //!Interest
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Interest',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        InterestItem(title: 'Kids Park'),
                        InterestItem(title: 'Honor Bridge'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        InterestItem(title: 'City Museum'),
                        InterestItem(title: 'Central Mall'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            customShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}
