import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomAppBar extends StatelessWidget {
  final IconData leftIcon;
  final IconData  rightIcon;
  final Function ? leftCallBack;
  CustomAppBar(this.leftIcon, this.rightIcon, {this.leftCallBack});
  // const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: leftCallBack != null ? () => leftCallBack !() : null,
            child: _buildIcon(leftIcon),
          ),
         _buildIcon(rightIcon),
        ],
      ),
    );
  }

//  We build AppBar icons
  Widget _buildIcon(IconData icon) {
    SizedBox(
      width: 100,
    );
    return Container(
            padding: const EdgeInsets.all(8,),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(icon),
          );
  }
}