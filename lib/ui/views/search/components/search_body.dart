import 'package:flutter/material.dart';

class SearchBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return GridItem(menuItem: menuItems[index]);
        },
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final MenuItem menuItem;

  const GridItem({Key? key, required this.menuItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8FA), // Set the background color to F8F8FA
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            menuItem.icon,
            size: 40.0,
            color: menuItem.iconColor,
          ),
          const SizedBox(height: 8.0),
          Text(
            menuItem.title,
            style: TextStyle(color: menuItem.textColor),
          ),
        ],
      ),
    );
  }
}

class MenuItem {
  final IconData icon;
  final String title;
  final Color iconColor;
  final Color textColor;

  MenuItem({
    required this.icon,
    required this.title,
    this.iconColor = const Color(0xFF028DFF), // Blue color: #028DFF
    this.textColor = const Color(0xFF028DFF), // Blue color: #028DFF
  });
}

final List<MenuItem> menuItems = [
  MenuItem(icon: Icons.qr_code, title: 'My QR Code'),
  MenuItem(icon: Icons.payment, title: 'Payment'),
  MenuItem(icon: Icons.history, title: 'Transaction History'),
  MenuItem(icon: Icons.person, title: 'Profile'),
];
