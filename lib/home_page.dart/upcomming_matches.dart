import 'package:flutter/material.dart';
import 'package:flutter_application_2/home_page.dart/home_page.dart';

import '../constants.dart';

class UpcommingMatches extends StatefulWidget {
  const UpcommingMatches({super.key});

  @override
  State<UpcommingMatches> createState() => _UpcommingMatchesState();
}

class _UpcommingMatchesState extends State<UpcommingMatches> {
  HomePage _homepageFunction = new HomePage();
  late double deviceheight, deviceWidth;

  @override
  Widget build(BuildContext context) {
    deviceheight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Upcomming Matches"),
        actions: const [
          Icon(Icons.person),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.message),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: deviceWidth * 0.05,
            vertical: deviceheight * 0.05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: deviceheight * 0.05,
                    width: deviceWidth * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 30,
                          foregroundColor: Colors.blue,
                          foregroundImage: NetworkImage(
                              "https://media.istockphoto.com/photos/new-leather-cricket-ball-against-white-picture-id157181750?k=20&m=157181750&s=612x612&w=0&h=OQFimw32ZfF_ZfZ9dWiz-OIlhTPMIp43F1rOiOHL2Gc="),
                        ),
                        Center(
                          child: Text(
                            "Cricket",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://media.istockphoto.com/photos/soccer-ball-picture-id482855855?b=1&k=20&m=482855855&s=170667a&w=0&h=u3Tad8JdNXmOkYpHu1Z6F7UKZtTSUS_m_6W7lnw7WUs="),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                // height: deviceheight * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: Padding(
                  padding: EdgeInsets.all(deviceheight * 0.01),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Text("OPPO IPL", style: ktextstyle),
                          Spacer(),
                          Icon(
                            Icons.notifications_active_outlined,
                            color: Colors.white,
                          )
                        ],
                      ),
                      const Divider(
                        color: Colors.white,
                      ),
                      Row(
                        children: [
                          Text("Mumbai Indians", style: ktextstyle),
                          const Spacer(),
                          Text("Delhi Capitals", style: ktextstyle),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Image(
                              width: deviceWidth * 0.07,
                              height: deviceheight * 0.07,
                              image: const NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/en/thumb/c/cd/Mumbai_Indians_Logo.svg/1280px-Mumbai_Indians_Logo.svg.png"),
                            ),
                          ),
                          Text("MI", style: ktextstyle),
                          Spacer(),
                          Text("DC", style: ktextstyle),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image(
                              width: deviceWidth * 0.1,
                              height: deviceheight * 0.1,
                              image: const NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/en/thumb/f/f5/Delhi_Capitals_Logo.svg/474px-Delhi_Capitals_Logo.svg.png?20181206015913"),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Wankhede Stadium", style: ktextstyle),
                          Spacer(),
                          Image(
                              width: deviceWidth * 0.1,
                              height: deviceWidth * 0.1,
                              image: const NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1024px-Flag_of_India.svg.png"))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                // height: deviceheight * 0.20,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: upcommingMatches(
                    text1: "Kolkata Knight Riders",
                    text2: " Rajasthan Royals ",
                    text3: "KKR",
                    text4: "RR",
                    image1:
                        'https://upload.wikimedia.org/wikipedia/en/thumb/4/4c/Kolkata_Knight_Riders_Logo.svg/800px-Kolkata_Knight_Riders_Logo.svg.png',
                    image2:
                        'https://upload.wikimedia.org/wikipedia/en/thumb/6/60/Rajasthan_Royals_Logo.svg/323px-Rajasthan_Royals_Logo.svg.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                // height: deviceheight * 0.20,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: upcommingMatches(
                    text1: " Royal Challengers Bangalore",
                    text2: " Sunrisers Hyderabad ",
                    text3: "RCB",
                    text4: "SRH",
                    image1:
                        'https://upload.wikimedia.org/wikipedia/en/thumb/2/2a/Royal_Challengers_Bangalore_2020.svg/800px-Royal_Challengers_Bangalore_2020.svg.png',
                    image2:
                        'https://upload.wikimedia.org/wikipedia/en/thumb/8/81/Sunrisers_Hyderabad.svg/390px-Sunrisers_Hyderabad.svg.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                // height: deviceheight * 0.20,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: upcommingMatches(
                    text1: "Gujarat Titans",
                    text2: " Punjab Kings",
                    text3: "GT",
                    text4: "KXIP",
                    image1:
                        'https://upload.wikimedia.org/wikipedia/en/thumb/0/09/Gujarat_Titans_Logo.svg/368px-Gujarat_Titans_Logo.svg.png',
                    image2:
                        'https://upload.wikimedia.org/wikipedia/en/thumb/d/d4/Punjab_Kings_Logo.svg/800px-Punjab_Kings_Logo.svg.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget upcommingMatches(
      {required String text1, text2, text3, text4, image1, image2}) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: deviceWidth * 0.03, vertical: deviceheight * 0.01),
      child: Column(
        children: [
          Row(
            children: [
              Text("OPPO IPl"),
              Spacer(),
              Icon(
                Icons.notifications_active,
              )
            ],
          ),
          Divider(
            color: Colors.black,
          ),
          Row(
            children: [
              Text(text1),
              Spacer(),
              Text(text2),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: deviceWidth * 0.08, vertical: deviceheight * 0.01),
            child: Row(
              children: [
                Image(
                  height: deviceWidth * 0.1,
                  width: deviceWidth * 0.1,
                  image: NetworkImage(image1),
                ),
                Text(
                  text3,
                  style: TextStyle(fontSize: deviceWidth * 0.07),
                ),
                Spacer(),
                Image(
                  height: deviceWidth * 0.1,
                  width: deviceWidth * 0.1,
                  image: NetworkImage(image2),
                ),
                Padding(
                  padding: EdgeInsets.only(left: deviceWidth * 0.01),
                  child: Text(
                    text4,
                    style: TextStyle(fontSize: deviceWidth * 0.07),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
