import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freeland/app/profile/presentation/widgets/career_section.dart';
import 'package:freeland/app/profile/presentation/widgets/education_section.dart';
import 'package:freeland/app/profile/presentation/widgets/profile_image.dart';
import 'package:freeland/app/profile/presentation/widgets/projects_section.dart';
import 'package:freeland/common/config/theme/src/colors.dart';
import 'package:freeland/common/config/theme/src/styles.dart';
import 'package:freeland/common/widgets/statistics_widget.dart';
import 'package:freeland/common/widgets/text.dart';
import 'package:go_router/go_router.dart';

import '../../../../profile/presentation/widgets/portfolio_section.dart';
import '../widget/drawer.dart';

final ZoomDrawerController zoomDrawerController = ZoomDrawerController();

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static Page pageBuilder(BuildContext context, GoRouterState state) {
    return MaterialPage<void>(
      key: state.pageKey,
      child: const HomeScreen(),
    );
  }

  static const routePath = '/home';
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ZoomDrawer(
        drawerShadowsBackgroundColor: Colors.grey.shade300,
        clipMainScreen: true,
        menuScreenWidth: 320,
        shrinkMainScreen: false,
        controller: zoomDrawerController,
        borderRadius: 24,
        angle: -0.0,
        style: DrawerStyle.defaultStyle,
        showShadow: false,
        isRtl: true,
        menuBackgroundColor: AppColors.purple,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
        duration: const Duration(milliseconds: 500),
        mainScreen: const HomeScreenWidget(),
        menuScreen: const DrawerScreen(),
      )),
    );
  }
}

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
            vertical: verticalAppPadding.h, horizontal: horizontalAppPadding.w),
        children: [
          const ProfileImage(),
          Padding(
            padding: EdgeInsets.all(8.0.r),
            child: const CustomText.titleLarge(
              "Ahmed Ahmed",
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0.r),
            child: const CustomText.bodyLarge(
              "I am Creative Ui-Ux designer and this is my Awesome great Bio",
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
              onPressed: () {},
              child: CustomText.bodyMedium(
                "Connect",
                style:
                    TextStyle(color: Theme.of(context).colorScheme.onPrimary),
              )),
          SizedBox(
            height: 8.0.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              StatisticsWidget(
                color: AppColors.green,
                child: FaIcon(
                  FontAwesomeIcons.listCheck,
                  color: AppColors.green,
                ),
                title: "4",
              ),
              StatisticsWidget(
                color: AppColors.blueAccent2,
                child: FaIcon(
                  FontAwesomeIcons.solidCircleUser,
                  color: AppColors.blueAccent2,
                ),
                title: "300",
              ),
              StatisticsWidget(
                color: AppColors.yellow,
                child: FaIcon(
                  FontAwesomeIcons.solidStar,
                  color: AppColors.yellow,
                ),
                title: "3.4",
              ),
            ],
          ),
          Wrap(
            spacing: 4.0.w,
            alignment: WrapAlignment.center,
            children: const [
              Chip(
                label: Text("Ui-Ux"),
              ),
              Chip(
                label: Text("Designing"),
              ),
              Chip(
                label: Text("TTTTT"),
              ),
              Chip(
                label: Text("Front End"),
              ),
              Chip(
                label: Text("Ui-Ux"),
              ),
              Chip(
                label: Text("Ui-Ux"),
              ),
            ],
          ),
          SizedBox(
            height: 12.0.h,
          ),
          const ProfileProjectsSection(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0.h),
            child: const Divider(color: AppColors.black),
          ),
          const ProfilePortfolioSection(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0.h),
            child: const Divider(color: AppColors.black),
          ),
          const ProfileCareerSection(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0.h),
            child: const Divider(color: AppColors.black),
          ),
          const ProfileEducationSection(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0.h),
            child: const Divider(color: AppColors.black),
          ),
        ],
      ),
    );
  }
}
