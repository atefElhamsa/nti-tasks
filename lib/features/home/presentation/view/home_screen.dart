import 'package:flutter/material.dart';
import 'package:nti_tasks/core/shared_widgets/custom_app_bar.dart';
import 'package:nti_tasks/core/utils/app_size.dart';
import 'package:nti_tasks/features/home/presentation/view/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login"),
      ),
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(AppSize.s50),
      //   child: Padding(
      //     padding: EdgeInsets.all(AppSize.s8),
      //     child: CustomAppBar(),
      //   ),
      // ),
      // bottomNavigationBar: BottomNavigationBarWidget(),
      body: HomeBody(),
    );
  }
}
