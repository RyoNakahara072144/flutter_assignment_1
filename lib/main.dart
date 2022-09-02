import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const UIAssignment(),
    );
  }
}

class UIAssignment extends StatelessWidget {
  const UIAssignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,

        backgroundColor: const Color(0x00000000),
        actions: const [
          Icon(Icons.share, color: Colors.white,),
          SizedBox(width: 15,),
          Icon(Icons.favorite_border, color: Colors.white,),
          SizedBox(width: 15,),
        ],
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                    child: Image.asset('images/venice.jpg', height: 350,width: MediaQuery.of(context).size.width, fit: BoxFit.cover,)
                ),
                /* AppBarを使わない場合
                SafeArea(
                  child: Container(
                    padding: const EdgeInsets.only(right: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(Icons.share, color: Colors.white,),
                        SizedBox(width: 15,),
                        Icon(Icons.favorite_border, color: Colors.white,),
                      ],
                    ),
                  ),
                ),*/
                Container(
                  height: 350,
                  padding: const EdgeInsets.only(left: 15, bottom: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Venice', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
                      const SizedBox(height: 5,),
                      Row(
                        children: const [
                          Icon(Icons.location_on, color: Colors.white, size: 17,),
                          SizedBox(width: 2,),
                          Text('Italy', style: TextStyle(fontSize: 16, color: Colors.white),),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: const [
                          Icon(Icons.star, color: Colors.white,),
                          Icon(Icons.star, color: Colors.white,),
                          Icon(Icons.star, color: Colors.white,),
                          Icon(Icons.star, color: Colors.white,),
                          Icon(Icons.star_border, color: Colors.white,),
                          SizedBox(width: 5,),
                          Text('4.0', style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1, color: outlineColor,),
                            ),
                            child: Icon(Icons.wifi, color: iconColor, size: 30,),
                          ),
                          const SizedBox(height: 5,),
                          const Text('Wifi',style: TextStyle(fontSize: 14),),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1, color: outlineColor,),
                            ),
                            child: Icon(Icons.flatware, color: iconColor, size: 30,),
                          ),
                          const SizedBox(height: 5,),
                          const Text('キッチン',style: TextStyle(fontSize: 14),),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1, color: outlineColor,),
                            ),
                            child: Icon(Icons.beach_access, color: iconColor, size: 30,),
                          ),
                          const SizedBox(height: 5,),
                          const Text('ビーチ',style: TextStyle(fontSize: 14),),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1, color: outlineColor,),
                            ),
                            child: Icon(Icons.more_horiz, color: iconColor, size: 30,),
                          ),
                          const SizedBox(height: 5,),
                          const Text('その他',style: TextStyle(fontSize: 14),),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Text('詳細', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  const SizedBox(height: 5,),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color(0xfff4f4f4),
                      borderRadius: BorderRadius.circular(15)
                    ),
                      child: const Text('イタリア共和国北東部に位置する都市で、その周辺地域を含む人口約26万人の基礎自治体（コムーネ）。ヴェネト州の州都、ヴェネツィア県の県都である。ヴの表記によりベネチアと表記されることもある。中世にはヴェネツィア共和国の首都として栄えた都市で、「アドリア海の女王」「水の都」などの別名を持つ。英語では「Venice」と呼ばれ、これに由来して日本語でもヴェニス、ベニスと呼ばれることもある。'))
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        label: const Text('ホテルを予約する', style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blueAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

Color iconColor = const Color(0xff555555);
Color outlineColor = const Color(0xffcccccc);