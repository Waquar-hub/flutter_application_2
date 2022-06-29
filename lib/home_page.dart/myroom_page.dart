import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class MyRoom extends StatefulWidget {
  const MyRoom({super.key});

  @override
  State<MyRoom> createState() => MyRoomState();
}

class MyRoomState extends State<MyRoom> {
  late Widget Function() room = publicRoom;
  Color activeCardColour = Color(0xFF101E33);
  Color inactiveCardColour = Color(0xFF11328);
  int _selectedValue = 20;
  int _selectedValue2 = 20;
  int _selectedValue3 = 20;
  int _selectedValue4 = 20;
  bool changeColor = true;

  late double deviceHeight, deviceWidth;
  @override
  void initState() {
    super.initState();
    room = publicRoom;
  }

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Select Room"),
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
            vertical: deviceHeight * 0.05,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        room = publicRoom as Widget Function();
                        changeColor = !changeColor;
                      });
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          "Public",
                          style: TextStyle(
                            color: changeColor ? Colors.white : Colors.black,
                            fontSize: 28,
                          ),
                        ),
                      ),
                      height: deviceHeight * 0.07,
                      width: deviceWidth * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.blue,
                        ),
                        color: changeColor ? Colors.blue : Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        changeColor = !changeColor;
                        room = privateRoom as Widget Function();
                      });
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          "Private",
                          style: TextStyle(
                            color: changeColor ? Colors.black : Colors.white,
                            fontSize: 28,
                          ),
                        ),
                      ),
                      height: deviceHeight * 0.07,
                      width: deviceWidth * 0.4,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(30),
                        color: changeColor ? Colors.white : Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: deviceHeight * 0.03,
              ),
              room(),
              SizedBox(
                height: deviceHeight * 0.03,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                height: deviceHeight * 0.07,
                minWidth: deviceWidth * 0.6,
                color: Colors.blue,
                onPressed: () {},
                child: const Text(
                  "Create Room",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget publicRoom() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        "Pool Price",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Entry",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      "10 Tokens",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: deviceWidth * 0.13,
                      width: deviceWidth * 0.2,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        semanticContainer: true,
                        color: Colors.blueAccent.withOpacity(0.3),
                        child: Center(
                          child: Text(
                            _selectedValue.toString(),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 7),
                  ),
                  child: Slider(
                    value: _selectedValue.toDouble(),
                    min: 0.0,
                    max: 100.0,
                    activeColor: CupertinoColors.white,
                    thumbColor: CupertinoColors.systemYellow,
                    inactiveColor: CupertinoColors.systemGrey2,
                    onChanged: (_value) {
                      _selectedValue = _value.toInt();

                      setState(() {});
                    },
                  ),
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
              ],
            ),
          ),
        ),
        SizedBox(
          height: deviceHeight * 0.03,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Text(
                        "Pool Price",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Entry",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      "10 Tokens",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: deviceWidth * 0.13,
                      width: deviceWidth * 0.2,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        semanticContainer: true,
                        color: Colors.blue.withOpacity(0.3),
                        child: Center(
                          child: Text(
                            _selectedValue2.toString(),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 7),
                  ),
                  child: Slider(
                    value: _selectedValue2.toDouble(),
                    min: 0.0,
                    max: 100.0,
                    activeColor: CupertinoColors.systemBlue,
                    thumbColor: CupertinoColors.systemBlue,
                    inactiveColor: CupertinoColors.systemGrey2,
                    onChanged: (_value) {
                      setState(() {
                        _selectedValue2 = _value.toInt();
                      });
                    },
                  ),
                ),
                Row(
                  children: [
                    Text(
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
        SizedBox(
          height: deviceHeight * 0.03,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Text(
                        "Pool Price",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Entry",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      "10 Tokens",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: deviceWidth * 0.13,
                      width: deviceWidth * 0.2,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        semanticContainer: true,
                        color: Colors.blue.withOpacity(0.3),
                        child: Center(
                          child: Text(
                            _selectedValue3.toString(),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 7),
                  ),
                  child: Slider(
                    value: _selectedValue3.toDouble(),
                    min: 0.0,
                    max: 100.0,
                    activeColor: CupertinoColors.systemBlue,
                    thumbColor: CupertinoColors.systemBlue,
                    inactiveColor: CupertinoColors.systemGrey2,
                    onChanged: (_value) {
                      setState(() {
                        _selectedValue3 = _value.toInt();
                      });
                    },
                  ),
                ),
                Row(
                  children: [
                    Text(
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
    );
  }

  Widget privateRoom() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    "Pool Price",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Entry",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  "500 Tokens",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
                const Spacer(),
                Container(
                  height: deviceWidth * 0.13,
                  width: deviceWidth * 0.2,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    semanticContainer: true,
                    color: Colors.blue.withOpacity(0.3),
                    child: Center(
                      child: Text(
                        _selectedValue4.toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SliderTheme(
              data: SliderThemeData(
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 7),
              ),
              child: Slider(
                value: _selectedValue4.toDouble(),
                min: 0.0,
                max: 100.0,
                activeColor: CupertinoColors.systemBlue,
                thumbColor: CupertinoColors.systemBlue,
                inactiveColor: CupertinoColors.systemGrey2,
                onChanged: (_value) {
                  setState(() {
                    _selectedValue4 = _value.toInt();
                  });
                },
              ),
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
          ],
        ),
      ),
    );
  }
}
