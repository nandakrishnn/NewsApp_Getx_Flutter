import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newsapp/model/news_class.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetails extends StatelessWidget {
  final NewsArticle newDetails;

  const NewsDetails({super.key, required this.newDetails});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          
      appBar: AppBar(
        elevation: 0,
        
        automaticallyImplyLeading: true,
        title: Text('News Details',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
                Container(
                 width: double.infinity,
                  height: MediaQuery.of(context).size.height* 0.4,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    image: DecorationImage(image: NetworkImage(newDetails.urlToImage??'assets/coudnotloadimage.png'),fit: BoxFit.cover)
                  ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                       Text(newDetails.title??'No title available' ,style:   const TextStyle(fontSize: 18.4,fontWeight: FontWeight.w500,color: Color.fromARGB(255, 255, 255, 255))),
                      SizedBox(height: 17,),
                      Text(newDetails.description??'No description availabale',style:   const TextStyle(fontSize: 16.4,fontWeight: FontWeight.w400,color: Color.fromARGB(255, 255, 255, 255)))
                      ,SizedBox(height: 17,),
                      Text('Read More',style: TextStyle(
                          decoration: TextDecoration.underline,

                            fontSize: 18.4,fontWeight: FontWeight.w400,color: Color.fromARGB(255, 149, 141, 141)),),
                      GestureDetector(
                        onTap: (){
                          launchUrl(newDetails.url!);
                        },
                        child: Text(
                        
                          newDetails.url??'No Url available',style:   const TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                            fontSize: 16.4,fontWeight: FontWeight.w400,color: Color.fromARGB(255, 255, 255, 255))))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Future<void>launchUrl(String url)async{
    if(await canLaunchUrl(Uri.parse(newDetails.url!))){
      await  launchUrl(newDetails.url!);
    }else{
      throw 'Could not launch url';
    }
  }
}