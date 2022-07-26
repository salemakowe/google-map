import "package:flutter/material.dart";
import 'package:mobile/screens/changerider.dart';
import 'package:mobile/screens/google_map_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController userdestination = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            color: const Color(0xffff8e0d),
            onPressed: () {
              _scaffoldState.currentState?.openDrawer();
            },
            icon: const Icon(Icons.menu)),
      ),

      //Drawer
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Drawer(
          child: ListView(
            //padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            "assets/images/passenger.png",
                            width: MediaQuery.of(context).size.width / 5,
                            height: MediaQuery.of(context).size.height * 0.09,
                          ),
                        )
                      ],
                    ),

                    const Text(
                      "Passenger",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: "Poppins",
                      ),
                    ),

                    //Edit Profile button
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Edit Profile",
                        style: TextStyle(
                          fontSize: 11,
                          fontFamily: "Poppins",
                          color: Colors.blue,
                        ),
                      ),
                    ),

                    //Divider
                    // Expanded(
                    //   child: Divider(
                    //     color: Colors.black.withOpacity(0.3),
                    //     thickness: 2,
                    //   ),
                    // ),
                  ],
                ),
              ),

              //Payments
              ListTile(
                dense: true,
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.account_balance_wallet_outlined,
                    color: Colors.black,
                  ),
                ),
                title: const Text(
                  "Payment",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              //Promotions
              ListTile(
                dense: true,
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.local_offer_outlined,
                    color: Colors.black,
                  ),
                ),
                title: const Text(
                  "Promotions",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              //My Journey
              ListTile(
                dense: true,
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.map_outlined,
                    color: Colors.black,
                  ),
                ),
                title: const Text(
                  "My Journeys",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              //Settings
              ListTile(
                dense: true,
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings_outlined,
                    color: Colors.black,
                  ),
                ),
                title: const Text(
                  "Settings",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              const Divider(
                height: 25,
              ),

              //About
              ListTile(
                dense: true,
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.help_outline_outlined,
                    color: Colors.black,
                  ),
                ),
                title: const Text(
                  "About",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              //Safety
              ListTile(
                dense: true,
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.security_outlined,
                    color: Colors.black,
                  ),
                ),
                title: const Text(
                  "Safety",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              //Need Help
              ListTile(
                dense: true,
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.info_outline,
                    color: Colors.black,
                  ),
                ),
                title: const Text(
                  "Need Help?",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              const Divider(
                height: 15,
              ),

              //Button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xffFF8E0D),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Drive with Haambr",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      //body
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: GoogleMapScreen(),
            ),

            //Hello User side of the screen
            Padding(
              padding: const EdgeInsets.fromLTRB(29, 0, 29, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("images/divider.png"),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Hello, User",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Form(
                          key: _formKey,
                          child: TextFormField(
                            controller: userdestination,
                            keyboardType: TextInputType.text,
                            //maxLines: 2,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.search),
                              hintText: "Where are you going?",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onEditingComplete: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChangeRider(
                                      userdestination: userdestination.text),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}
