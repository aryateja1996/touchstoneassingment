import 'package:assingment/exports.dart';
import 'package:flutter/material.dart';

class BedRoom extends StatefulWidget {
  @override
  _BedRoomState createState() => _BedRoomState();
}

class _BedRoomState extends State<BedRoom> {
  double slidervalue = 10;
  Color col = ColorPallete.intensityIndicator;
  @override
  Widget build(BuildContext context) {
    //print(SvgPicture.asset('assets/Icon-back.svg'));
    final Function wp = Screen(MediaQuery.of(context).size).wp;
    final Function hp = Screen(MediaQuery.of(context).size).hp;
    List<String> listIcons = [
      'assets/surface1.svg',
      'assets/furniture-and-household.svg',
      'assets/bed_ico.svg',
    ];
    List<String> listtitle = [
      'Main Light',
      'Desk Light',
      'Bed Light',
    ];
    List<String> gridTile = [
      'Birthday',
      'Party',
      'Relax',
      'Fun',
    ];
    return Scaffold(
      backgroundColor: ColorPallete.background,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset('assets/bulb.svg'),
              SvgPicture.asset('assets/Icon-home.svg'),
              SvgPicture.asset('assets/Icon-settings.svg'),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      child: SvgPicture.asset(
                        'assets/Icon-back.svg',
                        width: 25,
                        height: 25,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: wp(30),
                      child: Text(
                        'Bed Room',
                        style: TextStyle(
                          color: ColorPallete.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/lightbulb.svg',
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: col,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(
              '4 Lights',
              style: TextStyle(
                fontSize: 20,
                color: ColorPallete.intensityIndicator,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    width: 130,
                    //height: 2,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: index == 1
                          ? ColorPallete.listTile
                          : ColorPallete.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(listIcons[index]),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            listtitle[index],
                            style: TextStyle(
                              color: index != 1
                                  ? ColorPallete.textDark
                                  : ColorPallete.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: hp(100) - 180,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height - 150.0,
                    decoration: BoxDecoration(
                      color: ColorPallete.gridContainer,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Intensity',
                            style: TextStyle(
                              fontSize: 20,
                              color: ColorPallete.textDark,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset('assets/solution2.svg'),
                              Container(
                                width: 300,
                                child: Slider.adaptive(
                                  activeColor: ColorPallete.intensityIndicator,
                                  value: slidervalue,
                                  min: 0,
                                  max: 100,
                                  divisions: 6,
                                  onChanged: (double value) {
                                    setState(() {
                                      slidervalue = value;
                                    });
                                  },
                                ),
                              ),
                              SvgPicture.asset(
                                'assets/solution1.svg',
                                color: slidervalue == 100
                                    ? ColorPallete.intensityIndicator
                                    : null,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Colors',
                            style: TextStyle(
                              fontSize: 20,
                              color: ColorPallete.textDark,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 40,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 7,
                              itemBuilder: (ctx, i) {
                                return InkWell(
                                  child: Container(
                                    margin: EdgeInsets.all(5),
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30),
                                      ),
                                      color: i != 6
                                          ? ColorPallete.colors[i]
                                          : ColorPallete.white,
                                    ),
                                    child: i != 6
                                        ? null
                                        : SvgPicture.asset('assets/+.svg'),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      col = ColorPallete.colors[i];
                                    });
                                  },
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Scenes',
                            style: TextStyle(
                              fontSize: 20,
                              color: ColorPallete.textDark,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            //height: 200,
                            child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: MediaQuery.of(context)
                                              .size
                                              .width /
                                          (MediaQuery.of(context).size.height /
                                              4)),
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 130,
                                  height: 70,
                                  //color: col,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: ColorPallete.colors[index],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/solution1.svg',
                                        color: ColorPallete.white,
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Text(
                                        gridTile[index],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                    child: SvgPicture.asset(
                      'assets/power.svg',
                    ),
                  ),
                  right: 20,
                  top: 0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
