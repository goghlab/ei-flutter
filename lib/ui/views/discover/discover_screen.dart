import 'package:flutter/material.dart';
import 'package:ei_autoshop/ui/views/discover/components/discover_app_bar.dart';
import 'package:ei_autoshop/ui/views/discover/components/discover_body.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  bool showNotice = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DiscoverAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Notice Bar
            if (showNotice)
              Container(
                color: Color(0xFFF8F8FA), // Set background color to F8F8FA
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.info,
                          color: Color(0xFF8C92A9), // Set icon color to 8C92A9
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Please set up your payment before entering the store.",
                          style: TextStyle(color: Color(0xFF8C92A9)), // Set text color to 8C92A9
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.close, color: Color(0xFF8C92A9)), // Set close button color to 8C92A9
                      onPressed: () {
                        setState(() {
                          showNotice = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
            // Rest of the Discover Body
            DiscoverBody(),
          ],
        ),
      ),
    );
  }
}
