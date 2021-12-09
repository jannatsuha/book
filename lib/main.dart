import 'package:book/details_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
String details= "হিমু বাংলাদেশের কথাসাহিত্যিক হুমায়ুন আহমেদ সৃষ্ট একটি জনপ্রিয় ও কাল্পনিক চরিত্র।[১][২] হিমু মূলত একজন বেকার যুবক ; যার আচরণে বেখেয়ালী, জীবনযাপনে ছন্নছাড়া ও বৈষয়িক ব্যাপারে সম্পূর্ণ উদাসীন ভাব প্রকাশ পায়। চাকরির সুযোগ থাকলেও সে চাকরি কখনো করে না বলেই সে বেকার। তার অস্বাভাবিক চরিত্রের মধ্যে সে হলুদ পাঞ্জাবি পরে খালি পায়ে রাস্তাঘাটে দিন-রাত ঘুরে বেড়ায় এবং মাঝে মাঝে ভবিষ্যদ্বাণী করে মানুষকে চমকে দেয়। নব্বই দশকে হিমুর প্রথম উপন্যাস ময়ূরাক্ষী প্রকাশিত হয়। প্রাথমিক সাফল্যের পর হিমু চরিত্র বিচ্ছিন্নভাবে হুমায়ুন আহমেদের বিভিন্ন উপন্যাসে প্রকাশিত হতে থাকে। হিমু ও মিসির আলি হুমায়ুন আহমেদ সৃষ্ট সর্বাধিক জনপ্রিয় দু’টি কাল্পনিক চরিত্র। উদাসীন হিমু একবিংশ শতাব্দীর প্রথম দশকের বাঙালি তরুণদের ব্যাপকভাবে অনুপ্রাণিত করেছিল। ";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
List<String> textList=[
  "হিমু সমগ্র 1ম খণ্ড",
  "হিমু সমগ্র 2ম খণ্ড",
  "হিমু সমগ্র 3ম খণ্ড",
  "হিমু সমগ্র 4ম খণ্ড",
  "হিমু সমগ্র 5ম খণ্ড",
  "হিমু সমগ্র 6ম খণ্ড",
  "হিমু সমগ্র 7ম খণ্ড"
];
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("HIMU"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: textList.length,
                   itemBuilder: (context,index){
                     return Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: InkWell(
                         onTap: (){
                           Navigator.push(context,
                           MaterialPageRoute(builder: (context)=>
                           DetailsPage(text: details,)));
                         },
                         child: Container(
                           height: 50,
                           width: 250,
                           color: Colors.grey.shade300,
                           child: Center(
                             child: Text(textList[index],style: TextStyle(
                                 fontSize: 20, fontWeight: FontWeight.bold,
                                 color: Colors.purple
                             ),),
                           ),
                         ),
                       ),
                     );
                   }
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}



