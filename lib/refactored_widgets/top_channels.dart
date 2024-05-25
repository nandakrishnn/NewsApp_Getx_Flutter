import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopChannels extends StatelessWidget {
  final String url;
  final String channelName;
  
  const TopChannels({
    super.key, required this.url, required this.channelName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
              borderRadius: BorderRadius.circular(45),
              image: DecorationImage(image: NetworkImage(url))
          ),
          
          width: 90,
          height: 90,
        ),
        SizedBox(height: 4,),
        Text(channelName,style: TextStyle(fontSize: 20,color: Colors.white),)
      ],
    );
  }
}

