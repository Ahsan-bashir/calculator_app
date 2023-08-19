
import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {
 final Color color;
 final String title;
 final VoidCallback onPress;
  const MyButton({Key? key,required this.title,this.color=Colors.grey,required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Expanded(
        child: InkWell(
          onTap:onPress,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,

            ),

            height: 80,
            width: 100,
            child:  Center(child: Text(title,style: const TextStyle(color: Colors.white,fontSize: 25),)),
          ),
        ),
      ),
    );
  }
}