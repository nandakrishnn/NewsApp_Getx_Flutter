import 'package:flutter/cupertino.dart';
import 'package:newsapp/constant/color.dart';
import 'package:newsapp/model/news_class.dart';

class NewImage extends StatelessWidget {
  final NewsArticle news;
  const NewImage({
    super.key, required this.news,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
           width: double.infinity,
            height: MediaQuery.of(context).size.height* 0.55,
            decoration: BoxDecoration(
              // color: const Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(image: NetworkImage(news.urlToImage??'https://static.thenounproject.com/png/908418-200.png'),fit: BoxFit.cover)
            ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(news.title??'Title not available' ,style:   const TextStyle(fontSize: 18.4,fontWeight: FontWeight.w500,color: Color.fromARGB(255, 255, 255, 255))),
          
                const Text(
            overflow: TextOverflow.ellipsis,
            'Description',style: TextStyle(
              
              fontSize: 16.4,fontWeight: FontWeight.w500,color: Color.fromARGB(255, 255, 255, 255)),)
                ,
          kheight,
          Text(
              
            '${news.description}',style: const TextStyle(fontSize: 16.4,fontWeight: FontWeight.w500,color: Color.fromARGB(255, 255, 255, 255)),)
            ],
          ),  
        ),
      
      ],
    );
  }
}
