import 'package:flutter/material.dart';
import './appBar.dart';
import './profile_display.dart';
import './navigation.dart';
import './deactivate_account.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var homePage = Icon(
    Icons.home,
    color: Colors.white,
    size: 20,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(),
          const SizedBox(height: 24),
          NavigationButtonWidget(
              Icons.person, "Profile Details", Icons.arrow_forward_ios),
          NavigationButtonWidget(
              Icons.location_on, "My Address", Icons.arrow_forward_ios),
          NavigationButtonWidget(
              Icons.assessment, "Order History", Icons.arrow_forward_ios),
          NavigationButtonWidget(Icons.credit_card, "Payments Information",
              Icons.arrow_forward_ios),
          NavigationButtonWidget(
              Icons.chat_sharp, "Help", Icons.arrow_forward_ios),
          NavigationButtonWidget(Icons.logout_rounded, "Logout"),
          DeactivateAccount(),
        ],
      ),
    );
  }
}
