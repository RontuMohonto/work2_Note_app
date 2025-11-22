import 'package:flutter/material.dart';

class extra extends StatefulWidget {
  const extra({super.key});

  @override
  State<extra> createState() => _extraState();
}

class _extraState extends State<extra> {
  List json = [
    {
      "serial": "১",
      "text": "অন্যের জীবন নষ্ট করা মানুষগুলো অন্যায় করার সময় ভুলে যায় বিচারদিবসের মালিকের কথা !"
    },
    {
      "serial": "২",
      "text": "আমার জিহ্বা হিংস্র একটা জীবের মত, যদি আমি ছেড়ে দিই; তাহলে এটা আমাকে খেয়ে ফেলবে। এজন্য এতো দীর্ঘ সময় আমি চুপ করে থাকি !"
    },
    {
      "serial": "৩",
      "text": "ভালো আচরণ এর বিনিময়ে সবাই ভালো আচরণ করতে পারে। আপনি পারলে খারাপ আচরণের বিনিময়ে উত্তম আচরণ করে দেখান।"
    }
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff795545),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 5),
          child: CircleAvatar(

            backgroundColor: Colors.white,
            radius: 40,
            child: Icon(Icons.arrow_back, color: Color(0xff795545)),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 35, bottom: 5),
            child: Container(
              height: 45,
              width: 255,
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("বিচারদিবস",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff795545)),),
                ],
              ),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xffDCB7A7),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: ListView.builder(
          itemCount: json.length,
          shrinkWrap: true,

          scrollDirection: Axis.vertical,

          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffEED5CE),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xff795545)),
              ),
              child: Column(
                children: [
                  Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                      color: Color(0xff795545),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "${json[index]['serial']}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Color(0xff795545),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 10),
                          Text(
                            "বিচারদিবস",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffEED5CE),
                        border: Border.all(color: Color(0xff795545), width: 2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text(
                        "${json[index]['text']}",maxLines: 4,
                              style: TextStyle(

                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            // Text(
                            //   " মানুষগুলো অন্যায় করার সময় ",
                            //   style: TextStyle(
                            //     fontWeight: FontWeight.bold,
                            //     fontSize: 20,
                            //   ),
                            // ),
                            // Text(
                            //   "    ভুলে যায় বিচারদিবসের মালিকের কথা!",
                            //   style: TextStyle(
                            //     fontWeight: FontWeight.bold,
                            //     fontSize: 20,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Icon(Icons.copy, color: Colors.white),
                          backgroundColor: Color(0xff795545),
                        ),
                        Spacer(),
                        Container(
                          width: 180,
                          decoration: BoxDecoration(
                            color: Color(0xff795545),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            child: Row(
                              spacing: 15,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.share, color: Colors.white),
                                Text(
                                  "শেয়ার করুন...",
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
