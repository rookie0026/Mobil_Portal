import 'package:alisandeneme/constants.dart';
import 'package:alisandeneme/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ITScreen extends StatefulWidget {
  const ITScreen({super.key});
  static String routeName = 'ITScreen';

  @override
  State<ITScreen> createState() => _ITScreenState();
}

class _ITScreenState extends State<ITScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 8.5,
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              children: [
                RemoveButton(
                  onPress: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: white,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: white,

                  /*borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(kDefaultPadding*3),
                        topRight: Radius.circular(kDefaultPadding*3),
                      )*/
                ),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Bilgi Teknolojileri Süreci',
                          style:
                              Theme.of(context).textTheme.subtitle2!.copyWith(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ],
                    ),
                    sizedBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ITCard(
                            onPress: () {}, title: 'Bilgi Güvenliği Süreçleri')
                      ],
                    ),
                    sizedBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ITCard(onPress: () {}, title: 'Hizmet Yönetimi')
                      ],
                    ),
                    sizedBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ITCard(onPress: () {}, title: 'KVKK Süreçleri')
                      ],
                    ),
                    sizedBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ITCard(onPress: () {}, title: 'Proje Yönetimi')
                      ],
                    ),
                    sizedBox,
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 9.0,
            padding: EdgeInsets.all(kDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButtomBar(
                      iconColor: black,
                      iconData: Icons.home_filled,
                      onPress: () {
                        Navigator.pushNamed(context, HomeScreen.routeName);
                      },
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButtomBar(
                      iconColor: black,
                      iconData: Icons.menu,
                      onPress: () {},
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButtomBar(
                      iconColor: black,
                      iconData: Icons.person,
                      onPress: () {},
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomButtomBar extends StatelessWidget {
  const CustomButtomBar(
      {super.key,
      required this.onPress,
      required this.iconColor,
      required this.iconData});
  final VoidCallback onPress;
  //final String title;
  final Color iconColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: iconColor,
          ),
          sizedBox,
        ],
      ),
    );
  }
}

class RemoveButton extends StatelessWidget {
  const RemoveButton({super.key, required this.onPress});
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Row(children: [
        Icon(
          Icons.arrow_back_outlined,
          size: 50.0,
        ),
      ]),
    );
  }
}

class ITCard extends StatelessWidget {
  const ITCard({super.key, required this.onPress, required this.title});
  final VoidCallback onPress;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding / 2),
        width: MediaQuery.of(context).size.width / 1.5,
        height: MediaQuery.of(context).size.height / 8.0,
        decoration: BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: white,
                  ),
            ),
            SizedBox(
              height: kDefaultPadding / 3,
            ),
          ],
        ),
      ),
    );
  }
}
