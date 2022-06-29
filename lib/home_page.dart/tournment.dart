import 'package:flutter/material.dart';
import 'package:flutter_application_2/home_page.dart/tournament_morematches.dart';

import 'ICC_mens_matches.dart';

class Tournament extends StatefulWidget {
  const Tournament({super.key});

  @override
  State<Tournament> createState() => _TournamentState();
}

class _TournamentState extends State<Tournament> {
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
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TournamentMatches(),
                    ),
                  );
                },
                child: Container(
                  height: deviceheight * 0.08,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: deviceWidth * 0.01,
                        vertical: deviceheight * 0.01),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: const NetworkImage(
                              "https://twenty20wiki.com/wp-content/uploads/2019/07/IPL-2020-photo-by-twenty20wiki.jpg"),
                          radius: deviceWidth * 0.1,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "indian premier league",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            Text(
                              "see matches",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  // tournament(
                  //     image:
                  //         "https://twenty20wiki.com/wp-content/uploads/2019/07/IPL-2020-photo-by-twenty20wiki.jpg",
                  //     text1: "indian premier league",
                  //     text2: "see matches"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ICCMens(),
                    ),
                  );
                },
                child: Container(
                  height: deviceheight * 0.08,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: tournament(
                    image:
                        "https://upload.wikimedia.org/wikipedia/commons/9/91/SRH_fans_while_an_ipl_match.jpg",
                    text1: "ICC Men's T20 World Cup ",
                    text2: "see matches",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ICCMens(),
                    ),
                  );
                },
                child: Container(
                  height: deviceheight * 0.08,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: tournament(
                      image:
                          "https://upload.wikimedia.org/wikipedia/commons/c/cb/Eden_Gardens_under_floodlights_during_a_match.jpg",
                      text1: "IND tour WI",
                      text2: "more matches"),
                ),
              ),
            ],
          ),
        ),
      ),
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
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              Text(
                text2,
                style: TextStyle(color: Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }
}
