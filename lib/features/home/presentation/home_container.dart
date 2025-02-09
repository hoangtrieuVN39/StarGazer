import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stargazer/core/constants/text_constants.dart';
import 'package:stargazer/core/utils/colors.dart';
import 'package:stargazer/features/home/presentation/bloc/home_bloc.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Expanded(child: state.widgets[state.index]),
          bottomNavigationBar: _buildBottomNavigationBar(),
        );
      },
    );
  }

  Widget _buildBottomNavigationBar() {
    final List<String> labels = TextConstants.bottomNavigationBarLabels;
    return Container(
      decoration: BoxDecoration(color: AppColors.coal(0.5)),
      padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 24),
      child: Row(
        children: [
          Expanded(child: _buildBottomNavigationBarItem(labels[0])),
          Expanded(child: _buildBottomNavigationBarItem(labels[1])),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBarItem(String label) {
    return TextButton(
      onPressed: () {},
      child: Text(label, style: TextStyle(color: AppColors.coal(0.5))),
    );
  }
}
