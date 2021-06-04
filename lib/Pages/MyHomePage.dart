import 'dart:ui';

import 'package:assingment/exports.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> gridImages = [
      'assets/bed.svg',
      'assets/room.svg',
      'assets/kitchen.svg',
      'assets/bathtube.svg',
      'assets/house.svg',
      'assets/balcony.svg',
    ];
    List<String> gridNames = [
      'Bed room',
      'Living room',
      'Kitchen',
      'Bathroom',
      'Outdoor',
      'Balcony',
    ];
    List<String> noOfLights = [
      '4',
      '2',
      '5',
      '1',
      '5',
      '2',
    ];
    final Function wp = Screen(MediaQuery.of(context).size).wp;
    final Function hp = Screen(MediaQuery.of(context).size).hp;
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
            padding: const EdgeInsets.only(top: 50.0, left: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: wp(50),
                  child: Text(
                    'Control Panel',
                    style: TextStyle(
                      color: ColorPallete.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SvgPicture.asset('assets/user.svg')
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: ColorPallete.gridContainer,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 27.0, left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'All Rooms',
                    style: TextStyle(
                      color: ColorPallete.textDark,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  Container(
                    height: hp(60),
                    child: GridView.builder(
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, i) {
                        return InkWell(
                          onTap: i == 0
                              ? () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BedRoom()));
                                }
                              : null,
                          child: Container(
                            decoration: BoxDecoration(
                              color: ColorPallete.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            margin: EdgeInsets.all(10),
                            child: Padding(
                              padding: const EdgeInsets.all(28.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(gridImages[i]),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    gridNames[i],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Text(
                                    '${noOfLights[i]} Lights',
                                    style: TextStyle(
                                      color: ColorPallete.intensityIndicator,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
