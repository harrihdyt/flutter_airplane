part of 'pages.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Text(
          'Join us and get\nyour next journey',
          style: purpleTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 24,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget fullNameInput() {
        return CustomTextFormField(
          title: 'Full Name',
          hint: 'Your full name',
        );
      }

      Widget emailInput() {
        return CustomTextFormField(
          title: 'Email',
          hint: 'Your email',
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          obsscure: true,
          title: 'Password',
          hint: 'Your password',
        );
      }

      Widget hobbyInput() {
        return CustomTextFormField(
          title: 'Hobby',
          hint: 'Your hobby',
        );
      }

      Widget submitButton() {
        return CustomBotton(
          title: 'Get Started',
          onPressed: () {
            Navigator.pushNamed(context, '/bonus');
          },
        );
      }

      Widget tacButton() {
        return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
            top: 50,
            bottom: 73,
          ),
          child: Text(
            'Term and Conditions',
            style: greyTextStyle.copyWith(
              fontWeight: light,
              fontSize: 16,
              decoration: TextDecoration.underline,
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(
          children: [
            fullNameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
            tacButton(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            inputSection(),
          ],
        ),
      ),
    );
  }
}
