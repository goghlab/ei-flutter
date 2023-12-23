import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class UserQRCodeWidget extends StatelessWidget {
  final String userId;

  const UserQRCodeWidget({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Generate dynamic QR code data based on user information
    String qrCodeData = userId;

    // Print QR code data for troubleshooting
    print('QR Code Data: $qrCodeData');

    // Create a QrImageView widget
    Widget qrImageView = QrImageView(
      data: qrCodeData, // Use the generated QR code data
      version: QrVersions.auto,
      size: 300.0,
      foregroundColor: Color(0xFF0D74E6), // Set the foreground color to #0D74E6
      backgroundColor: Color(0xFFF8F8FA), // Set the background color to F8F8FA
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
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xFF949BB1), // Set the text color to #949BB1
                    ),
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
