import "package:flutter/material.dart";

class ChangeRider extends StatefulWidget {
  String userdestination;
  ChangeRider({Key? key, required this.userdestination}) : super(key: key);

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
          children: const [
            CircleAvatar(
              radius: 19,
              backgroundImage: AssetImage("assets/images/passenger.png"),
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
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
