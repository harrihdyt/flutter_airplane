part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nKezia Anne',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 24,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where to fly today?',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_profile.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                imgUrl: 'assets/image_destination1.png',
                title: 'Lake Ciliwung',
                place: 'Tangerang',
                rate: 4.8,
              ),
              DestinationCard(
                imgUrl: 'assets/image_destination2.png',
                title: 'White House',
                place: 'Spain',
                rate: 4.7,
              ),
              DestinationCard(
                imgUrl: 'assets/image_destination3.png',
                title: 'Hill Hoyo',
                place: 'Monaco',
                rate: 4.8,
              ),
              DestinationCard(
                imgUrl: 'assets/image_destination4.png',
                title: 'Menarra',
                place: 'Japan',
                rate: 5.0,
              ),
              DestinationCard(
                imgUrl: 'assets/image_destination5.png',
                title: 'Payung Teduh',
                place: 'Singapore',
                rate: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 18,
              ),
            ),
            DestinationTile(
              imgUrl: 'assets/image_destination6.png',
              title: 'Danau Beratan',
              place: 'Singaraja',
              rate: 4.5,
            ),
            DestinationTile(
              imgUrl: 'assets/image_destination7.png',
              title: 'Sydney Opera',
              place: 'Australia',
              rate: 4.7,
            ),
            DestinationTile(
              imgUrl: 'assets/image_destination8.png',
              title: 'Roma',
              place: 'Italy',
              rate: 4.8,
            ),
            DestinationTile(
              imgUrl: 'assets/image_destination9.png',
              title: 'Payung Teduh',
              place: 'Singapore',
              rate: 4.5,
            ),
            DestinationTile(
              imgUrl: 'assets/image_destination10.png',
              title: 'Hill Hey',
              place: 'Monaco',
              rate: 4.7,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
