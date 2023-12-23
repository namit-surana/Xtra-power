import 'package:flutter/material.dart';
import 'package:namit_s_application1/core/app_export.dart';
import 'package:namit_s_application1/widgets/custom_elevated_button.dart';
import 'package:namit_s_application1/widgets/custom_text_form_field.dart';

class Iphone14SeventeenScreen extends StatefulWidget {
  const Iphone14SeventeenScreen({Key? key}) : super(key: key);

  @override
  _Iphone14SeventeenScreenState createState() => _Iphone14SeventeenScreenState();
}

class _Iphone14SeventeenScreenState extends State<Iphone14SeventeenScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  ScrollController _scrollController = ScrollController();

  bool _showPassword = false;

  @override
  void dispose() {
    _scrollController.dispose();
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    // Container(
                    //   height: constraints.maxHeight * 0.2,
                    //   width: double.maxFinite,
                    //   decoration: BoxDecoration(color: theme.colorScheme.primary),
                    // ),
                    SizedBox(height: constraints.maxHeight * 0.05),
                    Text(
                      "lbl_welcome".tr,
                      style: CustomTextStyles.headlineSmallBold,
                    ),
                    SizedBox(height: constraints.maxHeight * 0.2),
                    Text(
                      "msg_your_account_is".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(height: constraints.maxHeight * 0.02),
                    Text(
                      "lbl_sfd_12".tr,
                      style: CustomTextStyles.titleMediumBlack900Medium17,
                    ),
                    SizedBox(height: constraints.maxHeight * 0.02),
                    CustomTextFormField(
                      autofocus: false,
                      controller: userNameController,
                      margin: EdgeInsets.symmetric(horizontal: 0.1 * constraints.maxWidth),
                      hintText: "lbl_user_name".tr,
                    ),
                    SizedBox(height: constraints.maxHeight * 0.02),
                    CustomTextFormField(
                      autofocus: false,
                      controller: passwordController,
                      margin: EdgeInsets.symmetric(horizontal: 0.1 * constraints.maxWidth),
                      hintText: "lbl_password".tr,
                      textInputType: TextInputType.visiblePassword,
                      obscureText: !_showPassword,
                    ),
                    SizedBox(height: constraints.maxHeight * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center, // Center the elements horizontally
                      children: [
                        TextButton(
                          onPressed: () {
                            // Handle "New Registration" click
                            Navigator.pushNamed(context, AppRoutes.iphone14TenScreen);
                          },
                          child: Text(
                            "New Registration?",
                            style: TextStyle(
                              color: theme.colorScheme.primary, // Use the primary color or any other desired color
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        SizedBox(width: 20), // Adjust the spacing between the text and checkbox as needed
                        Checkbox(
                          value: _showPassword,
                          onChanged: (value) {
                            setState(() {
                              _showPassword = value!;
                            });
                          },
                        ),
                        Text("Show Password"),
                      ],
                    ),

                    SizedBox(height: constraints.maxHeight * 0.1), // Adjust the spacing
                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(20.0), // Adjust the padding as needed
          child: CustomElevatedButton(
            width: double.maxFinite, // Expand to available width
            text: "lbl_submit".tr,
            onTap: () {
              onTapSubmit(context);
            },
          ),
        ),
      ),
    );
  }

  onTapSubmit(BuildContext context) {
    // You can add form validation logic here and navigate if valid
    Navigator.pushNamed(context, AppRoutes.iphone14NineScreen);
  }
}
