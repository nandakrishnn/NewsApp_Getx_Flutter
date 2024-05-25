import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newsapp/model/news_class.dart';


class NewsContainer extends StatelessWidget {
  const NewsContainer({
    super.key,
    required this.newnews,
  });

  final NewsArticle newnews;

  @override
  Widget build(BuildContext context) {
    if(newnews.urlToImage==null||newnews.urlToImage!.isEmpty){
        return SizedBox.shrink();
    }
    return Container(
      // color: Colors.white,
      width: 170,
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 250,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.cover,
                     image: newnews.urlToImage != null && newnews.urlToImage!.isNotEmpty
                  ? NetworkImage(newnews.urlToImage!,)
                  : const AssetImage('assets/coudnotloadimage.png') as ImageProvider,
                    )
                   ),
                  
                // ),
              ),
           Expanded(
             child: Text( 
                newnews.author != null && newnews.author!.isNotEmpty
                ? newnews.author!
              : 'Description Unavailble',style: TextStyle(color: Colors.white),),
           ),
              
        //       MainTitle(  
        //   title: newnews.author != null && newnews.author!.isNotEmpty
        //       ? newnews.author!
        //       : 'Unknown Author',
              
        // ),
        ],
      ),
    );
  }
}