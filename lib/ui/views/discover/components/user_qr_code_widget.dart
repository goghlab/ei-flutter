import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class UserQRCodeWidget extends StatelessWidget {
  final String userId;
  final String name;
  final String phone;

  const UserQRCodeWidget({
    Key? key,
    required this.userId,
    required this.name,
    required this.phone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Generate dynamic QR code data based on user information
    String qrCodeData = '$userId\n$name\n$phone';

    // Create a QrImageView widget
    Widget qrImageView = QrImageView(
      data: 'EI-851013',
      version: QrVersions.auto,
      size: 300.0,
    );

    return Center(
      child: Container(
        margin: EdgeInsets.only(bottom: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  qrImageView,
                  SizedBox(height: 24.0),
                  Text(
                    'Scan to Enter EI_AUTOSHOP',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
