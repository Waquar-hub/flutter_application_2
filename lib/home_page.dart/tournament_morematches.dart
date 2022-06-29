import 'package:flutter/material.dart';

import '../constants.dart';

class TournamentMatches extends StatefulWidget {
  const TournamentMatches({super.key});

  @override
  State<TournamentMatches> createState() => _TournamentMatchesState();
}

class _TournamentMatchesState extends State<TournamentMatches> {
  late double deviceheight, deviceWidth;

  @override
  Widget build(BuildContext context) {
    deviceheight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tournment"),
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
          children: [
            Container(
              height: deviceheight * 0.08,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(20),
              ),
              child: tournament(
                  image:
                      "https://twenty20wiki.com/wp-content/uploads/2019/07/IPL-2020-photo-by-twenty20wiki.jpg",
                  text1: "indian premier league",
                  text2: "see matches"),
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
                          Text("Match #1", style: ktextstyle),
                          const Spacer(),
                          const Icon(
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Text(
                            "Day 1",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
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
                      )
                    ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              // height: deviceheight * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // color: Colors.blue,
                border: Border.all(color: Colors.blue),
              ),
              child: Padding(
                padding: EdgeInsets.all(deviceheight * 0.01),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Match #2",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.notifications_active_outlined,
                            color: Colors.black,
                          )
                        ],
                      ),
                      const Divider(
                        color: Colors.white,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Mumbai Indians",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Delhi Capitals",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          const Text(
                            "MI",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          const Text(
                            "Day 2",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            "DC",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
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
                          const Text(
                            "Wankhede Stadium",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          Image(
                              width: deviceWidth * 0.1,
                              height: deviceWidth * 0.1,
                              image: const NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1024px-Flag_of_India.svg.png"))
                        ],
                      )
                    ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              // height: deviceheight * 0.3,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(20),
                // color: Colors.blue,
              ),
              child: Padding(
                padding: EdgeInsets.all(deviceheight * 0.01),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Match #3",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.notifications_active_outlined,
                          color: Colors.black,
                        )
                      ],
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Mumbai Indians",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Delhi Capitals",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        const Text(
                          "MI",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        const Text(
                          "Day 3",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Spacer(),
                        const Text(
                          "DC",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
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
                        const Text(
                          "Wankhede Stadium",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        Image(
                            width: deviceWidth * 0.1,
                            height: deviceWidth * 0.1,
                            image: const NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1024px-Flag_of_India.svg.png"))
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              // height: deviceheight * 0.3,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(20),
                // color: Colors.blue,
              ),
              child: Padding(
                padding: EdgeInsets.all(deviceheight * 0.01),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Match #4",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.notifications_active_outlined,
                          color: Colors.black,
                        )
                      ],
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Mumbai Indians",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Delhi Capitals",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        const Text(
                          "MI",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        const Text(
                          "Day 4",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Spacer(),
                        const Text(
                          "DC",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
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
                        const Text(
                          "Wankhede Stadium",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        Image(
                            width: deviceWidth * 0.1,
                            height: deviceWidth * 0.1,
                            image: const NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1024px-Flag_of_India.svg.png"))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget tournament({required String image, text1, text2}) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: deviceWidth * 0.01, vertical: deviceheight * 0.01),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(image),
            radius: deviceWidth * 0.1,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                text2,
                style: TextStyle(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
