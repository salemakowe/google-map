import "package:flutter/material.dart";

class ChangeRider extends StatefulWidget {
  final String destination;
  const ChangeRider(this.destination, {Key? key}) : super(key: key);

  @override
  State<ChangeRider> createState() => _ChangeRiderState();
}

class _ChangeRiderState extends State<ChangeRider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 202, 200, 200),
              ),
              width: MediaQuery.of(context).size.width * 0.5,
              height: 45,
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 19,
                      backgroundImage:
                          AssetImage("assets/images/passenger.png"),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Change Rider",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),

      //body
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff1f1f1),
                    border: Border.all(
                      color: const Color(0xff002dd9),
                      width: 1,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18, 30, 0, 0),
                        child: Row(
                          children: [
                            Image.asset(
                              "images/yourLocation.png",
                              width: MediaQuery.of(context).size.width * 0.05,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Your Location",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 13, 0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  )),
                              width: MediaQuery.of(context).size.width * 0.09,
                              height: MediaQuery.of(context).size.height * 0.05,
                              child: const Icon(Icons.swap_vert),
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  )),
                              width: MediaQuery.of(context).size.width * 0.09,
                              height: MediaQuery.of(context).size.height * 0.05,
                              child: const Icon(Icons.swap_vert),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18, 30, 0, 0),
                        child: Row(
                          children: [
                            Image.asset(
                              "images/yourDestination.png",
                              width: MediaQuery.of(context).size.width * 0.05,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              widget.destination,
                              style: const TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
