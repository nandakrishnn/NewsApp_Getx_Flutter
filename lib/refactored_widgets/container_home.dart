import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/model/news_class.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({
    super.key,
    required this.newnews,
  });

  final NewsArticle newnews;

  @override
  Widget build(BuildContext context) {
    if (newnews.urlToImage == null || newnews.urlToImage!.isEmpty) {
      return SizedBox.shrink();
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(-0, 3),
          ),
        ],
      ),
      width: 230,
      height: 280,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image container
          Container(
            height: 200, 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: newnews.urlToImage != null && newnews.urlToImage!.isNotEmpty
                    ? NetworkImage(newnews.urlToImage!)
                    : const AssetImage('assets/coudnotloadimage.png') as ImageProvider,
              ),
            ),
          ),
          // Text container
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  newnews.author != null && newnews.author!.isNotEmpty
                      ? newnews.author!
                      : 'Unknown Author',
                  style: GoogleFonts.lato(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4),
                Text(
                  newnews.title!,
                  style: GoogleFonts.lato(
                    color: Colors.black54,
                    fontSize: 12,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
