part of 'widgets.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final String hint;
  final bool obsscure;
// final TextEditingController textEditingController;

  const CustomTextFormField({
    super.key,
    required this.title,
    required this.hint,
    this.obsscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            obscureText: obsscure,
            cursorColor: blackColor,
            decoration: InputDecoration(
              hintText: hint,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    defaultRadius,
                  ),
                  borderSide: BorderSide(
                    color: primaryColor,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
