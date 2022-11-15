import 'package:alisandeneme/constants.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final IconData iconData;

  const DefaultButton({super.key, required this.onPress, required this.title, required this.iconData});

  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
        ),
        padding: EdgeInsets.only(right: kDefaultPadding),
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(kDefaultPadding),
          
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(title, style: Theme.of(context).textTheme.subtitle2!.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
    
              ),
             ),
             Spacer(),
             Icon(iconData,size: 30.0,color: black,),
            ],
          ),
        ),
    );
  }
}