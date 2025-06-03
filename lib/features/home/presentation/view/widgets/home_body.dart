import 'package:flutter/material.dart';
import 'package:nti_tasks/core/utils/app_size.dart';
import 'package:nti_tasks/features/home/presentation/view/widgets/search_widget.dart';
import 'package:nti_tasks/features/home/presentation/view/widgets/users_list_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(AppSize.s8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SearchWidget(),
            UsersListView(),
          ],
        ),
      ),
    );
  }
}
